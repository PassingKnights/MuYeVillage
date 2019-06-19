package com.bdqn.mapper;

import com.bdqn.pojo.BrTourist;
import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import java.util.List;

public interface BrTouristMapper {
    int deleteByPrimaryKey(Integer trId);

    int insert(BrTourist record);

    //用户添加
    int insertSelective(BrTourist record);

    BrTourist selectByPrimaryKey(Integer trId);

    int updateByPrimaryKeySelective(BrTourist record);

    int updateByPrimaryKey(BrTourist record);

    

    //游客全查询接口 使用注解操作
    @Select("select * from br_tourist order by tr_id desc")
    List<BrTourist> SelAllTo();

    //游客登入
    @Select("select * from  br_tourist where #{trName}=tr_name AND #{trPassword}=tr_password ")
    List<BrTourist> SelSimple(BrTourist brTourist);

    @Delete("delete from  br_tourist where  #{trId}=tr_id")
    Integer deletByBrTourist(BrTourist brTourist);

    //模糊查询
    @Select("select * from br_tourist  where tr_name like '%${name}%' limit #{page},#{pagesize} ")
    List<BrTourist> selLike(@Param("name") String name, @Param("page") Integer page, @Param("pagesize") Integer pagesize);

    @Select("select * from br_tourist  where tr_name like '%${name}%' ")
    List<BrTourist> sellimiByname(@Param("name") String name);

    //游客全查询接口 使用注解操作
    @Select("select * from br_tourist")
    List<BrTourist> SelAll();

    @Select("SELECT * FROM br_tourist WHERE tr_email=#{trEmail}")
    BrTourist selectEmail(@Param("trEmail") String trEmail);


}