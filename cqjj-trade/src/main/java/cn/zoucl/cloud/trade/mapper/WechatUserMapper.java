package cn.zoucl.cloud.trade.mapper;

import cn.zoucl.cloud.trade.model.entity.WechatUser;
import tk.mybatis.mapper.common.Mapper;

/**
 * Created by Administrator on 2017/11/29 0029.
 */
public interface WechatUserMapper extends Mapper<WechatUser> {

    WechatUser selectByOpenId(String openId);
}
