package cn.zoucl.cloud.trade.service.impl;

import cn.zoucl.cloud.common.service.impl.BaseServiceImpl;
import cn.zoucl.cloud.common.utils.IdUtil;
import cn.zoucl.cloud.common.utils.Validator;
import cn.zoucl.cloud.trade.mapper.MerchantMapper;
import cn.zoucl.cloud.trade.model.entity.Merchant;
import cn.zoucl.cloud.trade.service.MerchantService;
import org.springframework.stereotype.Service;

@Service
public class MerchantServiceImpl extends BaseServiceImpl<MerchantMapper, Merchant> implements MerchantService {

    public void saveOrUpdate(Merchant entity){
        if(Validator.isEmpty(entity.getId())) {
            entity.setId(IdUtil.createUUID(32));
            String id = IdUtil.createUUID(32);
            String mid = id.substring(1,5)+"-"+id.substring(6,10)+"-"+id.substring(11,15);
            entity.setMerchantId(mid);
        }

        Merchant merchant = super.selectById(entity.getId());
        if(null != merchant){
            updateSelectiveById(entity);
        }
        else{
            insertSelective(entity);
        }

    }
}
