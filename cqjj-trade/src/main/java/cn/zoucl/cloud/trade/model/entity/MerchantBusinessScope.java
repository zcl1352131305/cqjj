package cn.zoucl.cloud.trade.model.entity;

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
@Table(name = "t_merchant_business_scope")
public class MerchantBusinessScope{

    @Id
    private String id;

    @Column(name = "merchant_id")
    private String merchantId;

    @Column(name = "type_id")
    private String typeId;

    @Transient
    private String typeName;

}
