package cn.zoucl.cloud.trade.service;

import cn.zoucl.cloud.common.service.BaseService;
import cn.zoucl.cloud.common.utils.Result;
import cn.zoucl.cloud.trade.model.entity.WechatUser;

/**
 * Created by Administrator on 2017/11/29 0029.
 */
public interface WechatUserService extends BaseService<WechatUser> {

    /**
     * 微信后台登陆
     * @param id
     * @return
     */
    Result wechatLogin(String id);


    /**
     * 绑定微信至后台用户
     * @param username
     * @param password
     * @param wechatUserId
     * @return
     */
    Result bindingAdmin(String username, String password, String wechatUserId);
}
