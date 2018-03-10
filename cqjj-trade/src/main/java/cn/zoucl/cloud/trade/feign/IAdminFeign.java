package cn.zoucl.cloud.trade.feign;

import cn.zoucl.cloud.api.model.vo.UserVo;
import cn.zoucl.cloud.common.utils.Result;
import cn.zoucl.cloud.trade.feign.hystrix.AdminFeignHystrix;
import org.springframework.cloud.netflix.feign.FeignClient;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

/**
 * Created by Administrator on 2017/11/30 0030.
 */
@FeignClient(name = "sys-admin",fallback = AdminFeignHystrix.class)
public interface IAdminFeign {
    @RequestMapping(value = "/user/validate", method = RequestMethod.POST)
    Result<UserVo> validate(@RequestParam("username") String username, @RequestParam("password") String password);

/*
    @RequestMapping(value = "/element/permissions/{userId}", method = RequestMethod.POST)
    public Result<PermissionVo> userPermissions(@Param("userId") String userId);
*/


}
