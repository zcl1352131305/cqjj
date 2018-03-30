package cn.zoucl.cloud.trade.model.entity;

import lombok.Data;

import javax.persistence.Column;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * Created by Administrator on 2017/11/28 0028.
 */
@Data
@Table(name = "t_furniture_sale_img")
public class FurnitureSaleImg {
    @Id
    private String id;

    @Column(name = "sale_id")
    private String saleId;

    private String url;

}
