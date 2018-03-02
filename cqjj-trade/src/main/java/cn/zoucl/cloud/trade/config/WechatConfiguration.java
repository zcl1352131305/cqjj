package cn.zoucl.cloud.trade.config;


import cn.zoucl.cloud.trade.handler.*;
import cn.zoucl.cloud.trade.model.entity.WechatPublicPlatform;
import cn.zoucl.cloud.trade.service.WechatPublicPlatformService;
import me.chanjar.weixin.common.api.WxConsts;
import me.chanjar.weixin.mp.api.WxMpConfigStorage;
import me.chanjar.weixin.mp.api.WxMpInMemoryConfigStorage;
import me.chanjar.weixin.mp.api.WxMpMessageRouter;
import me.chanjar.weixin.mp.api.WxMpService;
import me.chanjar.weixin.mp.api.impl.WxMpServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import java.util.List;

/**
 * Created with IntelliJ IDEA.
 * User: lhl
 * Date: 2017/07/06
 * Time: 14:11
 * 微信公众号配置信息
 */
@Configuration
public class WechatConfiguration {
    /**关注事件处理*/
    @Autowired
    private SubscribeEventHandler subscribeEventHandler;
    /***取消关注事件处理*/
    @Autowired
    private UnSubscribeEventHandler unSubscribeEventHandler;
    /**地理位置上报事件*/
    @Autowired
    private LocationEventHandler locationEventHandler;
    /**扫码事件*/
    @Autowired
    private ScanEventHandler scanEventHandler;
    /***默认事件处理*/
    @Autowired
    private DefaultMsgEventHandler defaultMsgEventHandler;
    /**空消息处理（不做处理）*/
    @Autowired
    private NullHandler nullHandler;


    /**公众号信息*/
    @Autowired
    private WechatPublicPlatformService wechatPublicPlatformService;


    /**创建公众号配置对象**/
    @Bean(name="configStorage")
    public WxMpConfigStorage configStorage() {
        WxMpInMemoryConfigStorage configStorage = new WxMpInMemoryConfigStorage();
        //查询公众号信息
        WechatPublicPlatform wechatPublicPlatform = new WechatPublicPlatform();
        wechatPublicPlatform.setIsActive("1");
        List<WechatPublicPlatform> wechatPublicPlatforms = wechatPublicPlatformService
                .selectList(wechatPublicPlatform);
        if(wechatPublicPlatforms != null && !wechatPublicPlatforms.isEmpty()){
            wechatPublicPlatform = wechatPublicPlatforms.get(0);
            configStorage.setAppId(wechatPublicPlatform.getAppId()); // 设置微信公众号的appid
            configStorage.setSecret(wechatPublicPlatform.getAppSecret()); // 设置微信公众号的app corpSecret
            configStorage.setToken(wechatPublicPlatform.getToken()); // 设置微信公众号的token
            configStorage.setAesKey(wechatPublicPlatform.getAesKey()); // 设置微信公众号的EncodingAESKey
        }
        return configStorage;
    }

    @Bean(name="wxService")
    public WxMpService wxServiceDYH(WxMpConfigStorage configStorageDYH) {
        WxMpService wxMpService = new WxMpServiceImpl();
        wxMpService.setWxMpConfigStorage(configStorageDYH);
        return wxMpService;
    }

    @Bean(name="router")
    public WxMpMessageRouter routerDYH(WxMpService wxServiceDYH) {
        final WxMpMessageRouter newRouter = new WxMpMessageRouter(wxServiceDYH);
        // 点击菜单连接事件
        newRouter.rule().async(false).msgType(WxConsts.XmlMsgType.EVENT)
                .event(WxConsts.MenuButtonType.VIEW).handler(nullHandler).end();

        // 关注事件
        newRouter.rule().async(false).msgType(WxConsts.XmlMsgType.EVENT)
                .event(WxConsts.EventType.SUBSCRIBE).handler(subscribeEventHandler)
                .end();

        // 取消关注事件
        newRouter.rule().async(false).msgType(WxConsts.XmlMsgType.EVENT)
                .event(WxConsts.EventType.UNSUBSCRIBE)
                .handler(unSubscribeEventHandler).end();

        // 上报地理位置事件
        newRouter.rule().async(false).msgType(WxConsts.XmlMsgType.EVENT)
                .event(WxConsts.EventType.LOCATION).handler(locationEventHandler)
                .end();

        // 接收地理位置消息
        newRouter.rule().async(false).msgType(WxConsts.XmlMsgType.LOCATION)
                .handler(locationEventHandler).end();

        // 扫码事件
        newRouter.rule().async(false).msgType(WxConsts.XmlMsgType.EVENT)
                .event(WxConsts.EventType.SCAN).handler(scanEventHandler).end();
        // 默认
        newRouter.rule().async(false).handler(defaultMsgEventHandler).end();
        return newRouter;
    }









    /*@Bean
    public WxPayConfig config() {
        WxPayConfig payConfig = new WxPayConfig();

        WechatPublicPlatform wechatPublicPlatform = new WechatPublicPlatform();
        wechatPublicPlatform.setType("fwh");
        //wechatPublicPlatform.setType("dyh");
        List<WechatPublicPlatform> wechatPublicPlatforms = wechatPublicPlatformService
                .findDataIsList(wechatPublicPlatform);
        if(wechatPublicPlatforms != null && !wechatPublicPlatforms.isEmpty()) {
            wechatPublicPlatform = wechatPublicPlatforms.get(0);
            payConfig.setAppId(wechatPublicPlatform.getAppId());
            payConfig.setMchId(wechatPublicPlatform.getMchId());
            payConfig.setMchKey(wechatPublicPlatform.getMchKey());
            payConfig.setSubAppId(StringUtils.trimToNull(wechatPublicPlatform.getSubAppId()));
            payConfig.setSubMchId(StringUtils.trimToNull(wechatPublicPlatform.getSubMchId()));
            payConfig.setKeyPath(wechatPublicPlatform.getKeyPathLocal());
            payConfig.setTradeType("JSAPI");
        }

        return payConfig;
    }

    @Bean
    public WxPayService wxPayService(WxPayConfig payConfig) {
        WxPayService wxPayService = new WxPayServiceImpl();
        wxPayService.setConfig(payConfig);
        return wxPayService;
    }*/

}
