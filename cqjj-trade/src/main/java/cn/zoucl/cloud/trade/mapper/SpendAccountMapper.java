package cn.zoucl.cloud.trade.mapper;

import cn.zoucl.cloud.trade.model.entity.SpendAccount;
import tk.mybatis.mapper.common.Mapper;

import java.util.List;
import java.util.Map;

public interface SpendAccountMapper extends Mapper<SpendAccount> {
    List<SpendAccount> selectByMonth (Map<String, Object> entity);
}
