package com.bdqn.mapper;

import com.bdqn.pojo.TrOrder;

public interface TrOrderMapper {
    int deleteByPrimaryKey(Integer orId);

    int insert(TrOrder record);

    int insertSelective(TrOrder record);

    TrOrder selectByPrimaryKey(Integer orId);

    int updateByPrimaryKeySelective(TrOrder record);

    int updateByPrimaryKey(TrOrder record);
}