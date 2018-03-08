package cn.zoucl.cloud.trade.service.impl;

import cn.zoucl.cloud.common.service.impl.BaseServiceImpl;
import cn.zoucl.cloud.common.utils.IdUtil;
import cn.zoucl.cloud.common.utils.Validator;
import cn.zoucl.cloud.trade.mapper.FurnitureRecycleMapper;
import cn.zoucl.cloud.trade.model.entity.FurnitureRecycle;
import cn.zoucl.cloud.trade.service.FurnitureRecycleService;
import org.springframework.stereotype.Service;

@Service
public class FurnitureRecycleServiceImpl extends BaseServiceImpl<FurnitureRecycleMapper, FurnitureRecycle> implements FurnitureRecycleService {

    public String saveOrUpdate(FurnitureRecycle entity){
        if(Validator.isEmpty(entity.getId())) {
            entity.setId(IdUtil.createUUID(32));
        }
        else{
            FurnitureRecycle recycle1 = super.selectById(entity.getId());
            if(null != recycle1){
                updateSelectiveById(entity);
            }
            else{
                insertSelective(entity);
            }
        }

        //保存图片
        if(null != entity.getFnImgs() && entity.getFnImgs().size() > 0){
            mapper.deleteFnImgByRecycleId(entity.getId());
            mapper.insertFnImgBatch(entity.getFnImgs());
        }
        return entity.getId();
    }

    @Override
    public FurnitureRecycle selectById(Object id) {
        FurnitureRecycle recycle = super.selectById(id);
        if(null != recycle){
            recycle.setFnImgs(mapper.selectRecyleImgs((String) id));
        }
        return recycle;
    }

}
