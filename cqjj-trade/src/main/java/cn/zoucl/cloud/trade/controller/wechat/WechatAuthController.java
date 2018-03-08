package cn.zoucl.cloud.trade.controller.wechat;

import cn.zoucl.cloud.common.utils.Result;
import cn.zoucl.cloud.trade.model.entity.WechatUser;
import cn.zoucl.cloud.trade.service.RedisService;
import cn.zoucl.cloud.trade.service.WechatUserService;
import lombok.extern.slf4j.Slf4j;
import me.chanjar.weixin.common.exception.WxErrorException;
import me.chanjar.weixin.mp.api.WxMpService;
import me.chanjar.weixin.mp.bean.result.WxMpOAuth2AccessToken;
import me.chanjar.weixin.mp.bean.result.WxMpUser;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

/**
 * Created with IntelliJ IDEA.
 * User: lhl
 * Date: 2017/07/10
 * Time: 16:07
 * 微信用户登录认证控制器
 */
@RestController
@RequestMapping(value = "/wechat/auth")
@Slf4j
public class WechatAuthController{
    @Autowired
    private WxMpService wxService;

    @Autowired
    private WechatUserService wechatUserService;

    @Autowired
    private RedisService redisService;

    /**
     * 微信登陆后获取用户信息
     * @param code
     * @return
     */
    @RequestMapping(value = "/OAuth2", method = RequestMethod.GET)
    public Result OAuth2(String code){
        Result rs = null;
        try {

           WechatUser user = (WechatUser) redisService.get(code);
            if(null == user){
                WxMpOAuth2AccessToken wxMpOAuth2AccessToken = wxService.oauth2getAccessToken(code);
                WxMpUser wxMpUser = wxService.oauth2getUserInfo(wxMpOAuth2AccessToken, null);

                WechatUser user1 = new WechatUser();
                user1.setOpenId(wxMpUser.getOpenId());
                user1 = wechatUserService.selectOne(user1);
                user = WechatUser.getFromWxMpUser(wxMpUser);
                if(null != user1){
                    user.setId(user1.getId());
                }
                long saveTime = 60;
                redisService.set(code,user,saveTime);
            }

            rs = Result.success("获取成功！",user);
        } catch (WxErrorException e) {
            e.printStackTrace();
        } catch (Exception e) {
            e.printStackTrace();
        }

        return rs;
    }
}
