package com.bdqn.mapper;

import com.bdqn.pojo.BrTourist;
import org.apache.ibatis.annotations.Select;

import java.util.List;

public interface BrTouristMapper {
    int deleteByPrimaryKey(Integer trId);

    int insert(BrTourist record);

    int insertSelective(BrTourist record);

    BrTourist selectByPrimaryKey(Integer trId);

    int updateByPrimaryKeySelective(BrTourist record);

    int updateByPrimaryKey(BrTourist record);

    //游客全查询接口 使用注解操作
    @Select("select * from br_tourist")
    List<BrTourist> SelAll ();

}