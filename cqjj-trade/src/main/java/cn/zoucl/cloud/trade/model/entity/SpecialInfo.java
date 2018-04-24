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
@Table(name = "t_special_info")
public class SpecialInfo extends BaseEntity {

    private String title;

    private String location;

    @Column(name = "link_url")
    private String linkUrl;

    @Column(name = "head_img")
    private String headImg;

}
