package com.bdqn.controller;


import com.alibaba.fastjson.JSON;
import com.bdqn.pojo.Staff;
import com.bdqn.pojo.TouristGroup;
import com.bdqn.service.Impl.TouristGroupServicelmpl;
import com.bdqn.service.TouristGroupService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
@RequestMapping("/tourisGroup")
public class TourisGroupColltroller {
    @Autowired
    private  TouristGroupServicelmpl touristGroupServicelmpl;


    @RequestMapping(value = "/paging",produces = "text/html;charset=utf-8")
    @ResponseBody
    public String paging() {
        List<TouristGroup> touristGroups = touristGroupServicelmpl.selectAll();
        String s = JSON.toJSONString(touristGroups);
        System.out.println(s);
        return s;
    }
    //删除
    @RequestMapping("/delete")
    public void delete( Integer tgId){
        System.out.println(tgId);
        touristGroupServicelmpl.deleteByPrimaryKey(tgId);
    }

    //添加
    @RequestMapping("/add")
    @ResponseBody
    public String add(TouristGroup touristGroup){
        touristGroupServicelmpl.insert(touristGroup);
        return null;
    }
    //编辑
    @RequestMapping("/edit")
    @ResponseBody
    public String edit(@RequestParam("staff") TouristGroup touristGroup){
        touristGroupServicelmpl.updateByPrimaryKey(touristGroup);
        return null;
    }




}
