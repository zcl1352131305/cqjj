package cn.zoucl.cloud.trade.mapper;

import cn.zoucl.cloud.trade.model.entity.Merchant;
import cn.zoucl.cloud.trade.model.entity.MerchantBusinessScope;
import tk.mybatis.mapper.common.Mapper;

import java.util.List;

/**
 * Created by Administrator on 2017/11/29 0029.
 */
public interface MerchantMapper extends Mapper<Merchant> {

    Merchant selectBySysUserId(String sysUserId);


    /**
     * 经营范围新增
     * @param items
     */
    void insertBusinessScopes(List<MerchantBusinessScope> items);

    /**
     * 经营范围删除
     * @param merchantId
     */
    void deleteBusinessScopes(String merchantId);

    /**
     * 经营范围查询
     * @param merchantId
     * @return
     */
    List<MerchantBusinessScope> selectBusinessScopes(String merchantId);
}
