package cn.zoucl.cloud.trade.model.entity;

import cn.zoucl.cloud.common.model.entity.BaseEntity;
import lombok.Data;

import javax.persistence.Column;
import javax.persistence.Table;

/**
 * Created by Administrator on 2017/11/28 0028.
 */
@Data
@Table(name = "t_sale_account")
public class SaleAccount extends BaseEntity {

    @Column(name = "admin_id")
    private String adminId;

    @Column(name = "trading_detail")
    private String tradingDetail;

    @Column(name = "total_price")
    private String totalPrice;

    @Column(name = "trade_type")
    private String tradeType;

    @Column(name = "pay_type")
    private String payType;

    private String payee;

    @Column(name = "trading_time")
    private String tradingTime;

    private String buyer;

    @Column(name = "buyer_phone")
    private String buyerPhone;

    private String deposit;

    @Column(name = "balance_pay_type")
    private String balancePayType;

    @Column(name = "balance_bring_people")
    private String balanceBringPeople;

    @Column(name = "balance_is_finish")
    private String balanceIsFinish;

    @Column(name = "balance_already_gathering")
    private String balanceAlreadyGathering;

    @Column(name = "balance_finish_time")
    private String balanceFinishTime;

    @Column(name = "balance_payee")
    private String balancePayee;

}
