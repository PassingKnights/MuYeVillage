package com.bdqn.service;

import com.bdqn.pojo.Staff;
import com.bdqn.pojo.TouristGroup;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface TouristGroupService {
    void deleteByPrimaryKey(Integer tgId);

    void insert(TouristGroup record);

    void insertSelective(TouristGroup record);

    TouristGroup selectByPrimaryKey(Integer tgId);

    void updateByPrimaryKeySelective(TouristGroup record);

    void updateByPrimaryKey(TouristGroup record);

    List<TouristGroup> selectAll();
}
