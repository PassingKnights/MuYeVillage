package com.bdqn.controller;

import com.bdqn.pojo.BrTourist;
import com.bdqn.service.brTouristService;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
@RequestMapping("/user")
public class registerController {

    @Resource
    private brTouristService brTouristServiceImpl;

    @RequestMapping(value = "/register")
    @ResponseBody
    public String testParam(@Param("brTourist") BrTourist brTourist) {
        System.out.println(brTourist);
        List<BrTourist> list = brTouristServiceImpl.list();

        for (BrTourist brTourist1 : list) {
            if ((brTourist1.getTrEmail().equals(brTourist.getTrEmail()))) {
                System.out.println("该邮箱已被注册！");
                return "失败";
            }
        }
        brTouristServiceImpl.insertSelective(brTourist);
        return "成功";
    }

    @RequestMapping(value = "/login",produces = "text/html;charset=UTF-8")
    @ResponseBody
    public String login(HttpSession session, String trEmail, String trPassword) {

            List<BrTourist> list = brTouristServiceImpl.list();

            for (BrTourist brTourist : list) {
                if ((trEmail.equals(brTourist.getTrEmail()))&&(trPassword.equals(brTourist.getTrPassword()))) {
                    System.out.println("成功");
                    BrTourist loginTourist = brTouristServiceImpl.selectEmail(trEmail);
                    session.setAttribute("user",loginTourist);
                    return "{\"result\":\"成功\"}";
                }
        }
        return "{\"result\":\"失败\"}";
    }
}

