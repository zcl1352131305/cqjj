package cn.zoucl.cloud.trade.service.impl;

import cn.zoucl.cloud.common.service.impl.BaseServiceImpl;
import cn.zoucl.cloud.common.utils.Query;
import cn.zoucl.cloud.common.utils.Result;
import cn.zoucl.cloud.trade.mapper.MarketMapper;
import cn.zoucl.cloud.trade.model.entity.Market;
import cn.zoucl.cloud.trade.service.MarketService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.stereotype.Service;
import tk.mybatis.mapper.entity.Example;

import java.lang.reflect.ParameterizedType;
import java.util.List;
import java.util.Map;

@Service
public class MarketServiceImpl extends BaseServiceImpl<MarketMapper, Market> implements MarketService {

    @Override
    public List<Market> selectListAll() {
        Class<Market> clazz = (Class<Market>) ((ParameterizedType) getClass().getGenericSuperclass()).getActualTypeArguments()[1];
        Example example = new Example(clazz);
        example.setOrderByClause("sort asc");
        List<Market> list = mapper.selectByExample(example);
        return list;
    }

    @Override
    public Result selectPageByQuery(Query query) {
        Class<Market> clazz = (Class<Market>) ((ParameterizedType) getClass().getGenericSuperclass()).getActualTypeArguments()[1];
        Example example = new Example(clazz);
        Example.Criteria criteria = example.createCriteria();
        for (Map.Entry<String, Object> entry : query.entrySet()) {
            criteria.andLike(entry.getKey(), "%" + entry.getValue().toString() + "%");
        }
        example.setOrderByClause("sort asc");
        PageHelper.startPage(query.getPage(), query.getLimit());
        List<Market> list = mapper.selectByExample(example);
        return Result.success(new PageInfo<>(list));
    }
}
