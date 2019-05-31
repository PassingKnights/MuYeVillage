package com.bdqn.mapper;

import com.bdqn.pojo.Staff;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface StaffMapper {
    int deleteByPrimaryKey(Integer stId);//删除根据id

    int insert(Staff record);

    int insertSelective(Staff record);

    Staff selectByPrimaryKey(Integer stId);

    int updateByPrimaryKeySelective(Staff record);

    int updateByPrimaryKey(Staff record);
    //查询所有员工
    List<Staff> selectAll(@Param("stName")String stName,@Param("index")int index,@Param("limit")int limit);
    //查角色
    List<Staff> selectRole(@Param("stId")Integer stId,@Param("index")Integer index,@Param("limit")Integer limit);
    //删除角色
    void deleteRole(@Param("stId")Integer stId,@Param("roName")String roName);
    //添加角色
    void addRole(@Param("stId")Integer stId,@Param("roName")String roName);
}