package com.bdqn.service.Impl;


import com.bdqn.mapper.TouristSpotMapper;
import com.bdqn.pojo.TouristSpot;
import com.bdqn.service.TouristSpotService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class TouristSpotServiceImp implements TouristSpotService {

    @Resource
    TouristSpotMapper touristSpotMapper;

    //通过id删除
    @Override
    public int deleteByPrimaryKey(Integer spId) {
        touristSpotMapper.deleteByPrimaryKey(spId);
        return 0;
    }

    //添加
    @Override
    public int insert(TouristSpot record) {
        touristSpotMapper.insert(record);
        return 0;
    }

    @Override
    public int insertSelective(TouristSpot record) {
        return 0;
    }

    @Override
    public TouristSpot selectByPrimaryKey(Integer spId) {
        return null;
    }

    @Override
    public int updateByPrimaryKeySelective(TouristSpot record) {
        return 0;
    }

    @Override
    public int updateByPrimaryKey(TouristSpot record) {
        return 0;
    }


    //全查询 当cur=-1查所有。分页
    @Override
    public List<TouristSpot> selectSpot(int cur, int limit) {
        int index=(cur-1)*limit;
        List<TouristSpot> list = touristSpotMapper.selectSpot(index,limit);
        return list;
    }

}
