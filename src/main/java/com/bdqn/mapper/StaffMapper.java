package com.bdqn.mapper;

import com.bdqn.pojo.Staff;

public interface StaffMapper {
    int deleteByPrimaryKey(Integer stId);

    int insert(Staff record);

    int insertSelective(Staff record);

    Staff selectByPrimaryKey(Integer stId);

    int updateByPrimaryKeySelective(Staff record);

    int updateByPrimaryKey(Staff record);
}