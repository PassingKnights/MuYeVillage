package com.bdqn.mapper;

import com.bdqn.pojo.Power;

public interface PowerMapper {
    int deleteByPrimaryKey(Integer pwId);

    int insert(Power record);

    int insertSelective(Power record);

    Power selectByPrimaryKey(Integer pwId);

    int updateByPrimaryKeySelective(Power record);

    int updateByPrimaryKey(Power record);
}