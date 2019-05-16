package com.bdqn.AjaxResult;

import java.util.HashMap;
import java.util.Map;

//通用的返回类
public class Msg {

    //状态码 100成功 200失败
    private int code;

    //提示信息
    private String msg;

    //用户返回给浏览器的数据
    private Map<String, Object> extend = new HashMap<>();

    //代表成功
    public static Msg success() {
        Msg result = new Msg();
        result.setCode(100);
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
    public Msg add(String key, Object value) {
        this.getExtend().put(key, value);
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

    public Map<String, Object> getExtend() {
        return extend;
    }

    public void setExtend(Map<String, Object> extend) {
        this.extend = extend;
    }
}



