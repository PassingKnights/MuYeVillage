package com.bdqn.service;

import com.bdqn.pojo.Staff;

import java.util.List;

public interface StaffService {
    //根据id查询
    public Staff selectByPrimaryKey(Integer id);

    //查所有，分页
    public List<Staff> selectAll(int cur,int limit);
}
