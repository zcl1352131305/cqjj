package cn.zoucl.cloud.trade.model.entity;

import cn.zoucl.cloud.common.model.entity.BaseEntity;
import lombok.Data;

import javax.persistence.Column;
import javax.persistence.Table;
import javax.persistence.Transient;
import java.util.List;

/**
 * Created by Administrator on 2017/11/28 0028.
 */
@Data
@Table(name = "t_merchant")
public class Merchant extends BaseEntity {

    @Column(name = "sys_user_id")
    private String sysUserId;

    @Column(name = "merchant_id")
    private String merchantId;

    @Column(name = "market_id")
    private String marketId;

    @Column(name = "merchant_name")
    private String merchantName;

    @Column(name = "merchant_credit_code")
    private String merchantCreditCode;

    @Column(name = "merchant_business_license")
    private String merchantBusinessLicense;

    private String contact;

    private String phone;

    private String email;

    private String address;

    private String enabled;

    @Column(name = "audit_state")
    private String auditState;

    @Column(name = "audit_refuse_reason")
    private String auditRefuseReason ;

    @Column(name = "last_login")
    private String lastLogin;


    @Transient
    private List<MerchantBusinessScope> businessScopes;


}
