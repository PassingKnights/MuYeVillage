package com.bdqn.controller;

import com.alibaba.fastjson.JSON;
import com.bdqn.pojo.TouristSpot;
import com.bdqn.service.Impl.TouristSpotServiceImp;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
@RequestMapping("/trorder")
public class SpotController {

    @Autowired
    TouristSpotServiceImp SpotServiceImp;


    //全查询 以及分页
    @RequestMapping(value = "/paging",produces ="text/html;charset=utf-8" )
    @ResponseBody
    public String showSpot(int page,int limit){
        List<TouristSpot> spots=SpotServiceImp.selectSpot(page, limit);
        String s=JSON.toJSONString(spots);

        int count = SpotServiceImp.selectSpot(-1,-1).size();

        String ss = "{\"code\":0,\"msg\":\"\",\"count\":"+count+",\"data\":"+s+"}";
        return ss;
    }

    //通过id 删除
    @RequestMapping("/deltrorder")
    @ResponseBody
    public String deltrorder(@RequestParam("spId")Integer spId){
        SpotServiceImp.deleteByPrimaryKey(spId);
        return "{\"result\":\"成功\"}";
    }

    //增加
    @RequestMapping("/add")
    @ResponseBody
    public String add(TouristSpot touristSpot){
        SpotServiceImp.insert(touristSpot);
        return null;
    }


}
