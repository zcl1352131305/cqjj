package cn.zoucl.cloud.trade.controller;

import cn.zoucl.cloud.common.controller.BaseController;
import cn.zoucl.cloud.trade.model.entity.SpecialInfo;
import cn.zoucl.cloud.trade.service.SpecialInfoService;
import org.springframework.web.bind.annotation.*;

/**
 * 商户接口
 * Created by Administrator on 2017/11/28 0028.
 */
@RestController
@RequestMapping(value = "/specialInfo")
public class SpecialInfoController extends BaseController<SpecialInfoService,SpecialInfo> {



}
