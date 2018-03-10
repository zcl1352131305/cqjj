package cn.zoucl.cloud.trade.feign.hystrix;

import cn.zoucl.cloud.common.utils.Result;
import cn.zoucl.cloud.trade.feign.IAuthFeign;
import org.springframework.stereotype.Component;

/**
 * Created by Administrator on 2017/11/30 0030.
 * 断路器，当请求sys-admin超时时执行
 */
@Component
public class AuthFeignHystrix implements IAuthFeign {
    @Override
    public Result wechatValidate(String id) {
        return Result.fail("连接服务失败！");
    }

   /* @Override
    public Result<PermissionVo> userPermissions(String userId) {
        return Result.fail("连接服务失败！");
    }*/
}
