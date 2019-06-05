package com.bdqn.service;

import com.bdqn.pojo.Muen;

import java.util.List;

public interface MenuService {
    public List<Muen> selectAll(Integer page,Integer limit);

    public void delete(Integer muId);
}
