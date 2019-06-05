package com.bdqn.service.Impl;

import com.bdqn.mapper.MuenMapper;
import com.bdqn.pojo.Muen;
import com.bdqn.service.MenuService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class MenuServiceImpl implements MenuService {
    @Autowired
    MuenMapper menuMapper;

    @Override
    public List<Muen> selectAll(Integer page,Integer limit) {
        int index = (page-1)*limit;

        return menuMapper.selectAll(index,limit);
    }

    @Override
    public void delete(Integer muId) {
        menuMapper.deleteByPrimaryKey(muId);
    }
}
