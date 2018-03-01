package cn.zoucl.cloud.trade.controller;

import cn.zoucl.cloud.common.controller.BaseController;
import cn.zoucl.cloud.trade.model.entity.Merchant;
import cn.zoucl.cloud.trade.service.MerchantService;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * Created by Administrator on 2017/11/28 0028.
 */
@RestController
@RequestMapping(value = "/merchant")
public class MerchantController extends BaseController<MerchantService,Merchant> {


}
