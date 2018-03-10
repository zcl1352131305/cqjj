package cn.zoucl.cloud.trade.feign.hystrix;

import cn.zoucl.cloud.api.model.vo.UserVo;
import cn.zoucl.cloud.common.utils.Result;
import cn.zoucl.cloud.trade.feign.IAdminFeign;
import org.springframework.stereotype.Component;

/**
 * Created by Administrator on 2017/11/30 0030.
 * 断路器，当请求sys-admin超时时执行
 */
@Component
public class AdminFeignHystrix implements IAdminFeign {
    @Override
    public Result validate(String username, String password) {
        return Result.fail("连接服务失败！");
    }

   /* @Override
    public Result<PermissionVo> userPermissions(String userId) {
        return Result.fail("连接服务失败！");
    }*/
}
