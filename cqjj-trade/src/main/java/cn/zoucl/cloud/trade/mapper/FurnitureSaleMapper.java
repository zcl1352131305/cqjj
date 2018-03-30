package cn.zoucl.cloud.trade.mapper;

import cn.zoucl.cloud.trade.model.entity.FurnitureSaleImg;
import cn.zoucl.cloud.trade.model.entity.FurnitureSale;
import tk.mybatis.mapper.common.Mapper;

import java.util.List;

/**
 * Created by Administrator on 2017/11/29 0029.
 */
public interface FurnitureSaleMapper extends Mapper<FurnitureSale> {

    void insertFnImgBatch(List<FurnitureSaleImg> items);

    void deleteFnImgBySaleId(String SaleId);

    List<FurnitureSaleImg> selectSaleImgs(String saleId);
}
