package com.bdqn.mapper;

import com.bdqn.pojo.Staff;
import com.bdqn.pojo.TouristGroup;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface TouristGroupMapper {
    int deleteByPrimaryKey(Integer tgId);

    int insert(TouristGroup record);

    int insertSelective(TouristGroup record);

    TouristGroup selectByPrimaryKey(Integer tgId);

    int updateByPrimaryKeySelective(TouristGroup record);

    int updateByPrimaryKey(TouristGroup record);

    List<TouristGroup> selectAll();
}