package com.bdqn.Advde;

import com.bdqn.pojo.BrTourist;
import org.apache.log4j.Logger;
import org.springframework.aop.MethodBeforeAdvice;

import java.lang.reflect.Method;
import java.util.List;

//前置通知
public class Mybefor implements MethodBeforeAdvice {

    @Override
    public void before(Method method, Object[] objects, Object o) throws Throwable {
        Logger log = Logger.getLogger(Mybefor.class);
        //第一个参数，目标方法，第二参数 目标方法的对象，第三个参数，，，好像是代理对象
        System.out.println("-----------------1");
        String s = method.toString();
        //List<BrTourist> list = objects[1];
        System.out.println("-----------------2");
        System.out.println("-----------------3");
        System.out.println(s);
        System.out.println("-----------------4");
        String meth = getMeth(s);
        log.info(meth);
        System.out.println("-----------------5");
        System.out.println(meth);
    }

    //封装判断方法类是否有del  upd sel 等关键；
    public String getMeth(String method) {
        String booole;
        if (method.contains("del")) {
            booole = "删除";
        } else if (method.contains("sel")) {
            booole = "添加操作";
        } else if (method.contains("upd")) {
            booole = "更新操作";
        } else {
            booole = "其他操作";
        }
        return booole;
    }
}
