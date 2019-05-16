package com.bdqn.mapper;

import com.bdqn.pojo.Count;

public interface CountMapper {
    int deleteByPrimaryKey(Integer coId);

    int insert(Count record);

    int insertSelective(Count record);

    Count selectByPrimaryKey(Integer coId);

    int updateByPrimaryKeySelective(Count record);

    int updateByPrimaryKey(Count record);
}