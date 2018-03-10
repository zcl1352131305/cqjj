package cn.zoucl.cloud.trade.controller;

import cn.zoucl.cloud.common.controller.BaseController;
import cn.zoucl.cloud.common.utils.Result;
import cn.zoucl.cloud.common.utils.Validator;
import cn.zoucl.cloud.trade.model.entity.Merchant;
import cn.zoucl.cloud.trade.model.entity.WechatUser;
import cn.zoucl.cloud.trade.service.MerchantService;
import cn.zoucl.cloud.trade.service.RedisService;
import cn.zoucl.cloud.trade.service.WechatUserService;
import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.Map;

/**
 * 商户接口
 * Created by Administrator on 2017/11/28 0028.
 */
@RestController
@RequestMapping(value = "/merchant")
public class MerchantController extends BaseController<MerchantService,Merchant> {


    @Autowired
    private WechatUserService wechatUserService;

    @Autowired
    private RedisService redisService;

    /**
     * 商户快速登陆获取token
     * @param params 参数中的id是wechat_user表中的id
     * @return
     */
    @PostMapping("/merchantLogin")
    public Result merchantLogin(@RequestBody Map<String, Object> params){
        Result rs = null;

        JSONObject json = (JSONObject) redisService.get((String) params.get("id"));
        if(null == json){
            WechatUser user = wechatUserService.selectById(params.get("id"));
            if(null == user){
                rs = Result.fail("用户id为空！");
            }
            else {
                rs = wechatUserService.wechatLogin(user.getMerchantAdminId());
                json = JSON.parseObject(JSON.toJSONString(rs.getResult()));
                json.put("wechatUserInfo",user);
                long time = 120;
                redisService.set((String) params.get("id"),json, time);
            }
        }
        if(null != json && null != json.getJSONObject("userInfo")){
            if(json.getJSONObject("userInfo").get("password").equals(params.get("password"))){
                json.getJSONObject("userInfo").remove("password");
                rs = Result.success(json);
            }
            else{
                rs = Result.fail("密码错误！");
            }
        }

        return rs;
    }

    @PostMapping("/merchantRegist")
    public Result merchantRegist(){



        return null;
    }

    /**
     * 绑定微信至后台账户
     * @param params
     * @return
     */
    @PostMapping("/bindingAdmin")
    public Result bindingAdmin(@RequestBody Map<String, Object> params ){
        Result rs;
        if(Validator.isEmpty(params.get("username"))){
            rs = Result.fail("用户名为空！");
        }
        else if(Validator.isEmpty(params.get("password"))){
            rs = Result.fail("密码为空！");
        }
        else if(Validator.isEmpty(params.get("wechatUserId"))){
            rs = Result.fail("微信信息为空！");
        }
        else{
            rs = wechatUserService.bindingAdmin((String)params.get("username"),(String)params.get("password"),(String)params.get("wechatUserId"));
        }

        return rs;
    }

    /**
     * 根据id获取商户信息
     * @param adminId
     * @return
     */
    @GetMapping("/getByAdminId/{adminId}")
    public Result getByAdminId(@PathVariable String adminId){
        if(Validator.isEmpty(adminId)){
            return Result.fail("id为空！");
        }
        else{
            Merchant m = new Merchant();
            m.setSysUserId(adminId);
            return Result.success(baseService.selectOne(m));
        }
    }

    @PostMapping("/saveOrUpdate")
    public Result saveOrUpdate(@RequestBody Merchant entity){
        if(null != entity){
            baseService.saveOrUpdate(entity);
            return Result.success("成功!");
        }
        else{
            return Result.fail();
        }
    }

}
