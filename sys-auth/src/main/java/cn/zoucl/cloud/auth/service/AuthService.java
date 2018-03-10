package cn.zoucl.cloud.auth.service;

import cn.zoucl.cloud.api.model.vo.PermissionVo;
import cn.zoucl.cloud.api.model.vo.UserVo;
import cn.zoucl.cloud.common.utils.Result;

import java.util.Map;

/**
 * Created by Administrator on 2017/11/30 0030.
 */
public interface AuthService {
    /**
     * 登陆并返回token
     * @param username
     * @param password
     * @return
     * @throws Exception
     */
    Result login(String username, String password) throws Exception;

    Result wechatLogin(String id) throws Exception;

    /**
     * token校验
     * @param token
     * @return
     */
    /*public Result<UserVo> verifyToken(String token) throws Exception;*/
}
