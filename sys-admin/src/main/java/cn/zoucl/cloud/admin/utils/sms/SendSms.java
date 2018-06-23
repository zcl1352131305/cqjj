package cn.zoucl.cloud.admin.utils.sms;

public interface SendSms {
    Integer sendSmsValidateCode(String phone, Integer code, Long expireTime);
}
