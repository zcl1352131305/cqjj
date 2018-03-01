package cn.zoucl.cloud.trade.service.impl;

import cn.zoucl.cloud.common.service.impl.BaseServiceImpl;
import cn.zoucl.cloud.trade.mapper.MerchantMapper;
import cn.zoucl.cloud.trade.model.entity.Merchant;
import cn.zoucl.cloud.trade.service.MerchantService;
import org.springframework.stereotype.Service;

@Service
public class MerchantServiceImpl extends BaseServiceImpl<MerchantMapper, Merchant> implements MerchantService {
}
