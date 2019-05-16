package com.bdqn.pojo;

import java.util.Date;

public class TrOrder {
    private Integer orId;

    private Integer trId;

    private Integer tgId;

    private Date orTime;

    private String orBoolean;

    public Integer getOrId() {
        return orId;
    }

    public void setOrId(Integer orId) {
        this.orId = orId;
    }

    public Integer getTrId() {
        return trId;
    }

    public void setTrId(Integer trId) {
        this.trId = trId;
    }

    public Integer getTgId() {
        return tgId;
    }

    public void setTgId(Integer tgId) {
        this.tgId = tgId;
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
        this.orBoolean = orBoolean == null ? null : orBoolean.trim();
    }
}