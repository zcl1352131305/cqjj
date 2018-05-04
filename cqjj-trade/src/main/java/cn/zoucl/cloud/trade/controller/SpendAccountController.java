package cn.zoucl.cloud.trade.controller;

import cn.zoucl.cloud.common.controller.BaseController;
import cn.zoucl.cloud.common.utils.Result;
import cn.zoucl.cloud.trade.model.entity.SaleAccount;
import cn.zoucl.cloud.trade.model.entity.SpendAccount;
import cn.zoucl.cloud.trade.service.SaleAccountService;
import cn.zoucl.cloud.trade.service.SpendAccountService;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Map;

/**
 * 交易记录接口
 * Created by Administrator on 2017/11/28 0028.
 */
@RestController
@RequestMapping(value = "/account/spend")
public class SpendAccountController extends BaseController<SpendAccountService,SpendAccount> {

    /**
     * 保存或更新支出记账
     * @param entity
     * @return
     */
    @PostMapping("/saveOrUpdate")
    public Result saveOrUpdate(@RequestBody SpendAccount entity){
        if(null != entity){
            String id = baseService.saveOrUpdate(entity);
            return Result.success("成功!",id);
        }
        else{
            return Result.fail();
        }
    }

}
