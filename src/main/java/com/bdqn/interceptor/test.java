package com.bdqn.interceptor;

import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class test implements HandlerInterceptor {

    //在进入控制器之前执行
    //如果返回false，阻止进入控制器，用户登入
    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
            throws Exception {
        //Object handler 控制器的方法名名字
        System.out.println("handler"+handler);
        System.out.println("preHandle");
        return true;
    }
    //在进入jsp之前,执行此方法
    //敏感词过滤 日志记录
    @Override
    public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
                           ModelAndView modelAndView) throws Exception {
    }
    //在进入jsp之后,执行此方法
    //异常收集 可以把异常打印到输出日志
    @Override
    public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex)
            throws Exception {
        System.out.println(ex.getMessage());
    }
}
