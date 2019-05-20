package com.bdqn.controller;

import com.alibaba.fastjson.JSON;
import com.bdqn.pojo.Staff;
import com.bdqn.service.Impl.StaffServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
@RequestMapping("/staff")
public class StaffController {
    @Autowired
    private StaffServiceImpl staffService;

    @RequestMapping("/show")
    public String show(){
        Staff staff = staffService.selectByPrimaryKey(1);
        String s = JSON.toJSONString(staff);
        System.out.println(s);
        return "index.jsp";
    }

    //显示，分页
    @RequestMapping(value = "/paging",produces = "text/html;charset=utf-8")
    @ResponseBody
    public String paging(int page,int limit){
        List<Staff> staff = staffService.selectAll(page, limit);
        String s = JSON.toJSONString(staff);
        System.out.println(s);

        int count = staffService.selectAll(-1, -1).size();
        String ss = "{\"code\":0,\"msg\":\"\",\"count\":"+count+",\"data\":"+s+"}";
        System.out.println(ss);
        return ss;
    }
    //删除
    @RequestMapping("delete")
    @ResponseBody
    public String delete(@RequestParam("stId") Integer stId){
        staffService.delete(stId);
        return null;
    }

    //添加
    @RequestMapping("add")
    @ResponseBody
    public String add(@RequestParam("staff") Staff staff){
        staffService.add(staff);
        return null;
    }
    //编辑
    @RequestMapping("edit")
    @ResponseBody
    public String edit(@RequestParam("staff") Staff staff){
        staffService.update(staff);
        return null;
    }




    @RequestMapping("/menus")
    @ResponseBody
    public String getMenus(){
        List<Staff> list = staffService.selectRole();
        String s = JSON.toJSONString(list);
        System.out.println(s);
        String ss = "{\"code\":0,\"msg\":\"\",\"count\":"+list.size()+",\"data\":"+s+"}";
        return ss;
    }



}
