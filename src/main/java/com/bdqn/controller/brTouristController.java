package com.bdqn.controller;

import com.alibaba.fastjson.JSON;
import com.bdqn.AjaxResult.Msg;
import com.bdqn.mapper.PageMapper;
import com.bdqn.pojo.BrTourist;
import com.bdqn.service.brTouristService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
@RequestMapping("/br")
public class BrTouristController {

    @Resource
    private brTouristService brTouristServiceImpl;

    @Resource
    private PageMapper pageMapper;

    @RequestMapping(value = "/page")
    @ResponseBody
    public String pall(Integer page, Integer limit) {
        System.out.println("进来了");
        List<BrTourist> list = brTouristServiceImpl.list2();
        int i = list.size();
        //sql语句运算
        Integer pags = (page - 1) * limit;
        List<BrTourist> br = pageMapper.selImit(pags, limit);
        String s1 = JSON.toJSONString(br);
        String s = "{\"code\":0,\"msg\":\"\",\"count\":" + i + ",\"data\":" + s1 + "}";
        return s;
    }

    //删除用户
    @RequestMapping("/delet/{key}")
    @ResponseBody
    public Msg delBr(@PathVariable("key") Integer key) {
        int i = brTouristServiceImpl.delBr(key);
        if (i > 0) {
            return Msg.success();
        } else {
            return Msg.fail();
        }
    }

    //游客登入
    @RequestMapping("/login")
    public String login(BrTourist brTourist, HttpSession session) {
        List<BrTourist> login = brTouristServiceImpl.login(brTourist);
        if (login.size() == 1) {
            session.setAttribute("bruser", login);
            System.out.println("有这个人");
            return "/luyiList.jsp";
        } else {
            System.out.println("没有这个人");
            return "/redirect:logintest.jsp";
        }
    }

    //用户添加
    @RequestMapping("/AddUser")
    @ResponseBody
    public Msg adduser(BrTourist brTourist) {
        int i = brTouristServiceImpl.addBrTourist(brTourist);
        if (i > 0) {
            return Msg.success();
        } else {
            return Msg.fail();
        }
    }


    @RequestMapping("/upde")
    @ResponseBody
    public Msg updeuser(BrTourist brTourist) {
        System.out.println(brTourist);
        int i = brTouristServiceImpl.updBrtourist(brTourist);
        System.out.println(i);
        if (i > 0) {
            return Msg.success();
        } else {
            return Msg.success();
        }
    }
    @RequestMapping(value = "/sellike", produces = "application/json;charset=utf-8")
    @ResponseBody
    public String SelLike(String name, Integer page, Integer limit) {
        List<BrTourist> list = brTouristServiceImpl.sellimiByname(name);
        int i = list.size();
        Integer pags = (page - 1) * limit;
        List<BrTourist> like = brTouristServiceImpl.selLike(name, pags, limit);
        String s1 = JSON.toJSONString(like);
        String s = "{\"code\":0,\"msg\":\"\",\"count\":" + i + ",\"data\":" + s1 + "}";
        if (like.size() > 0) {
            return s;
        } else {
            return s;
        }
    }
}
