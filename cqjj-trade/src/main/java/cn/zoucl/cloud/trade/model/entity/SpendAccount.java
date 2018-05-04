package cn.zoucl.cloud.trade.model.entity;

import cn.zoucl.cloud.common.model.entity.BaseEntity;
import lombok.Data;

import javax.persistence.Column;
import javax.persistence.Table;

/**
 * Created by Administrator on 2017/11/28 0028.
 */
@Data
@Table(name = "t_spend_account")
public class SpendAccount extends BaseEntity {

    @Column(name = "admin_id")
    private String adminId;

    @Column(name = "trading_detail")
    private String tradingDetail;

    @Column(name = "total_price")
    private String totalPrice;

    @Column(name = "spend_type")
    private String spendType;

    @Column(name = "pay_type")
    private String payType;

    private String drawee;

    @Column(name = "trading_time")
    private String tradingTime;

}
