package cn.zoucl.cloud.admin.controller;

import cn.zoucl.cloud.admin.service.RedisService;
import cn.zoucl.cloud.common.utils.Result;
import cn.zoucl.cloud.common.utils.Validator;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

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

    public static int getRandNum(int min, int max) {
        int randNum = min + (int)(Math.random() * ((max - min) + 1));
        return randNum;
    }



}
