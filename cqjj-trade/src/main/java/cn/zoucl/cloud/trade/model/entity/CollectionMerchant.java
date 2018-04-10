package cn.zoucl.cloud.trade.model.entity;

import lombok.Data;

import javax.persistence.Column;
import javax.persistence.Id;
import javax.persistence.Table;
import java.util.Date;

/**
 * Created by Administrator on 2017/11/28 0028.
 */
@Data
@Table(name = "t_collection_furniture")
public class CollectionMerchant {

    @Id
    private String id;

    @Column(name = "user_id")
    private String userId;

    @Column(name = "merchant_id")
    private String merchantId;

    @Column(name = "date_created")
    private Date dateCreated;

}
