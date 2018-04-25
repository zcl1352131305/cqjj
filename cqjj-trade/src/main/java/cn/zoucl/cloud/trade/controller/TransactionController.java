package cn.zoucl.cloud.trade.controller;

import cn.zoucl.cloud.common.controller.BaseController;
import cn.zoucl.cloud.common.utils.Result;
import cn.zoucl.cloud.trade.model.entity.SpecialInfo;
import cn.zoucl.cloud.trade.model.entity.Transaction;
import cn.zoucl.cloud.trade.service.SpecialInfoService;
import cn.zoucl.cloud.trade.service.TransactionService;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * 交易记录接口
 * Created by Administrator on 2017/11/28 0028.
 */
@RestController
@RequestMapping(value = "/transaction")
public class TransactionController extends BaseController<TransactionService,Transaction> {

    /**
     * 保存或更新家具回收
     * @param entity
     * @return
     */
    @PostMapping("/saveOrUpdate")
    public Result saveOrUpdate(@RequestBody Transaction entity){
        if(null != entity){
            String id = baseService.saveOrUpdate(entity);
            return Result.success("成功!",id);
        }
        else{
            return Result.fail();
        }
    }

}
