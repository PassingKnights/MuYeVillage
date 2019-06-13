package com.bdqn.util;

//解决controller返回中文乱码问题。没成功。。。。

import org.springframework.beans.BeansException;
import org.springframework.beans.factory.config.BeanPostProcessor;
import org.springframework.http.MediaType;
import org.springframework.http.converter.StringHttpMessageConverter;

import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.List;

public class TestBeanPostProcessor implements BeanPostProcessor {
    public Object postProcessAfterInitialization(Object bean,String beanName) throws BeansException{
        System.out.println("进入111");
        if (bean instanceof StringHttpMessageConverter){
            MediaType mediaType = new MediaType("text","plain", Charset.forName("UTF-8"));
            List<MediaType> types = new ArrayList<>();
            types.add(mediaType);
            ((StringHttpMessageConverter)bean).setSupportedMediaTypes(types);
        }
        return bean;
    }
}
