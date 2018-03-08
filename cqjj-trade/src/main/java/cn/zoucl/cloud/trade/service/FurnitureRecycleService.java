package cn.zoucl.cloud.trade.service;

import cn.zoucl.cloud.common.service.BaseService;
import cn.zoucl.cloud.trade.model.entity.FurnitureRecycle;

/**
 * Created by Administrator on 2017/11/29 0029.
 */
public interface FurnitureRecycleService extends BaseService<FurnitureRecycle> {
    String saveOrUpdate(FurnitureRecycle entity);
}
