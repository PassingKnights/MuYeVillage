package com.bdqn.service.Impl;

import com.bdqn.mapper.BrTouristMapper;
import com.bdqn.pojo.BrTourist;
import com.bdqn.service.brTouristService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

//游客的实现类操作
@Service
public class brTouristServiceImpl implements brTouristService {

    @Resource
    BrTouristMapper brTouristMapper;

    @Override
    public List<BrTourist> list() {
        System.out.println("test");
        return brTouristMapper.SelAll();
    }
}
