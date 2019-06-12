package com.bdqn.mapper;

import com.bdqn.pojo.BrTourist;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

import java.util.List;


public interface BrTouristMapper {
    int deleteByPrimaryKey(Integer trId);

    int insert(BrTourist record);

    //@Insert("INSERT INTO br_tourist(tr_email,tr_password,tr_name,tr_sex,tr_time,tr_phone) VALUES ('#{trEmail}','#{trPassword}','#{trName}','#{trSex}','#{trTime}','#{trPhone}'))")
    int insertSelective(BrTourist record);

    BrTourist selectByPrimaryKey(Integer trId);

    int updateByPrimaryKeySelective(BrTourist record);

    int updateByPrimaryKey(BrTourist record);

    //游客全查询接口 使用注解操作
    @Select("select * from br_tourist")
    List<BrTourist> SelAll();

    @Select("SELECT * FROM br_tourist WHERE tr_email=#{trEmail}")
    BrTourist selectEmail(@Param("trEmail") String trEmail);

}