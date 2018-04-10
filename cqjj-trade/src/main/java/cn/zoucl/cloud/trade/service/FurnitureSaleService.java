package cn.zoucl.cloud.trade.service;

import cn.zoucl.cloud.common.service.BaseService;
import cn.zoucl.cloud.common.utils.Query;
import cn.zoucl.cloud.common.utils.Result;
import cn.zoucl.cloud.trade.model.entity.CollectionFurniture;
import cn.zoucl.cloud.trade.model.entity.FurnitureSale;
import cn.zoucl.cloud.trade.model.vo.FurnitureSaleVo;

import java.util.List;

/**
 * Created by Administrator on 2017/11/29 0029.
 */
public interface FurnitureSaleService extends BaseService<FurnitureSale> {
    String saveOrUpdate(FurnitureSale entity);

    Result selectFrontPage(Query query);

    /**
     * 添加收藏
     * @param entity
     */
    Result addCollection(CollectionFurniture entity) ;

    /**
     * 查询收藏
     * @param userId
     * @return
     */
    List<FurnitureSaleVo> selectCollections(String userId);

    /**
     * 删除收藏
     * @param id
     */
    void deleteCollectionsById(String id);

}
