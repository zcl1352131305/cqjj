package cn.zoucl.cloud.trade.service.impl;

import cn.zoucl.cloud.common.service.impl.BaseServiceImpl;
import cn.zoucl.cloud.common.utils.IdUtil;
import cn.zoucl.cloud.common.utils.Validator;
import cn.zoucl.cloud.trade.mapper.TransactionMapper;
import cn.zoucl.cloud.trade.model.entity.FurnitureSale;
import cn.zoucl.cloud.trade.model.entity.Transaction;
import cn.zoucl.cloud.trade.service.TransactionService;
import org.springframework.stereotype.Service;

import java.util.Date;

@Service
public class TransactionServiceImpl extends BaseServiceImpl<TransactionMapper, Transaction> implements TransactionService {


    public String saveOrUpdate(Transaction entity) {
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

        Transaction sale = super.selectById(entity.getId());
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
