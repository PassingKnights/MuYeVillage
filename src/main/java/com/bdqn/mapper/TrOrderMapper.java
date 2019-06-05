package com.bdqn.mapper;

import com.bdqn.pojo.TrOrder;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface TrOrderMapper {
    int deleteByPrimaryKey(Integer orId);

    int insert(TrOrder record);

    int insertSelective(TrOrder record);

    TrOrder selectByPrimaryKey(Integer orId);

    int updateByPrimaryKeySelective(TrOrder record);

    int updateByPrimaryKey(TrOrder record);

    List<TrOrder> selectAll(@Param("index") Integer index, @Param("limit") Integer limit);
}