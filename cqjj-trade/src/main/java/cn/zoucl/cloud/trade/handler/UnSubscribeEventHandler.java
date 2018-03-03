package cn.zoucl.cloud.trade.handler;

import cn.zoucl.cloud.trade.model.entity.WechatUser;
import cn.zoucl.cloud.trade.service.WechatUserService;
import lombok.extern.slf4j.Slf4j;
import me.chanjar.weixin.common.exception.WxErrorException;
import me.chanjar.weixin.common.session.WxSessionManager;
import me.chanjar.weixin.mp.api.WxMpMessageHandler;
import me.chanjar.weixin.mp.api.WxMpService;
import me.chanjar.weixin.mp.bean.message.WxMpXmlMessage;
import me.chanjar.weixin.mp.bean.message.WxMpXmlOutMessage;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import java.util.Map;

/**
 * Created with IntelliJ IDEA.
 * User: lhl
 * Date: 2017/07/06
 * Time: 14:39
 * 用户取消关注事件处理
 */
@Component
@Slf4j
public class UnSubscribeEventHandler implements WxMpMessageHandler {

    @Autowired
    private WechatUserService wechatUserService;
    @Override
    public WxMpXmlOutMessage handle(WxMpXmlMessage wxMessage, Map<String, Object> context, WxMpService wxMpService, WxSessionManager sessionManager) throws WxErrorException {
        log.debug("收到取消订阅事件推送");
        WechatUser wechatUser = new WechatUser();
        wechatUser.setOpenId(wxMessage.getFromUser());
        wechatUser = wechatUserService.selectOne(wechatUser);

        if(wechatUser != null){
            //更新用户订阅状态
            WechatUser updateWechatUser = new WechatUser();
            updateWechatUser.setSubscribe("0");
            updateWechatUser.setId(wechatUser.getId());
            try {
                wechatUserService.updateSelectiveById(updateWechatUser);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return null;
    }
}
