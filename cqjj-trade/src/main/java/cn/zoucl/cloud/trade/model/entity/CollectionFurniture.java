package cn.zoucl.cloud.trade.model.entity;

import cn.zoucl.cloud.common.model.entity.BaseEntity;
import lombok.Data;

import javax.persistence.Column;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Transient;
import java.util.Date;
import java.util.List;

/**
 * Created by Administrator on 2017/11/28 0028.
 */
@Data
@Table(name = "t_collection_furniture")
public class CollectionFurniture{

    @Id
    private String id;

    @Column(name = "user_id")
    private String userId;

    @Column(name = "furniture_id")
    private String furnitureId;

    @Column(name = "date_created")
    private Date dateCreated;

}
