package com.bdqn.service;

import com.bdqn.pojo.TouristGroup;

public interface TouristGroupService {
    void deleteByPrimaryKey(Integer tgId);

    void insert(TouristGroup record);

    void insertSelective(TouristGroup record);

    TouristGroup selectByPrimaryKey(Integer tgId);

    void updateByPrimaryKeySelective(TouristGroup record);

    void updateByPrimaryKey(TouristGroup record);
}
