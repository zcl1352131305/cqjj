package cn.zoucl.cloud.trade.controller;

import cn.zoucl.cloud.common.controller.BaseController;
import cn.zoucl.cloud.common.utils.Query;
import cn.zoucl.cloud.common.utils.Result;
import cn.zoucl.cloud.common.utils.Validator;
import cn.zoucl.cloud.trade.model.entity.CollectionFurniture;
import cn.zoucl.cloud.trade.model.entity.FurnitureSale;
import cn.zoucl.cloud.trade.service.FurnitureSaleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.Map;

/**
 * 家具销售接口
 * Created by Administrator on 2017/11/28 0028.
 */
@RestController
@RequestMapping(value = "/collections")
public class CollectionsController {

    @Autowired
    private FurnitureSaleService furnitureSaleService;

    @GetMapping("/furniture/list/{userId}")
    public Result frontPage(@PathVariable String userId){
        if(Validator.isEmpty(userId)){
            return Result.fail("用户id为空！");
        }
        else{
            return Result.success(furnitureSaleService.selectCollections(userId));
        }
    }

    @PostMapping("/furniture/add")
    public Result furnitureAdd(@RequestBody CollectionFurniture entity){
        return furnitureSaleService.addCollection(entity);
    }

    @DeleteMapping("/furniture/remove/{id}")
    public Result furnitureRemove(@PathVariable String id){
        if(Validator.notEmpty(id)){
            furnitureSaleService.deleteCollectionsById(id);
            return Result.success("成功!");
        }
        else{
            return Result.fail();
        }
    }


}
