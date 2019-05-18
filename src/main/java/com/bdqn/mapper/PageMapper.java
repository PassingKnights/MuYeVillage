package com.bdqn.mapper;

import com.bdqn.pojo.BrTourist;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import java.util.List;

//分页
public interface PageMapper {
    //分页查询
    @Select("SELECT * FROM br_tourist LIMIT  #{starts},#{pages}")
        List<BrTourist> selImit (@Param("starts") Integer starts,@Param("pages") Integer pages);
}
