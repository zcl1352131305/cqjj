package cn.zoucl.cloud.trade.controller.wechat;

import cn.zoucl.cloud.common.controller.BaseController;
import cn.zoucl.cloud.common.utils.Result;
import cn.zoucl.cloud.trade.model.entity.Merchant;
import cn.zoucl.cloud.trade.model.entity.WechatMenu;
import cn.zoucl.cloud.trade.service.MerchantService;
import cn.zoucl.cloud.trade.service.WechatMenuService;
import lombok.extern.slf4j.Slf4j;
import me.chanjar.weixin.common.bean.WxJsapiSignature;
import me.chanjar.weixin.common.bean.menu.WxMenu;
import me.chanjar.weixin.common.bean.menu.WxMenuButton;
import me.chanjar.weixin.common.exception.WxErrorException;
import me.chanjar.weixin.mp.api.WxMpMessageRouter;
import me.chanjar.weixin.mp.api.WxMpService;
import me.chanjar.weixin.mp.bean.message.WxMpXmlMessage;
import me.chanjar.weixin.mp.bean.message.WxMpXmlOutMessage;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.ArrayList;
import java.util.List;


/**
 * Created with IntelliJ IDEA.
 * User: lhl
 * Date: 2017/07/05
 * Time: 17:46
 */
@RestController
@RequestMapping(value = "/wechat/menu")
@Slf4j
public class WechatMenuController extends BaseController<WechatMenuService,WechatMenu> {
    @Autowired
    private WxMpService wxService;


    /**
     * 发布菜单
     * @return
     */
    @RequestMapping(value = "/pushMenu", method = RequestMethod.PUT)
    public Result pushMenu(){
        Result result;
        //查询菜单
        List<WechatMenu> menus = baseService.selectListAll();
        List<WxMenuButton> menuButtons = new ArrayList<>();
        if(menus != null && !menus.isEmpty()){
            for(WechatMenu menu: menus){
                if("0".equals(menu.getParent())){
                    WxMenuButton parent = new WxMenuButton();
                    parent.setType(menu.getType());
                    parent.setName(menu.getName());
                    parent.setKey(menu.getKeyword());
                    parent.setUrl(menu.getUrl());
                    parent.setMediaId(menu.getMediaId());
                    parent.setAppId(menu.getAppid());
                    parent.setPagePath(menu.getPagepath());
                    //为父级菜单,查找子菜单
                    List<WxMenuButton> sub = getChildren(menu, menus);
                    if(!sub.isEmpty()){
                        parent.setSubButtons(sub);
                    }
                    menuButtons.add(parent);
                }
            }
        }

        WxMenu wxMenu = new WxMenu();
        wxMenu.setButtons(menuButtons);
        try {
            wxService.getMenuService().menuCreate(wxMenu);
            result = Result.success("创建成功");
        } catch (WxErrorException e) {
            e.printStackTrace();
            result = Result.fail("创建菜单失败！");
        }
        return result;
    }

    private List<WxMenuButton> getChildren(WechatMenu parent, List<WechatMenu> menus){
        List<WxMenuButton> wxMenuButtons = new ArrayList<>();
        for(WechatMenu menu: menus){
            if(parent.getId().equals(menu.getParent())){
                WxMenuButton wxMenuButton = new WxMenuButton();
                wxMenuButton.setType(menu.getType());
                wxMenuButton.setName(menu.getName());
                wxMenuButton.setKey(menu.getKeyword());
                wxMenuButton.setUrl(menu.getUrl());
                wxMenuButton.setMediaId(menu.getMediaId());
                wxMenuButton.setAppId(menu.getAppid());
                wxMenuButton.setPagePath(menu.getPagepath());
                wxMenuButtons.add(wxMenuButton);
            }
        }

        return wxMenuButtons;
    }


}
