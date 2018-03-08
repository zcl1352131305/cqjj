package cn.zoucl.cloud.trade.model.entity;

import cn.zoucl.cloud.common.model.entity.BaseEntity;
import lombok.Data;

import javax.persistence.Column;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * Created by Administrator on 2017/11/28 0028.
 */
@Data
@Table(name = "t_furniture_recycle_img")
public class FurnitureRecycleImg {
    @Id
    private String id;

    @Column(name = "recycle_id")
    private String recycleId;

    private String url;

}
