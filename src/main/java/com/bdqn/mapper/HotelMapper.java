package com.bdqn.mapper;

import com.bdqn.pojo.Hotel;

public interface HotelMapper {
    int deleteByPrimaryKey(Integer hId);

    int insert(Hotel record);

    int insertSelective(Hotel record);

    Hotel selectByPrimaryKey(Integer hId);

    int updateByPrimaryKeySelective(Hotel record);

    int updateByPrimaryKey(Hotel record);
}