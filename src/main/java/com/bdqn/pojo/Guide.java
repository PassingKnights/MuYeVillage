package com.bdqn.pojo;

import java.util.Date;
//导游表
public class Guide {
    private Integer guId;

    private Integer spId;

    private String guName;

    private String guSex;

    private Date guTime;

    private String guPicture;

    public Integer getGuId() {
        return guId;
    }

    public void setGuId(Integer guId) {
        this.guId = guId;
    }

    public Integer getSpId() {
        return spId;
    }

    public void setSpId(Integer spId) {
        this.spId = spId;
    }

    public String getGuName() {
        return guName;
    }

    public void setGuName(String guName) {
        this.guName = guName == null ? null : guName.trim();
    }

    public String getGuSex() {
        return guSex;
    }

    public void setGuSex(String guSex) {
        this.guSex = guSex == null ? null : guSex.trim();
    }

    public Date getGuTime() {
        return guTime;
    }

    public void setGuTime(Date guTime) {
        this.guTime = guTime;
    }

    public String getGuPicture() {
        return guPicture;
    }

    public void setGuPicture(String guPicture) {
        this.guPicture = guPicture == null ? null : guPicture.trim();
    }
}