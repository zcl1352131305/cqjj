/*
 * @ClassName WechatPublicPlatform
 * @Description
 * @version 1.0
 * @Date 2017/7/6 10:21:15
 */
package cn.zoucl.cloud.trade.model.entity;

import cn.zoucl.cloud.common.model.entity.BaseEntity;
import lombok.Data;
import me.chanjar.weixin.mp.bean.result.WxMpUser;

import javax.persistence.Column;
import javax.persistence.Table;

@Data
@Table(name = "t_wechat_menu")
public class WechatMenu extends BaseEntity {

	private String type;

	private String name;

	private String url;

	private String keyword;

	@Column(name = "media_id")
	private String mediaId;

	private String appid;

	private String pagepath;

	private String parent;

	private String sort;

}
