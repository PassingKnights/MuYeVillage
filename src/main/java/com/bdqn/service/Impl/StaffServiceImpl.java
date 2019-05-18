package com.bdqn.service.Impl;

import com.bdqn.mapper.StaffMapper;
import com.bdqn.pojo.Staff;
import com.bdqn.service.StaffService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class StaffServiceImpl implements StaffService {

    @Autowired
    private StaffMapper staffMapper;

    public Staff selectByPrimaryKey(Integer id){
        return staffMapper.selectByPrimaryKey(id);
    }
}
