package com.bdqn.controller;

import com.alibaba.fastjson.JSON;
import com.bdqn.pojo.Muen;
import com.bdqn.service.Impl.MenuServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
@RequestMapping("/menu")
public class MenuController {
    @Autowired
    MenuServiceImpl menuService;

    @RequestMapping(value = "/selectAll",produces = "text/html;charset=utf-8")
    @ResponseBody
    public String selectAll(Integer page,Integer limit){
        List<Muen> list = menuService.selectAll(page,limit);

        String s = JSON.toJSONString(list);
        //System.out.println(s);

        String ss = "{\"code\":0,\"msg\":\"\",\"count\":"+list.size()+",\"data\":"+s+"}";
        return ss;
    }

    @RequestMapping("/delete")
    @ResponseBody
    public String delete(@RequestParam("muId")Integer muId){
        menuService.delete(muId);
        return "{\"result\":\"成功\"}";
    }
}
