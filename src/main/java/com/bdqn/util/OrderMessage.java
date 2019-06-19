package com.bdqn.util;

import com.alibaba.fastjson.annotation.JSONField;
import com.bdqn.pojo.Group;
import com.bdqn.pojo.TrOrder;
import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;

public class OrderMessage {
    private Integer orId;

    @JSONField(format = "yyyy-MM-dd")
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date orTime;
    private String orBoolean;

    //团名
    private String tgName;
    //去的天数
    private Integer tgDays;
    //单价
    private Integer tgPrice;
    //出发时间
    @JSONField(format = "yyyy-MM-dd")
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date tgStarttime;
    //结束时间
    @JSONField(format = "yyyy-MM-dd")
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date tgEndtime;

    private String hName;
    private String guName;
    private String spName;

    public OrderMessage(TrOrder order){
        this.orId = order.getOrId();
        this.orTime = order.getOrTime();
        this.orBoolean = order.getOrBoolean();

        this.tgName=order.getGroup().getTgName();
        this.tgDays=order.getGroup().getTgDays();
        this.tgPrice=order.getGroup().getTgPrice();
        this.tgStarttime=order.getGroup().getTgStarttime();
        this.tgEndtime=order.getGroup().getTgEndtime();
        this.hName=order.getGroup().getHotel().gethName();
        this.guName=order.getGroup().getGuide().getGuName();
        this.spName=order.getGroup().getSpot().getSpName();
    }

    public OrderMessage() {
    }

    @Override
    public String toString() {
        return "OrderMessage{" +
                "orId=" + orId +
                ", orTime=" + orTime +
                ", orBoolean='" + orBoolean + '\'' +
                ", tgName='" + tgName + '\'' +
                ", tgDays=" + tgDays +
                ", tgPrice=" + tgPrice +
                ", tgStarttime=" + tgStarttime +
                ", tgEndtime=" + tgEndtime +
                ", hName='" + hName + '\'' +
                ", guName='" + guName + '\'' +
                ", spName='" + spName + '\'' +
                '}';
    }

    public Integer getOrId() {
        return orId;
    }

    public void setOrId(Integer orId) {
        this.orId = orId;
    }

    public Date getOrTime() {
        return orTime;
    }

    public void setOrTime(Date orTime) {
        this.orTime = orTime;
    }

    public String getOrBoolean() {
        return orBoolean;
    }

    public void setOrBoolean(String orBoolean) {
        this.orBoolean = orBoolean;
    }

    public String getTgName() {
        return tgName;
    }

    public void setTgName(String tgName) {
        this.tgName = tgName;
    }

    public Integer getTgDays() {
        return tgDays;
    }

    public void setTgDays(Integer tgDays) {
        this.tgDays = tgDays;
    }

    public Integer getTgPrice() {
        return tgPrice;
    }

    public void setTgPrice(Integer tgPrice) {
        this.tgPrice = tgPrice;
    }

    public Date getTgStarttime() {
        return tgStarttime;
    }

    public void setTgStarttime(Date tgStarttime) {
        this.tgStarttime = tgStarttime;
    }

    public Date getTgEndtime() {
        return tgEndtime;
    }

    public void setTgEndtime(Date tgEndtime) {
        this.tgEndtime = tgEndtime;
    }

    public String gethName() {
        return hName;
    }

    public void sethName(String hName) {
        this.hName = hName;
    }

    public String getGuName() {
        return guName;
    }

    public void setGuName(String guName) {
        this.guName = guName;
    }

    public String getSpName() {
        return spName;
    }

    public void setSpName(String spName) {
        this.spName = spName;
    }
}
