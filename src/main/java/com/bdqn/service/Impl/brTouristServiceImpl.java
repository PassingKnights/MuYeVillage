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

    private BrTourist brTourist;

    @Override
    public List<BrTourist> list() {
        List<BrTourist> brTourists = brTouristMapper.SelAll();
        return brTourists;
    }

    @Override
    public int delBr(Integer key) {
        brTourist = new BrTourist();
        int i = brTouristMapper.deleteByPrimaryKey(key);
        return i;
    }

    @Override
    public List<BrTourist> login(BrTourist brTourist) {
        List<BrTourist> brTourists = brTouristMapper.SelSimple(brTourist);
        return brTourists;
    }

    @Override
    public int addBrTourist(BrTourist brTourist) {
        return brTouristMapper.insertSelective(brTourist);
    }

    @Override
    public int updBrtourist(BrTourist brTourist) {
        return brTouristMapper.updateByPrimaryKeySelective(brTourist);
    }

    @Override
    public List<BrTourist> selLike(String name,Integer page,Integer pagesize) {
        return brTouristMapper.selLike(name,page,pagesize);
    }


    @Override
    public List<BrTourist> sellimiByname(String name) {
        return brTouristMapper.sellimiByname(name);
    }
}
