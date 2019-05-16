package com.bdqn.mapper;

import com.bdqn.pojo.BrTourist;

public interface BrTouristMapper {
    int deleteByPrimaryKey(Integer trId);

    int insert(BrTourist record);

    int insertSelective(BrTourist record);

    BrTourist selectByPrimaryKey(Integer trId);

    int updateByPrimaryKeySelective(BrTourist record);

    int updateByPrimaryKey(BrTourist record);
}