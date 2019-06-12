package com.bdqn.service;


import com.bdqn.pojo.BrTourist;
import org.apache.ibatis.annotations.Param;

import java.util.List;

//游客的业务类操作
public interface brTouristService {

    //游客全查询
    List<BrTourist> list();

    //游客注册
    int insertSelective(BrTourist brTourist);

    //根据邮箱查询

    BrTourist selectEmail(@Param("trEmail") String trEmail);
}
