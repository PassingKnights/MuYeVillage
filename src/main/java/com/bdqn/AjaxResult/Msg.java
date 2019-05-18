package com.bdqn.AjaxResult;

import java.util.ArrayList;
import java.util.List;

//通用的返回类
public class Msg {

    //状态码 100成功 200失败
    private int code;

    //提示信息
    private String msg;

    private Integer count;

    //用户返回给浏览器的数据
    private List<Object> data = new ArrayList<>();

    //代表成功
    public static Msg success(Integer count) {
        Msg result = new Msg();
        result.setCode(0);
        result.setCount(count);
        result.setMsg("处理成功");
        return result;
    }

    //代表失败
    public static Msg fail() {
        Msg result = new Msg();
        result.setCode(200);
        result.setMsg("失败");
        return result;
    }

    //用户添加
    public Msg add(Object value) {
        this.getData().add(value);
        return this;
    }


    public int getCode() {
        return code;
    }

    public void setCode(int code) {
        this.code = code;
    }

    public String getMsg() {
        return msg;
    }

    public void setMsg(String msg) {
        this.msg = msg;
    }

    public Integer getCount() {
        return count;
    }

    public void setCount(Integer count) {
        this.count = count;
    }

    public List<Object> getData() {
        return data;
    }

    public void setData(List<Object> data) {
        this.data = data;
    }
}



