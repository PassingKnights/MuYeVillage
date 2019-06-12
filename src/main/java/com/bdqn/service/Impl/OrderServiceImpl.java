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

    //查某个单
    public TrOrder selectByOrId(Integer orId){
        return orderMapper.selectByPrimaryKey(orId);
    }

    //查某个人的订单
    public List<TrOrder> selectById(Integer id){
        return orderMapper.selectByTrid(id);
    }

    //根据id查某个团
    public Group selectByTgId(Integer id){
        return groupMapper.selectById(id);
    }

    //预定订单
    public int add(Integer trId,Integer tgId,String date){
        return orderMapper.add(trId,tgId,date);

    }
    //删除订单
    public void delete(Integer orId){
        orderMapper.deleteByPrimaryKey(orId);
    }
    //修改
    public void update(TrOrder order){
        orderMapper.updateByPrimaryKeySelective(order);

    }
}
