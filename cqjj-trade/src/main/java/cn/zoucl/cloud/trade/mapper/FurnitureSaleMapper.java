package cn.zoucl.cloud.trade.mapper;

import cn.zoucl.cloud.trade.model.entity.CollectionFurniture;
import cn.zoucl.cloud.trade.model.entity.FurnitureSaleImg;
import cn.zoucl.cloud.trade.model.entity.FurnitureSale;
import cn.zoucl.cloud.trade.model.vo.FurnitureSaleVo;
import tk.mybatis.mapper.common.Mapper;

import java.util.List;
import java.util.Map;

/**
 * Created by Administrator on 2017/11/29 0029.
 */
public interface FurnitureSaleMapper extends Mapper<FurnitureSale> {

    void insertFnImgBatch(List<FurnitureSaleImg> items);

    void deleteFnImgBySaleId(String SaleId);

    List<FurnitureSaleImg> selectSaleImgs(String saleId);

    /**
     * 前端分页查询
     * @param entity
     * @return
     */
    List<FurnitureSaleVo> selectFrontPage(Map<String, Object> entity);


    /**
     * 添加收藏
     * @param entity
     */
    void addCollection(CollectionFurniture entity );

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

    /**
     * 查询收藏
     * @return
     */
    CollectionFurniture selectCollectionByUidAndFid(CollectionFurniture entity);
}
