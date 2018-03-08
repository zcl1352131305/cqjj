package cn.zoucl.cloud.trade.mapper;

import cn.zoucl.cloud.trade.model.entity.FurnitureRecycle;
import cn.zoucl.cloud.trade.model.entity.FurnitureRecycleImg;
import tk.mybatis.mapper.common.Mapper;

import java.util.List;

/**
 * Created by Administrator on 2017/11/29 0029.
 */
public interface FurnitureRecycleMapper extends Mapper<FurnitureRecycle> {

    void insertFnImgBatch(List<FurnitureRecycleImg> items);

    void deleteFnImgByRecycleId(String recycleId);

    List<FurnitureRecycleImg> selectRecyleImgs(String recyleId);
}
