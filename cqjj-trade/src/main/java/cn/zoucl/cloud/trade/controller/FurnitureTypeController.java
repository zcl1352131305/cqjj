package cn.zoucl.cloud.trade.controller;

import cn.zoucl.cloud.common.controller.BaseController;
import cn.zoucl.cloud.trade.model.entity.FurnitureType;
import cn.zoucl.cloud.trade.service.FurnitureTypeService;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * 商户接口
 * Created by Administrator on 2017/11/28 0028.
 */
@RestController
@RequestMapping(value = "/furnitureType")
public class FurnitureTypeController extends BaseController<FurnitureTypeService,FurnitureType> {


}
