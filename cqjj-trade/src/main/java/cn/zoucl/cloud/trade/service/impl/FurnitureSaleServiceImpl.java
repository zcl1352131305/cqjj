package cn.zoucl.cloud.trade.service.impl;

import cn.zoucl.cloud.common.service.impl.BaseServiceImpl;
import cn.zoucl.cloud.common.utils.IdUtil;
import cn.zoucl.cloud.common.utils.Validator;
import cn.zoucl.cloud.trade.mapper.FurnitureSaleMapper;
import cn.zoucl.cloud.trade.model.entity.FurnitureSale;
import cn.zoucl.cloud.trade.service.FurnitureSaleService;
import org.springframework.stereotype.Service;

import java.util.Date;

@Service
public class FurnitureSaleServiceImpl extends BaseServiceImpl<FurnitureSaleMapper, FurnitureSale> implements FurnitureSaleService {

    @Override
    public String saveOrUpdate(FurnitureSale entity) {
        if(Validator.isEmpty(entity.getId())) {
            entity.setId(IdUtil.createUUID(32));
        }
        entity.setDateUpdated(new Date());

        FurnitureSale sale = super.selectById(entity.getId());
        if(null != sale){
            updateSelectiveById(entity);
        }
        else{
            entity.setDateCreated(new Date());
            insertSelective(entity);
        }


        //保存图片
        if(null != entity.getFnImgs() && entity.getFnImgs().size() > 0){
            mapper.deleteFnImgBySaleId(entity.getId());
            mapper.insertFnImgBatch(entity.getFnImgs());
        }
        return entity.getId();
    }

    @Override
    public FurnitureSale selectById(Object id) {
        FurnitureSale sale = super.selectById(id);
        if(null != sale){
            sale.setFnImgs(mapper.selectSaleImgs((String) id));
        }
        return sale;
    }


}
