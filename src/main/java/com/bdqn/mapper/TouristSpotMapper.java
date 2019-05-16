package com.bdqn.mapper;

import com.bdqn.pojo.TouristSpot;

public interface TouristSpotMapper {
    int deleteByPrimaryKey(Integer spId);

    int insert(TouristSpot record);

    int insertSelective(TouristSpot record);

    TouristSpot selectByPrimaryKey(Integer spId);

    int updateByPrimaryKeySelective(TouristSpot record);

    int updateByPrimaryKey(TouristSpot record);
}