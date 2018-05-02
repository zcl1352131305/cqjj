package cn.zoucl.cloud.trade.service;

import cn.zoucl.cloud.common.service.BaseService;
import cn.zoucl.cloud.trade.model.entity.SaleAccount;

/**
 * Created by Administrator on 2017/11/29 0029.
 */
public interface SaleAccountService extends BaseService<SaleAccount> {

    String saveOrUpdate(SaleAccount entity);
}
