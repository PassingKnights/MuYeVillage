package com.bdqn.mapper;

import com.bdqn.pojo.Muen;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface MuenMapper {
    int deleteByPrimaryKey(Integer muId);

    int insert(Muen record);

    int insertSelective(Muen record);

    Muen selectByPrimaryKey(Integer muId);

    int updateByPrimaryKeySelective(Muen record);

    int updateByPrimaryKey(Muen record);
    //查所有
    List<Muen> selectAll(@Param("index")Integer index,@Param("limit")Integer limit);

}