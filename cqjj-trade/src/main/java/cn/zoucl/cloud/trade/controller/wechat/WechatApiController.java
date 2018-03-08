package cn.zoucl.cloud.trade.controller.wechat;

import cn.zoucl.cloud.common.utils.Result;
import com.alibaba.fastjson.JSONObject;
import lombok.extern.slf4j.Slf4j;
import me.chanjar.weixin.common.bean.WxJsapiSignature;
import me.chanjar.weixin.common.exception.WxErrorException;
import me.chanjar.weixin.mp.api.WxMpMessageRouter;
import me.chanjar.weixin.mp.api.WxMpService;
import me.chanjar.weixin.mp.bean.message.WxMpXmlMessage;
import me.chanjar.weixin.mp.bean.message.WxMpXmlOutMessage;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;


/**
 * Created with IntelliJ IDEA.
 * User: lhl
 * Date: 2017/07/05
 * Time: 17:46
 */
@RestController
@RequestMapping(value = "/wechat/portal")
@Slf4j
public class WechatApiController {
    @Autowired
    private WxMpService wxService;

    @Autowired
    private WxMpMessageRouter router;

    /**
     * 微信接口校验
     *
     * @param signature
     * @param timestamp
     * @param nonce
     * @param echostr
     * @return
     */
    @GetMapping(produces = "text/plain;charset=utf-8")
    public String authCheck(String signature, String timestamp,
                            String nonce, String echostr) {

        log.info("收到来自微信的认证信息:[{}, {}, {}, {}] ", signature, timestamp, nonce, echostr);
        if (StringUtils.isAnyBlank(signature, timestamp, nonce, echostr)) {
            return "error";
        }


        if (wxService.checkSignature(timestamp, nonce, signature)) {
            //校验成功将该值返回
            return echostr;
        }
        return "error";
    }


    /**
     * 微信请求处理
     * 处理来自微信的所有事件消息推送
     * @param requestBody
     * @param signature
     * @param timestamp
     * @param nonce
     * @param encType
     * @param msgSignature
     * @return
     */
    @PostMapping(produces = "application/xml; charset=UTF-8")
    public String post(@RequestBody String requestBody,
                       @RequestParam("signature") String signature,
                       @RequestParam("timestamp") String timestamp,
                       @RequestParam("nonce") String nonce,
                       @RequestParam(name = "encrypt_type",
                               required = false) String encType,
                       @RequestParam(name = "msg_signature",
                               required = false) String msgSignature) {
        log.info(
                "\n接收微信请求：[signature=[{}], encType=[{}], msgSignature=[{}],"
                        + " timestamp=[{}], nonce=[{}], requestBody=[\n{}\n] ",
                signature, encType, msgSignature, timestamp, nonce, requestBody);

        if (!this.wxService.checkSignature(timestamp, nonce, signature)) {
            throw new IllegalArgumentException("非法请求，可能属于伪造的请求！");
        }

        String out = null;
        if (encType == null) {
            // 明文传输的消息
            WxMpXmlMessage inMessage = WxMpXmlMessage.fromXml(requestBody);
            WxMpXmlOutMessage outMessage = this.route(inMessage);
            if (outMessage == null) {
                return "";
            }

            out = outMessage.toXml();
        } else if ("aes".equals(encType)) {
            // aes加密的消息
            WxMpXmlMessage inMessage = WxMpXmlMessage.fromEncryptedXml(
                    requestBody, this.wxService.getWxMpConfigStorage(), timestamp,
                    nonce, msgSignature);
            log.debug("\n消息解密后内容为：\n{} ", inMessage.toString());
            WxMpXmlOutMessage outMessage = this.route(inMessage);
            if (outMessage == null) {
                return "";
            }

            out = outMessage
                    .toEncryptedXml(this.wxService.getWxMpConfigStorage());
        }

        log.debug("\n组装回复信息：{}", out);

        return out;
    }


    /**
     * 处理消息
     * @param message
     * @return
     */
    private WxMpXmlOutMessage route(WxMpXmlMessage message) {
        try {
            return router.route(message);
        } catch (Exception e) {
            log.error(e.getMessage(), e);
        }
        return null;
    }



    @RequestMapping(value = "/getSignature", method = RequestMethod.GET)
    public Result getSignature(String url) {
        log.info("获取签名"+url);
        try {
            WxJsapiSignature signature = wxService.createJsapiSignature(url);
            //WxJsapiSignature signature = wxServiceDYH.createJsapiSignature(url);
            JSONObject json = new JSONObject();
            json.put("signature",signature);
            json.put("accessToken",wxService.getAccessToken());
            return Result.success("获取成功！",json);
        } catch (WxErrorException e) {
            e.printStackTrace();
            return Result.fail("获取失败");
        }

    }

}
