package cn.zoucl.cloud.trade.service.impl;

import cn.zoucl.cloud.api.model.vo.UserVo;
import cn.zoucl.cloud.common.service.impl.BaseServiceImpl;
import cn.zoucl.cloud.common.utils.Result;
import cn.zoucl.cloud.common.utils.Validator;
import cn.zoucl.cloud.trade.feign.IAdminFeign;
import cn.zoucl.cloud.trade.feign.IAuthFeign;
import cn.zoucl.cloud.trade.mapper.WechatUserMapper;
import cn.zoucl.cloud.trade.model.entity.WechatUser;
import cn.zoucl.cloud.trade.service.WechatUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class WechatUserServiceImpl extends BaseServiceImpl<WechatUserMapper, WechatUser> implements WechatUserService {

    @Autowired
    private IAuthFeign authFeign;
    @Autowired
    private IAdminFeign adminFeign;

    public Result wechatLogin(String id){
        return authFeign.wechatValidate(id);
    }


    public Result bindingAdmin(String username, String password, String wechatUserId){
        Result<UserVo> rs = adminFeign.validate(username,password);
        if(rs.getCode().equals("0")){
            WechatUser wechatUser = selectById(wechatUserId);
            if(null == wechatUser){
                return Result.fail("微信用户不存在！");
            }
            else if(Validator.notEmpty(wechatUser.getMerchantAdminId())){
                return Result.fail("该微信已绑定商户！");
            }
            else{
                UserVo user = (UserVo) rs.getResult();
                wechatUser.setMerchantAdminId(user.getId());
                updateSelectiveById(wechatUser);
            }
        }
        return rs;
    }

}
