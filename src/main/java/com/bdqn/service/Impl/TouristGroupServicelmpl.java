package com.bdqn.service.Impl;

import com.bdqn.mapper.TouristGroupMapper;
import com.bdqn.pojo.TouristGroup;
import com.bdqn.service.TouristGroupService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class TouristGroupServicelmpl implements TouristGroupService {
    @Autowired
    TouristGroupMapper touristGroupMapper;

    @Override
    public void deleteByPrimaryKey(Integer tgId) {
        touristGroupMapper.deleteByPrimaryKey(tgId);

    }

    @Override
    public void insert(TouristGroup record) {
        touristGroupMapper.insert(record);

    }

    @Override
    public void insertSelective(TouristGroup record) {
        touristGroupMapper.insertSelective(record);

    }

    @Override
    public TouristGroup selectByPrimaryKey(Integer tgId) {
        TouristGroup touristGroup = touristGroupMapper.selectByPrimaryKey(tgId);

        return touristGroup;
    }

    @Override
    public void updateByPrimaryKeySelective(TouristGroup record) {
        touristGroupMapper.updateByPrimaryKeySelective(record);

    }

    @Override
    public void updateByPrimaryKey(TouristGroup record) {
        touristGroupMapper.updateByPrimaryKey(record);

    }

    @Override
    public List<TouristGroup> selectAll() {
        List<TouristGroup> touristGroups = touristGroupMapper.selectAll();

        return touristGroups;
    }
}
