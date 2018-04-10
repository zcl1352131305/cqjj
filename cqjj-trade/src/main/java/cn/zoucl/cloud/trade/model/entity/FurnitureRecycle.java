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
@Table(name = "t_furniture_recycle")
public class FurnitureRecycle extends BaseEntity {

    private String title;

    @Column(name = "user_id")
    private String userId;

    @Column(name = "type_id")
    private String typeId;

    private String price;

    @Column(name = "detail_info")
    private String detailInfo;

    @Column(name = "head_img")
    private String headImg;

    private String contact;

    private String phone;

    private String address;

    @Column(name = "is_show")
    private String isShow;




    @Transient
    private List<FurnitureRecycleImg> fnImgs;



}
