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
import java.util.Date;

@Data
@Table(name = "t_wechat_user")
public class WechatUser extends BaseEntity {

	@Column(name = "open_id")
	private String openId;

	@Column(name = "union_id")
	private String unionId;

	@Column(name = "nick_name")
	private String nickName;

	private String sex;

	private String city;

	private String country;

	private String province;

	private String language;

	@Column(name = "head_img_url")
	private String headImgUrl;

	@Column(name = "subscribe_time")
	private String subscribeTime;

	private String subscribe;

	private String remark;

	@Column(name = "group_id")
	private String groupId;

	public static WechatUser getFromWxMpUser(WxMpUser wxMpUser){
		WechatUser wechatUserInfo = new WechatUser();
		wechatUserInfo.setOpenId(wxMpUser.getOpenId());
		if(null != wxMpUser.getSubscribe()){
			wechatUserInfo.setSubscribe(wxMpUser.getSubscribe()?"1":"0");
		}

		wechatUserInfo.setNickName(wxMpUser.getNickname());
		wechatUserInfo.setCity(wxMpUser.getCity());
		wechatUserInfo.setCountry(wxMpUser.getCountry());
		wechatUserInfo.setProvince(wxMpUser.getProvince());
		wechatUserInfo.setLanguage(wxMpUser.getLanguage());
		wechatUserInfo.setHeadImgUrl(wxMpUser.getHeadImgUrl());
		wechatUserInfo.setSubscribeTime(String.valueOf(wxMpUser.getSubscribeTime()));
		wechatUserInfo.setUnionId(wxMpUser.getUnionId());
		wechatUserInfo.setRemark(wxMpUser.getRemark());
		wechatUserInfo.setGroupId(String.valueOf(wxMpUser.getGroupId()));
		return wechatUserInfo;
	}

}
