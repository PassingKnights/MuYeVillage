package com.bdqn.filter;

import com.bdqn.pojo.BrTourist;
import com.bdqn.pojo.Staff;

import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

//过滤器
@WebFilter("/AfterEnd/index.jsp")
public class Myfilter implements Filter {


    @Override
    public void init(FilterConfig filterConfig) throws ServletException {

    }

    @Override
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain) throws IOException, ServletException {
        HttpServletRequest req = (HttpServletRequest) servletRequest;
        HttpServletResponse resp = (HttpServletResponse) servletResponse;
        Staff staff = (Staff) req.getSession().getAttribute("staff");
        if(staff==null){
            resp.sendRedirect("/AfterEnd/html/login.jsp");
        }else{
            filterChain.doFilter(servletRequest,servletResponse);
        }
    }

    @Override
    public void destroy() {

    }
}
