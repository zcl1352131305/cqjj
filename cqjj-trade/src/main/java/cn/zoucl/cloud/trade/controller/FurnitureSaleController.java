package cn.zoucl.cloud.trade.controller;

import cn.zoucl.cloud.common.controller.BaseController;
import cn.zoucl.cloud.common.utils.Query;
import cn.zoucl.cloud.common.utils.Result;
import cn.zoucl.cloud.trade.model.entity.FurnitureRecycle;
import cn.zoucl.cloud.trade.model.entity.FurnitureSale;
import cn.zoucl.cloud.trade.service.FurnitureRecycleService;
import cn.zoucl.cloud.trade.service.FurnitureSaleService;
import org.springframework.web.bind.annotation.*;

import java.util.Map;

/**
 * 家具销售接口
 * Created by Administrator on 2017/11/28 0028.
 */
@RestController
@RequestMapping(value = "/furnitureSale")
public class FurnitureSaleController extends BaseController<FurnitureSaleService,FurnitureSale> {

    /**
     * 保存或更新家具回收
     * @param entity
     * @return
     */
    @PostMapping("/saveOrUpdate")
    public Result saveOrUpdate(@RequestBody FurnitureSale entity){
        if(null != entity){
            String id = baseService.saveOrUpdate(entity);
            return Result.success("成功!",id);
        }
        else{
            return Result.fail();
        }
    }

    /**
     * 前台分页
     * @param params
     * @return
     */
    @GetMapping("/frontPage")
    public Result frontPage(@RequestParam Map<String, Object> params){
        Query query = new Query(params);
        return baseService.selectFrontPage(query);
    }

}
