package cn.zoucl.cloud.trade.service;

import cn.zoucl.cloud.common.service.BaseService;
import cn.zoucl.cloud.trade.model.entity.SaleAccount;
import cn.zoucl.cloud.trade.model.entity.SpendAccount;

/**
 * Created by Administrator on 2017/11/29 0029.
 */
public interface SpendAccountService extends BaseService<SpendAccount> {

    String saveOrUpdate(SpendAccount entity);
}
