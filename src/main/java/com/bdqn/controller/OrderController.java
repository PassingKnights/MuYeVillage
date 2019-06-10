package com.bdqn.controller;

import com.alibaba.fastjson.JSON;
import com.bdqn.pojo.Group;
import com.bdqn.pojo.TrOrder;
import com.bdqn.service.Impl.OrderServiceImpl;
import com.bdqn.util.OrderMessage;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping("/order")
public class OrderController {
    @Autowired
    OrderServiceImpl orderService;
    @RequestMapping(value = "/selectAll",produces = "text/html;charset=utf-8")
    @ResponseBody
    public String selectAll(Integer page,Integer limit){
        List<TrOrder> orders = orderService.selectAll(page,limit);
        List<OrderMessage> list = new ArrayList<>();
        for (TrOrder order : orders) {
            OrderMessage om = new OrderMessage(order);
            list.add(om);
        }
        String s = JSON.toJSONString(list);
        System.out.println(s);
        String ss = "{\"code\":0,\"msg\":\"\",\"count\":"+list.size()+",\"data\":"+s+"}";
        return ss;
    }

    //查某个人的订单
    @RequestMapping(value = "/selectByTrId",produces = "text/html;charset=utf-8")
    @ResponseBody
    public String selectByTrId(Integer trId){
        List<TrOrder> list = orderService.selectById(trId);
        String s = JSON.toJSONString(list);
        System.out.println(s);
        String ss = "{\"code\":0,\"msg\":\"\",\"count\":"+list.size()+",\"data\":"+s+"}";
        return ss;
    }
}
