package cn.zoucl.cloud.trade.controller;

import cn.zoucl.cloud.common.controller.BaseController;
import cn.zoucl.cloud.common.utils.Result;
import cn.zoucl.cloud.trade.model.entity.SaleAccount;
import cn.zoucl.cloud.trade.service.SaleAccountService;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Map;

/**
 * 交易记录接口
 * Created by Administrator on 2017/11/28 0028.
 */
@RestController
@RequestMapping(value = "/account/sale")
public class SaleAccountController extends BaseController<SaleAccountService,SaleAccount> {

    /**
     * 保存或更新家具回收
     * @param entity
     * @return
     */
    @PostMapping("/saveOrUpdate")
    public Result saveOrUpdate(@RequestBody SaleAccount entity){
        if(null != entity){
            String id = baseService.saveOrUpdate(entity);
            return Result.success("成功!",id);
        }
        else{
            return Result.fail();
        }
    }

    /**
     * 待收尾款数量
     * @param params
     * @return
     */
    @GetMapping("/needGatheringCount")
    public Result needGatheringCount(@RequestParam Map<String, Object> params){
        Result rs = baseService.selectListByQuery(params);
        if(null != rs.getResult()){
            List list = (List) rs.getResult();
            return Result.success(list.size());
        }
        else{
            return Result.success(0);
        }
    }

}
