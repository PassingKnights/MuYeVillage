package com.bdqn.service.Impl;

import com.bdqn.mapper.RoleMapper;
import com.bdqn.pojo.Role;
import com.bdqn.service.RoleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class RoleServiceImpl implements RoleService {
    @Autowired
    RoleMapper roleMapper;

    @Override
    public Role selectById(Integer roId) {
        return roleMapper.selectById(roId);
    }

    @Override
    public Role selectRole(Integer roId) {
        return roleMapper.selectByPrimaryKey(roId);
    }

    @Override
    public List<Role> selectAll() {
        return roleMapper.selectAll();
    }

    @Override
    public void delete(Integer roId) {
        roleMapper.deleteByPrimaryKey(roId);
    }

    @Override
    public void add(Role role) {
        roleMapper.insertSelective(role);
    }

    @Override
    public void deleteByIdAndName(Integer roId, String name) {
        roleMapper.delete(roId,name);
    }

    @Override
    public void addByIdAndName(Integer roId, String name) {
        roleMapper.add(roId,name);
    }
}
