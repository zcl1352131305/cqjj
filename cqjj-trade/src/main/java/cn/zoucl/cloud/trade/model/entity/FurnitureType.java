package cn.zoucl.cloud.trade.model.entity;

import cn.zoucl.cloud.common.model.entity.BaseEntity;
import lombok.Data;

import javax.persistence.Column;
import javax.persistence.Table;

/**
 * Created by Administrator on 2017/11/28 0028.
 */
@Data
@Table(name = "t_furniture_type")
public class FurnitureType extends BaseEntity {

    private String code;

    @Column(name = "way_group")
    private String wayGroup;

    private String name;

}
