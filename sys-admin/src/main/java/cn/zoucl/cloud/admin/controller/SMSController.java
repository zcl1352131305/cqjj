package cn.zoucl.cloud.admin.controller;

import cn.zoucl.cloud.admin.service.RedisService;
import cn.zoucl.cloud.common.utils.Result;
import cn.zoucl.cloud.common.utils.Validator;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.Map;

/**
 * Created by Administrator on 2017/11/28 0028.
 */
@RestController
@RequestMapping(value = "/sms")
public class SMSController {

    @Autowired
    private RedisService redisService;


    @GetMapping("/sendSMS/{phone}")
    public Result sendSMS(@PathVariable String phone){
        if(Validator.isEmpty(phone)){
            return Result.fail("手机号为空！");
        }
        else{
            int code = getRandNum(1,999999);
            long expireTime = 900;
            redisService.set("validateCode_"+phone,code+"",expireTime);
            //这里发送短信

            return Result.success(code);
        }

    }

    @GetMapping("/checkCode")
    public Result checkCode(@RequestParam Map<String,String> map){
        String code = (String) redisService.get("validateCode_"+map.get("username"));
        if(null == code || !code.equals(map.get("validateCode"))){
            return Result.fail("验证码不正确！");
        }
        return Result.success();
    }


    public static int getRandNum(int min, int max) {
        int randNum = min + (int)(Math.random() * ((max - min) + 1));
        return randNum;
    }



}
