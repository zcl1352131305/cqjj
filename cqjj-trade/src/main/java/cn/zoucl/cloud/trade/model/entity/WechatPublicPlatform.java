/*
 * @ClassName WechatPublicPlatform
 * @Description
 * @version 1.0
 * @Date 2017/7/6 10:21:15
 */
package cn.zoucl.cloud.trade.model.entity;

import cn.zoucl.cloud.common.model.entity.BaseEntity;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.Column;
import javax.persistence.Table;

@Data
@Table(name = "t_wechat_public_platform")
public class WechatPublicPlatform extends BaseEntity {

	private String token;

	@Column(name = "user_id")
	private String userId;

	private String password;

	@Column(name = "app_id")
	private String appId;

	@Column(name = "app_secret")
	private String appSecret;

	@Column(name = "aes_key")
	private String aesKey;

	private String type;

	@Column(name = "mch_id")
	private String mchId;

	@Column(name = "mch_key")
	private String mchKey;

	@Column(name = "key_path")
	private String keyPath;

	@Column(name = "key_path_local")
	private String keyPathLocal;

	@Column(name = "is_active")
	private String isActive;

}
