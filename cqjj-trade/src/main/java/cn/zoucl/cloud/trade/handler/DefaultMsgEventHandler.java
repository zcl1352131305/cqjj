package cn.zoucl.cloud.trade.handler;

import lombok.extern.slf4j.Slf4j;
import me.chanjar.weixin.common.exception.WxErrorException;
import me.chanjar.weixin.common.session.WxSessionManager;
import me.chanjar.weixin.mp.api.WxMpMessageHandler;
import me.chanjar.weixin.mp.api.WxMpService;
import me.chanjar.weixin.mp.bean.message.WxMpXmlMessage;
import me.chanjar.weixin.mp.bean.message.WxMpXmlOutMessage;
import org.springframework.stereotype.Component;

import java.util.Map;

/**
 * Created with IntelliJ IDEA.
 * User: lhl
 * Date: 2017/07/06
 * Time: 14:44
 * 默认消息事件处理器
 */
@Component
@Slf4j
public class DefaultMsgEventHandler implements WxMpMessageHandler {



    @Override
    public WxMpXmlOutMessage handle(WxMpXmlMessage wxMessage, Map<String, Object> context, WxMpService wxMpService, WxSessionManager sessionManager) throws WxErrorException {
        log.debug("默认事件处理");

       /* WechatMsg msg = new WechatMsg();
        msg.setId(IdUtil.createUUID(32));
        msg.setContent(wxMessage.getContent());
        msg.setFromUser(wxMessage.getFromUser());
        msg.setToUser(wxMessage.getToUser());
        msg.setMsgId(wxMessage.getMsgId()+"");
        try {
            wechatMsgService.save(msg);
        } catch (Exception e) {
            e.printStackTrace();
        }*/
        /*return  WxMpXmlOutMessage.TEXT()
                .content("点我啊")
                .fromUser(wxMessage.getToUser())
                .toUser(wxMessage.getFromUser())
                .build();*/
        return null;
    }
}
