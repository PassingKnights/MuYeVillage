package com.bdqn.mapper;

import com.bdqn.pojo.Guide;

public interface GuideMapper {
    int deleteByPrimaryKey(Integer guId);

    int insert(Guide record);

    int insertSelective(Guide record);

    Guide selectByPrimaryKey(Integer guId);

    int updateByPrimaryKeySelective(Guide record);

    int updateByPrimaryKey(Guide record);
}