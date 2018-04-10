package cn.zoucl.cloud.trade.model.vo;

import cn.zoucl.cloud.common.model.entity.BaseEntity;
import cn.zoucl.cloud.trade.model.entity.FurnitureSaleImg;
import lombok.Data;

import javax.persistence.Column;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Transient;
import java.util.List;

/**
 * Created by Administrator on 2017/11/28 0028.
 */
@Data
public class FurnitureSaleVo{
    private String id;

    private String userId;

    private String title;

    private String fnName;

    private String price;

    private String headImg;

    private String isNew;

    private String merchantId;

    private String merchantName;

    // 收藏id
    private String collectionId;



}
