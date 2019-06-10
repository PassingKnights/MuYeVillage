package com.bdqn.mapper;

import com.bdqn.pojo.Group;

import java.util.List;

public interface GroupMapper {
    //查所有
    public List<Group> selectAll();
    //根据景点查
    public List<Group> selectBySpot();
}
