package com.bdqn.service.Impl;

import com.bdqn.mapper.BrTouristMapper;
import com.bdqn.pojo.BrTourist;
import com.bdqn.service.brTouristService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

//游客的实现类操作
@Service
public class brTouristServiceImpl implements brTouristService {

    @Resource
    @Autowired
    BrTouristMapper brTouristMapper;

    @Override
    public List<BrTourist> list() {
        System.out.println("test");
        return brTouristMapper.SelAll();
    }

    @Override
    public int insertSelective(BrTourist brTourist) {
        return brTouristMapper.insertSelective(brTourist);
    }

    @Override
    public BrTourist selectEmail(String trEmail) {
        return brTouristMapper.selectEmail(trEmail);
    }
}
