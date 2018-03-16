package cn.zoucl.cloud.admin.controller;

import cn.zoucl.cloud.admin.model.entity.GroupUser;
import cn.zoucl.cloud.admin.model.entity.User;
import cn.zoucl.cloud.admin.model.vo.FrontUserVo;
import cn.zoucl.cloud.admin.service.GroupService;
import cn.zoucl.cloud.admin.service.RedisService;
import cn.zoucl.cloud.admin.service.UserService;
import cn.zoucl.cloud.api.model.vo.UserVo;
import cn.zoucl.cloud.common.controller.BaseController;
import cn.zoucl.cloud.common.utils.IdUtil;
import cn.zoucl.cloud.common.utils.Result;
import cn.zoucl.cloud.common.utils.Validator;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.Map;

/**
 * Created by Administrator on 2017/11/28 0028.
 */
@RestController
@RequestMapping(value = "/user")
public class UserController extends BaseController<UserService,User> {

    @Autowired
    private GroupService groupService;
    @Autowired
    private RedisService redisService;

    /**
     * 用户名密码校验
     * @param username
     * @param password
     * @return
     */
    @PostMapping("/validate")
    public Result validate(String username, String password){
        Result rs = null;
        if(Validator.isEmpty(username)){
            rs = Result.fail("用户名不能为空！");
        }
        else if(Validator.isEmpty(password)){
            rs = Result.fail("密码不能为空！");
        }
        else{
            User user = baseService.selectByUsername(username);
            if(null != user){
                if(user.getPassword().equals(password)){
                    UserVo userVo = new UserVo();
                    BeanUtils.copyProperties(user,userVo);
                    //rs = new Result(ResultCode.SUCCESS,"成功！",userVo);
                    rs = Result.success(userVo);
                }
                else{
                    rs = Result.fail("密码错误！");
                }
            }
            else{
                rs = Result.fail("用户不存在！");
            }
        }
        return rs;
    }
    @GetMapping("/getVo/{id}")
    public Result validate(@PathVariable String id){
        Result rs = null;
        if(Validator.isEmpty(id)){
            rs = Result.fail("id不能为空！");
        }
        else{
            User user = baseService.selectById(id);
            if(null != user){
                UserVo userVo = new UserVo();
                BeanUtils.copyProperties(user,userVo);
                //rs = new Result(ResultCode.SUCCESS,"成功！",userVo);
                rs = Result.success(userVo);
            }
            else{
                rs = Result.fail("用户不存在！");
            }
        }
        return rs;
    }



    /**
     * 获取登录用户信息
     * @return
     */
    @GetMapping("/loginUserInfo")
    public Result loginUserInfo(){
        Result rs = null;
        String userId = request.getHeader("authUserId");
        if(Validator.isEmpty(userId)){
            rs = Result.fail();
        }
        else{
            FrontUserVo userVo = baseService.getLoginUserDetail(userId);
            if(null != userVo){
                rs = Result.success(userVo);
            }
            else{
                rs = Result.fail();
            }

        }

        return rs;
    }

    /**
     * 注册
     * @return
     */
    @PostMapping("/regist")
    public Result regist(@RequestBody Map<String,String> map){

        if(Validator.isEmpty(map.get("username"))){
            return Result.fail("用户名为空！");
        }
        else if(Validator.isEmpty(map.get("password"))){
            return Result.fail("密码为空！");
        }
        else if(Validator.isEmpty(map.get("validateCode"))){
            return Result.fail("验证码为空！");
        }
        else{
            String code = (String) redisService.get("validateCode_"+map.get("username"));
            if(null == code || !code.equals(map.get("validateCode"))){
                return Result.fail("验证码不正确！");
            }
            else{
                redisService.remove("validateCode_"+map.get("username"));

                User user1 = baseService.selectByUsername(map.get("username"));
                if(null != user1){
                    return Result.fail("该手机号已注册！");
                }
                else{
                    User user = new User();
                    //保存用户
                    if(Validator.isEmpty(user.getId())){
                        user.setId(IdUtil.createUUID(32));
                    }
                    user.setUsername(map.get("username"));
                    user.setName(map.get("username"));
                    user.setPassword(map.get("password"));
                    baseService.insertSelective(user);

                    //添加商户权限
                    GroupUser member = new GroupUser();
                    member.setGroupId("489c84de2c2b49bd8288f037363c1825");
                    member.setUserId(user.getId());
                    groupService.addMember(member);
                    return Result.success();
                }
            }
        }
    }

    /**
     * 找回密码
     * @param map
     * @return
     */
    @PutMapping("/findpwd")
    public Result findpwd(@RequestBody Map<String,String> map){

        if(Validator.isEmpty(map.get("username"))){
            return Result.fail("用户名为空！");
        }
        else if(Validator.isEmpty(map.get("password"))){
            return Result.fail("密码为空！");
        }
        else if(Validator.isEmpty(map.get("validateCode"))){
            return Result.fail("验证码为空！");
        }
        else{
            String code = (String) redisService.get("validateCode_"+map.get("username"));
            if(null == code || !code.equals(map.get("validateCode"))){
                return Result.fail("验证码不正确！");
            }
            else{
                redisService.remove("validateCode_"+map.get("username"));

                User user = baseService.selectByUsername(map.get("username"));
                if(null != user){
                    user.setPassword(map.get("password"));
                    baseService.updateSelectiveById(user);
                    redisService.remove(map.get("wechatUserId"));
                    return Result.success();
                }
                else{
                    return Result.fail("该手机号未注册！");
                }
            }

        }

    }

    /**
     * 修改手机号
     * @param map
     * @return
     */
    @PutMapping("/updUsername")
    public Result updUsername(@RequestBody Map<String,String> map){

        if(Validator.isEmpty(map.get("id"))){
            return Result.fail("id为空！");
        }
        if(Validator.isEmpty(map.get("username"))){
            return Result.fail("手机号为空！");
        }
        else if(Validator.isEmpty(map.get("validateCode"))){
            return Result.fail("验证码为空！");
        }
        else{
            String code = (String) redisService.get("validateCode_"+map.get("username"));
            if(null == code || !code.equals(map.get("validateCode"))){
                return Result.fail("验证码不正确！");
            }
            else{
                redisService.remove("validateCode_"+map.get("username"));

                User user = baseService.selectByUsername(map.get("username"));
                if(null != user){
                    return Result.fail("手机号已注册！");
                }
                else{
                    user = baseService.selectById(map.get("id"));
                    if(null != user){
                        user.setUsername(map.get("username"));
                        user.setName(map.get("username"));
                        baseService.updateSelectiveById(user);
                        redisService.remove(map.get("wechatUserId"));
                        return Result.success();
                    }
                    else{
                        return Result.fail("该手机号未注册！");
                    }
                }


            }

        }

    }



}
