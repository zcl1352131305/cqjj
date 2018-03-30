package cn.zoucl.cloud.trade.service;

import cn.zoucl.cloud.common.service.BaseService;
import cn.zoucl.cloud.trade.model.entity.Merchant;

/**
 * Created by Administrator on 2017/11/29 0029.
 */
public interface MerchantService extends BaseService<Merchant> {

    /**
     * 保存或更新商户信息
     * @param entity
     */
    void saveOrUpdate(Merchant entity);

    /**
     * 根据后台账户id查询
     * @param id
     * @return
     */
    Merchant selectByAdminId(String id);
}
