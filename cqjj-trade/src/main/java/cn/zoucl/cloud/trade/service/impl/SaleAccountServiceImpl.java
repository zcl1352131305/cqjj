package cn.zoucl.cloud.trade.service.impl;

import cn.zoucl.cloud.common.service.impl.BaseServiceImpl;
import cn.zoucl.cloud.common.utils.IdUtil;
import cn.zoucl.cloud.common.utils.Validator;
import cn.zoucl.cloud.trade.mapper.SaleAccountMapper;
import cn.zoucl.cloud.trade.model.entity.SaleAccount;
import cn.zoucl.cloud.trade.service.SaleAccountService;
import org.springframework.stereotype.Service;

import java.util.Date;

@Service
public class SaleAccountServiceImpl extends BaseServiceImpl<SaleAccountMapper, SaleAccount> implements SaleAccountService {


    public String saveOrUpdate(SaleAccount entity) {
        if(Validator.isEmpty(entity.getId())) {
            entity.setId(IdUtil.createUUID(32));
        }
        entity.setDateUpdated(new Date());

        if("1".equals(entity.getTradeType())){
            entity.setDeposit(null);
            entity.setBalanceAlreadyGathering(null);
            entity.setBalanceBringPeople(null);
            entity.setBalanceFinishTime(null);
            entity.setBalanceIsFinish(null);
            entity.setBalancePayee(null);
            entity.setBalancePayType(null);
        }
        else{
            if(!"1".equals(entity.getBalancePayType())){
                entity.setBalanceBringPeople(null);
            }
            if(!"1".equals(entity.getBalanceIsFinish())){
                entity.setBalanceFinishTime(null);
                entity.setBalancePayee(null);
            }
        }

        SaleAccount sale = super.selectById(entity.getId());
        if(null != sale){
            updateById(entity);
        }
        else{
            entity.setDateCreated(new Date());
            insertSelective(entity);
        }
        return entity.getId();
    }
}
