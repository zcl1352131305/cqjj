package cn.zoucl.cloud.trade.service;

import cn.zoucl.cloud.common.service.BaseService;
import cn.zoucl.cloud.common.utils.Query;
import cn.zoucl.cloud.common.utils.Result;
import cn.zoucl.cloud.trade.model.entity.FurnitureSale;

/**
 * Created by Administrator on 2017/11/29 0029.
 */
public interface FurnitureSaleService extends BaseService<FurnitureSale> {
    String saveOrUpdate(FurnitureSale entity);

    Result selectFrontPage(Query query);
}
