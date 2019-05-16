package com.bdqn.mapper;

import com.bdqn.pojo.Muen;

public interface MuenMapper {
    int deleteByPrimaryKey(Integer muId);

    int insert(Muen record);

    int insertSelective(Muen record);

    Muen selectByPrimaryKey(Integer muId);

    int updateByPrimaryKeySelective(Muen record);

    int updateByPrimaryKey(Muen record);
}