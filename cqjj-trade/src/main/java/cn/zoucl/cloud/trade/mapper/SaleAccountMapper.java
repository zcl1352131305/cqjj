package cn.zoucl.cloud.trade.mapper;

import cn.zoucl.cloud.trade.model.entity.SaleAccount;
import tk.mybatis.mapper.common.Mapper;

import java.util.List;
import java.util.Map;

public interface SaleAccountMapper extends Mapper<SaleAccount> {

    List<SaleAccount> selectByMonth (Map<String, Object> entity);
}
