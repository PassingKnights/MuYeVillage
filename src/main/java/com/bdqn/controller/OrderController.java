package com.bdqn.controller;

import com.alibaba.fastjson.JSON;
import com.bdqn.pojo.BrTourist;
import com.bdqn.pojo.Group;
import com.bdqn.pojo.TrOrder;
import com.bdqn.service.Impl.OrderServiceImpl;
import com.bdqn.util.OrderMessage;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
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
        String ss = "{\"code\":0,\"msg\":\"\",\"count\":"+list.size()+",\"data\":"+s+"}";
        return ss;
    }

    //查某个人的订单
    @RequestMapping(value = "/selectByTrId",produces = "text/html;charset=utf-8")
    @ResponseBody
    public String selectByTrId(HttpSession session){
        BrTourist user = (BrTourist)session.getAttribute("user");
        List<TrOrder> list = orderService.selectById(user.getTrId());
        List<OrderMessage> orderMessageList = new ArrayList<>();
        for (TrOrder order : list) {
            OrderMessage orderMessage = new OrderMessage(order);
            orderMessageList.add(orderMessage);
        }
        String s = JSON.toJSONString(orderMessageList);
        String ss = "{\"code\":0,\"msg\":\"\",\"count\":"+list.size()+",\"data\":"+s+"}";
        return ss;
    }
    //立即预定点击后，查出团信息跳转到个人订单信息
    @RequestMapping("/toOrderInfo")
    public String toOrderInfo(Integer tgId,Integer orId, HttpSession session){
        if (tgId!=null){
            Group group = orderService.selectByTgId(tgId);
            session.setAttribute("group",group);
        }
        if (orId!=null){
            TrOrder order = orderService.selectByOrId(orId);
            session.setAttribute("order",order);
            session.setAttribute("group",order.getGroup());
        }else {
            session.setAttribute("order",null);
        }

//        BrTourist user = new BrTourist();
//        user.setTrId(2);
//        user.setTrName("李白");
//        user.setTrPhone("134635838495");
//        user.setTrSex("男");
//        session.setAttribute("user",user);

        return "../FrontEnd/OrderInfo.jsp";
    }

    //预定订单
    @RequestMapping("/ordering")
    public String ordering(HttpSession session){
        BrTourist user = (BrTourist)session.getAttribute("user");
        Group group = (Group)session.getAttribute("group");
        Date today = new Date();
        SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
        String date = format.format(today);

        orderService.add(user.getTrId(),group.getTgId(),date);
        return "../FrontEnd/Order.jsp";
    }

    //取消订单
    @RequestMapping("/cancel")
    public String cancel(HttpSession session){
        TrOrder order = (TrOrder)session.getAttribute("order");
        order.setOrBoolean("已退订");
        orderService.update(order);
        return "../FrontEnd/Order.jsp";
    }

    //主页订单显示
    @RequestMapping("/toHome")
    public String toHome(HttpSession session){
        List<TrOrder> orders = orderService.selectAll(1, 7);
        List<OrderMessage> list = new ArrayList<>();
        for (TrOrder order : orders) {
            OrderMessage om = new OrderMessage(order);
            list.add(om);
        }
        session.setAttribute("orderList",list);
        return "redirect:/AfterEnd/index.jsp";
    }

    @RequestMapping("/mytest")
    public String mytest(){

        return "/index.jsp";
    }
}
