package com.bdqn.service.Impl;

import com.bdqn.mapper.StaffMapper;
import com.bdqn.pojo.Staff;
import com.bdqn.service.StaffService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class StaffServiceImpl implements StaffService {

    @Autowired
    private StaffMapper staffMapper;
    //根据id查询
    public Staff selectByPrimaryKey(Integer id){
        return staffMapper.selectByPrimaryKey(id);
    }

    //查所有，当cur=-1查所有。分页
    @Override
    public List<Staff> selectAll(int cur,int limit) {
        int index = (cur-1)*limit;
        List<Staff> list = staffMapper.selectAll(index, limit);
        return list;
    }

}
