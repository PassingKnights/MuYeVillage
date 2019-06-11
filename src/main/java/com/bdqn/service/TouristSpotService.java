package com.bdqn.service;

import com.bdqn.pojo.TouristSpot;

import java.util.List;

public interface TouristSpotService {

    //通过id删除
    int deleteByPrimaryKey(Integer spId);

    //添加
    int insert(TouristSpot record);

    int insertSelective(TouristSpot record);

    TouristSpot selectByPrimaryKey(Integer spId);

    int updateByPrimaryKeySelective(TouristSpot record);

    int updateByPrimaryKey(TouristSpot record);

    //全查询 分页
    List<TouristSpot> selectSpot(int cur, int limit);
}
