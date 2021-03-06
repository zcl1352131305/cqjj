package cn.zoucl.cloud.auth.controller;

import cn.zoucl.cloud.api.model.vo.PermissionVo;
import cn.zoucl.cloud.api.model.vo.UserVo;
import cn.zoucl.cloud.auth.model.entity.UserAuth;
import cn.zoucl.cloud.auth.service.AuthService;
import cn.zoucl.cloud.common.utils.Result;
import cn.zoucl.cloud.common.utils.Validator;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.Map;

/**
 * 权限验证接口，主要功能有登陆，权限校验
 */
@RestController
@RequestMapping(value = "/auth")
public class AuthController {

    @Autowired
    private AuthService authService;

    /**
     * 登陆接口
     * @param user
     * @return 返回用户信息以及token
     */
    @PostMapping("login")
    public Result login(@RequestBody UserAuth user){
        try {
            if(null != user && Validator.isEmpty(user.getUsername())){
                return Result.fail("用户名不能为空！");
            }
            else if(Validator.isEmpty(user.getPassword())){
                return Result.fail("密码不能为空！");
            }
            else{
                return authService.login(user.getUsername(),user.getPassword());
            }


        } catch (Exception e) {
            e.printStackTrace();
            return Result.fail("系统错误！");
        }
    }

    /**
     * 登陆接口
     * @return 返回用户信息以及token
     */
    @PostMapping("wechatLogin/{id}")
    public Result wechatLogin(@PathVariable String id){
        try {
            if(Validator.isEmpty(id)){
                return Result.fail("id不能为空！");
            }
            else{
                return authService.wechatLogin(id);
            }


        } catch (Exception e) {
            e.printStackTrace();
            return Result.fail("系统错误！");
        }
    }

    /**
     * token校验接口
     * @param token
     * @return 返回校验结果以及成功后用户拥有权限
     */
    /*@PostMapping("verifyToken")
    public Result<UserVo> verifyAuth(String token){
        if(Validator.isEmpty(token)){
            return Result.fail("token不能为空！");
        }
        else{
            try {
                return authService.verifyToken(token);
            } catch (Exception e) {
                e.printStackTrace();
                return Result.fail("系统错误！");
            }
        }
    }*/

}
