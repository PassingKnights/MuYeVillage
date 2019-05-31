package com.bdqn.service;

import com.bdqn.pojo.Role;

import java.util.List;

public interface RoleService {
    //根据id查询一级二级菜单
    public Role selectById(Integer roId);
    //id查某个角色
    public Role selectRole(Integer roId);
    //查所有角色
    public List<Role> selectAll();
    //删除
    public void delete(Integer roId);
    //添加
    public void add(Role role);
    //删除某个角色某个菜单
    public void deleteByIdAndName(Integer roId,String name);
    //添加某个角色某个菜单
    public void addByIdAndName(Integer roId,String name);

}
