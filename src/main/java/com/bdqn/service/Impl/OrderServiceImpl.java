package com.bdqn.service.Impl;

import com.bdqn.mapper.GroupMapper;
import com.bdqn.mapper.TrOrderMapper;
import com.bdqn.pojo.Group;
import com.bdqn.pojo.TrOrder;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class OrderServiceImpl {
    @Autowired
    GroupMapper groupMapper;
    @Autowired
    TrOrderMapper orderMapper;

    public List<TrOrder> selectAll(Integer page, Integer limit){
        int index = (page-1)*limit;
        return orderMapper.selectAll(index,limit);
    }

    public List<TrOrder> selectById(Integer id){
        return orderMapper.selectByTrid(id);
    }


}
