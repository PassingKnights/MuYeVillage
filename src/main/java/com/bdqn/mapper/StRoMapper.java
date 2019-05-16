package com.bdqn.mapper;

import com.bdqn.pojo.StRo;

public interface StRoMapper {
    int deleteByPrimaryKey(Integer stRoId);

    int insert(StRo record);

    int insertSelective(StRo record);

    StRo selectByPrimaryKey(Integer stRoId);

    int updateByPrimaryKeySelective(StRo record);

    int updateByPrimaryKey(StRo record);
}