package com.bdqn.controller;

import com.alibaba.fastjson.JSON;
import com.bdqn.AjaxResult.Msg;
import com.bdqn.mapper.PageMapper;
import com.bdqn.pojo.BrTourist;
import com.bdqn.service.brTouristService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import java.util.List;

@Controller
@RequestMapping("/br")
public class brTouristController {

    @Resource
    private brTouristService brTouristServiceImpl;

    @Resource
    private PageMapper pageMapper;

    @RequestMapping(value="/page",produces = "application/json;charset=utf-8")
    @ResponseBody
    public String pall(Integer page, Integer limit) {
        List<BrTourist> list = brTouristServiceImpl.list();
        int i = list.size();
        System.out.println(i);
        List<BrTourist> br = pageMapper.selImit(page, limit);
        String s1 = JSON.toJSONString(br);
        String s = "{\"code\":0,\"msg\":\"\",\"count\":" + i + ",\"data\":" + s1 + "}";
        return s;
    }

    //分页查询
    @ResponseBody
    @RequestMapping("/page/{pn}")
    public List<BrTourist> pageSel(@PathVariable("pn") Integer pn) {
        //pn当前页-1 * 每页大小,每页大小
        List<BrTourist> br = pageMapper.selImit((pn - 1) * 5, 5);
        System.out.println(br);
        return br;
    }
}
