package com.bdqn.mapper;

import com.bdqn.pojo.TouristGroup;

public interface TouristGroupMapper {
    int deleteByPrimaryKey(Integer tgId);

    int insert(TouristGroup record);

    int insertSelective(TouristGroup record);

    TouristGroup selectByPrimaryKey(Integer tgId);

    int updateByPrimaryKeySelective(TouristGroup record);

    int updateByPrimaryKey(TouristGroup record);
}