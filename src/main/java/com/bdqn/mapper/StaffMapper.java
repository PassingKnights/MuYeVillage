package com.bdqn.mapper;

import com.bdqn.pojo.Staff;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface StaffMapper {
    int deleteByPrimaryKey(Integer stId);

    int insert(Staff record);

    int insertSelective(Staff record);

    Staff selectByPrimaryKey(Integer stId);

    int updateByPrimaryKeySelective(Staff record);

    int updateByPrimaryKey(Staff record);
    //查询所有员工
    List<Staff> selectAll(@Param("index")int index,@Param("limit")int limit);
}