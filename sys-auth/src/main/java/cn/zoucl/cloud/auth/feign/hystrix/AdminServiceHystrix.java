package cn.zoucl.cloud.auth.feign.hystrix;

import cn.zoucl.cloud.auth.feign.IAdminService;
import cn.zoucl.cloud.common.utils.Result;
import org.springframework.stereotype.Component;

/**
 * Created by Administrator on 2017/11/30 0030.
 * 断路器，当请求sys-admin超时时执行
 */
@Component
public class AdminServiceHystrix implements IAdminService {
    @Override
    public Result validate(String username, String password) {
        return null;
    }
}