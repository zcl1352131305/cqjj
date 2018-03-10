package cn.zoucl.cloud.auth.service.impl;

import cn.zoucl.cloud.api.model.vo.UserVo;
import cn.zoucl.cloud.auth.feign.IAdminFeign;
import cn.zoucl.cloud.auth.service.AuthService;
import cn.zoucl.cloud.common.utils.JWTHelper;
import cn.zoucl.cloud.common.utils.Result;
import com.alibaba.fastjson.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * Created by Administrator on 2017/11/30 0030.
 */
@Service
public class AuthServiceImpl implements AuthService {

    //权限存放时间
    private final int authExpireTime = 1800;

    @Autowired
    private IAdminFeign adminFeign;


    /**
     * 登陆具体实现
     * @param username
     * @param password
     * @return
     * @throws Exception
     */
    public Result login(String username, String password) throws Exception{
        return authToken(adminFeign.validate(username,password), false);
    }

    public Result wechatLogin(String id) throws Exception{
        return authToken(adminFeign.getVo(id), true);
    }

    private Result authToken(Result<UserVo> obj, boolean isNeedPwd) throws Exception{
        if(obj.getCode().equals("0")){
            UserVo vo = (UserVo) obj.getResult();
            String token = JWTHelper.generateToken(vo,7200);
            JSONObject json = new JSONObject();
            json.put("token",token);
            if(!isNeedPwd){
                vo.setPassword(null);
            }
            json.put("userInfo",vo);
            return Result.success(json);
        }
        else{
            return Result.fail(obj.getMessage());
        }
    }


    /**
     * token校验并返回用户权限具体实现
     * @param token
     * @return
     */
    /*@Override
    public Result<UserVo> verifyToken(String token) throws Exception{

        UserVo user = JWTHelper.getInfoFromToken(token);
        if(null != user){
            return Result.success(user);
        }
        else{
            return Result.fail("token解析失败！");
        }

    }*/


}
