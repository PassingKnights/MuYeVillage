package com.bdqn.service;

import com.bdqn.pojo.Staff;

import java.util.List;

public interface StaffService {
    //根据id查询
    public Staff selectByPrimaryKey(Integer id);

    //查所有，分页
    public List<Staff> selectAll(String stName,int cur,int limit);

    //查菜单
    public List<Staff> selectRole(Integer stId,Integer cur,Integer limit);
    //删除
    public void delete(Integer id);
    //添加
    public void add(Staff staff);
    //修改
    public void update(Staff staff);
    //删除角色
    public void deleteRole(Integer id,String roName);
    //添加角色
    public void addRole(Integer id,String roName);
    //登录
    public Staff login(String username,String password);
}
