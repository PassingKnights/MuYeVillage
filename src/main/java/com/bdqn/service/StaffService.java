package com.bdqn.service;

import com.bdqn.pojo.Staff;

public interface StaffService {
    //根据id查询
    public Staff selectByPrimaryKey(Integer id);
}
