package com.bdqn.pojo;

import java.util.Date;
//旅游团表
public class TouristGroup {
    private Integer tgId;

    private String tgName;

    private Integer tgSize;

    private Integer hId;

    private Integer guId;

    private Integer tgDays;

    private Date tgTime;

    private Integer tgPrice;

    private Integer spId;

    private Integer tgNumber;

    private String tgPlace;

    private Integer tgAllprice;

    private Date tgStarttime;

    private Date tgEndtime;

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
        this.tgName = tgName == null ? null : tgName.trim();
    }

    public Integer getTgSize() {
        return tgSize;
    }

    public void setTgSize(Integer tgSize) {
        this.tgSize = tgSize;
    }

    public Integer gethId() {
        return hId;
    }

    public void sethId(Integer hId) {
        this.hId = hId;
    }

    public Integer getGuId() {
        return guId;
    }

    public void setGuId(Integer guId) {
        this.guId = guId;
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

    public Integer getSpId() {
        return spId;
    }

    public void setSpId(Integer spId) {
        this.spId = spId;
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
        this.tgPlace = tgPlace == null ? null : tgPlace.trim();
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
}