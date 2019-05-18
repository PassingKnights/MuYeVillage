package com.bdqn.controller;

import com.alibaba.fastjson.JSON;
import com.bdqn.pojo.Staff;
import com.bdqn.service.Impl.StaffServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
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

}
