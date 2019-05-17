package com.bdqn.controller;

import com.bdqn.AjaxResult.Msg;
import com.bdqn.mapper.BrTouristMapper;
import com.bdqn.pojo.BrTourist;
import com.bdqn.service.brTouristService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import java.util.List;

@Controller
@RequestMapping("br")
public class brTouristController {

    @Resource
    private brTouristService brTouristServiceImpl;

    @RequestMapping("/index")
    @ResponseBody
    public Msg selall(Model model){
        List<BrTourist> list = brTouristServiceImpl.list();
        return  Msg.success().add("msg",list);
    }
}
