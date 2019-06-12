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
    //查某个人的订单
    List<TrOrder> selectByTrid(@Param("trId")Integer trId);
    //预定订单
    int add(@Param("trId")Integer trId,@Param("tgId")Integer tgId,@Param("date")String date);
}