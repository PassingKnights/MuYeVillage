package com.bdqn.pojo;

import java.util.Date;

//旅游团表(傅城新建以对象映射)
public class Group {
    private Integer tgId;

    private String tgName;
    //最大人数
    private Integer tgSize;
    //去的天数
    private Integer tgDays;
    //建立时间
    private Date tgTime;
    //单价
    private Integer tgPrice;
    //实际出行人数
    private Integer tgNumber;
    //出发地点
    private String tgPlace;
    //所有总价
    private Integer tgAllprice;
    //出发时间
    private Date tgStarttime;
    //结束时间
    private Date tgEndtime;

    //酒店
    private Hotel hotel;
    //导游
    private  Guide guide;
    //景点
    private TouristSpot spot;

    @Override
    public String toString() {
        return "Group{" +
                "tgId=" + tgId +
                ", tgName='" + tgName + '\'' +
                ", tgSize=" + tgSize +
                ", tgDays=" + tgDays +
                ", tgTime=" + tgTime +
                ", tgPrice=" + tgPrice +
                ", tgNumber=" + tgNumber +
                ", tgPlace='" + tgPlace + '\'' +
                ", tgAllprice=" + tgAllprice +
                ", tgStarttime=" + tgStarttime +
                ", tgEndtime=" + tgEndtime +
                ", hotel=" + hotel +
                ", guide=" + guide +
                ", spot=" + spot +
                '}';
    }

    public Integer getTgId() {
        return tgId;
    }

    public void setTgId(Integer tgId) {
        this.tgId = tgId;
    }

    public String getTgName() {
        return tgName;
    }

    public void setTgName(String tgName) {
        this.tgName = tgName;
    }

    public Integer getTgSize() {
        return tgSize;
    }

    public void setTgSize(Integer tgSize) {
        this.tgSize = tgSize;
    }

    public Integer getTgDays() {
        return tgDays;
    }

    public void setTgDays(Integer tgDays) {
        this.tgDays = tgDays;
    }

    public Date getTgTime() {
        return tgTime;
    }

    public void setTgTime(Date tgTime) {
        this.tgTime = tgTime;
    }

    public Integer getTgPrice() {
        return tgPrice;
    }

    public void setTgPrice(Integer tgPrice) {
        this.tgPrice = tgPrice;
    }

    public Integer getTgNumber() {
        return tgNumber;
    }

    public void setTgNumber(Integer tgNumber) {
        this.tgNumber = tgNumber;
    }

    public String getTgPlace() {
        return tgPlace;
    }

    public void setTgPlace(String tgPlace) {
        this.tgPlace = tgPlace;
    }

    public Integer getTgAllprice() {
        return tgAllprice;
    }

    public void setTgAllprice(Integer tgAllprice) {
        this.tgAllprice = tgAllprice;
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

    public Hotel getHotel() {
        return hotel;
    }

    public void setHotel(Hotel hotel) {
        this.hotel = hotel;
    }

    public Guide getGuide() {
        return guide;
    }

    public void setGuide(Guide guide) {
        this.guide = guide;
    }

    public TouristSpot getSpot() {
        return spot;
    }

    public void setSpot(TouristSpot spot) {
        this.spot = spot;
    }
}