package com.bdqn.service;


import com.bdqn.pojo.BrTourist;
import org.apache.ibatis.annotations.Param;

import java.util.List;

//游客的业务类操作
public interface brTouristService {

    //游客全查询
    List<BrTourist> list2();

    //游客删除
    int delBr(Integer key);

    //游客登入
    List<BrTourist> login(BrTourist brTourist);

    //游客的增加
    int addBrTourist(BrTourist brTourist);

    //游客更新
    int updBrtourist(BrTourist brTourist);

    //游客模糊查询
    List<BrTourist> selLike(String name, Integer page, Integer pagesize);

    List<BrTourist> sellimiByname(String name);



    //游客全查询
    List<BrTourist> list();

    //游客注册
    int insertSelective(BrTourist brTourist);

    //根据邮箱查询
    BrTourist selectEmail(@Param("trEmail") String trEmail);
}
