package com.bdqn.mapper;

import com.bdqn.pojo.Role;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface RoleMapper {
    int deleteByPrimaryKey(Integer roId);

    int insert(Role record);

    int insertSelective(Role record);

    Role selectByPrimaryKey(Integer roId);

    int updateByPrimaryKeySelective(Role record);

    int updateByPrimaryKey(Role record);

    //查询根据id
    Role selectById(Integer roId);
    //查所有
    List<Role> selectAll();
    //删除菜单
    void delete(@Param("roId") Integer roId, @Param("name") String name);
    //添加某个角色的某个菜单
    void add(@Param("roId") Integer roId, @Param("name") String name);
}