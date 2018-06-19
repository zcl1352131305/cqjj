package cn.zoucl.cloud.trade.service.impl;

import cn.zoucl.cloud.common.service.impl.BaseServiceImpl;
import cn.zoucl.cloud.common.utils.IdUtil;
import cn.zoucl.cloud.common.utils.Validator;
import cn.zoucl.cloud.trade.mapper.SaleAccountMapper;
import cn.zoucl.cloud.trade.mapper.SpendAccountMapper;
import cn.zoucl.cloud.trade.model.entity.SaleAccount;
import cn.zoucl.cloud.trade.model.entity.SpendAccount;
import cn.zoucl.cloud.trade.service.SaleAccountService;
import cn.zoucl.cloud.trade.service.SpendAccountService;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.List;
import java.util.Map;

@Service
public class SpendAccountServiceImpl extends BaseServiceImpl<SpendAccountMapper, SpendAccount> implements SpendAccountService {


    public String saveOrUpdate(SpendAccount entity) {
        if(Validator.isEmpty(entity.getId())) {
            entity.setId(IdUtil.createUUID(32));
        }
        entity.setDateUpdated(new Date());


        SpendAccount sale = super.selectById(entity.getId());
        if(null != sale){
            updateById(entity);
        }
        else{
            entity.setDateCreated(new Date());
            insertSelective(entity);
        }
        return entity.getId();
    }

    @Override
    public List<SpendAccount> monthSpendAccounts(Map<String, Object> entity) {
        return mapper.selectByMonth(entity);
    }
}
