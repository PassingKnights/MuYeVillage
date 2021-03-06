package com.bdqn.mapper;

import com.bdqn.pojo.TouristSpot;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface TouristSpotMapper {
    //删除
    int deleteByPrimaryKey(Integer spId);

    //添加
    int insert(TouristSpot record);

    int insertSelective(TouristSpot record);

    TouristSpot selectByPrimaryKey(Integer spId);

    int updateByPrimaryKeySelective(TouristSpot record);

    int updateByPrimaryKey(TouristSpot record);

    //全查询 以及分页
    List<TouristSpot> selectSpot(@Param("index") int index, @Param("limit") int limit);


}