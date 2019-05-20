package com.bdqn.pojo;

import java.util.Date;
import java.util.List;

//员工表
public class Staff {
    private Integer stId;

    private String stName;

    private String stSex;

    private Date stTime;

    private Integer verson;

    private String stPhoto;

    private String stPassword;
    //有什么角色
    private List<Role> roles;

    public List<Role> getRoles() {
        return roles;
    }

    public void setRoles(List<Role> roles) {
        this.roles = roles;
    }

    @Override
    public String toString() {
        return "Staff{" +
                "stId=" + stId +
                ", stName='" + stName + '\'' +
                ", stSex='" + stSex + '\'' +
                ", stTime=" + stTime +
                ", verson=" + verson +
                ", stPhoto='" + stPhoto + '\'' +
                ", stPassword='" + stPassword + '\'' +
                ", roles=" + roles +
                '}';
    }

    public Integer getStId() {
        return stId;
    }

    public void setStId(Integer stId) {
        this.stId = stId;
    }

    public String getStName() {
        return stName;
    }

    public void setStName(String stName) {
        this.stName = stName == null ? null : stName.trim();
    }

    public String getStSex() {
        return stSex;
    }

    public void setStSex(String stSex) {
        this.stSex = stSex == null ? null : stSex.trim();
    }

    public Date getStTime() {
        return stTime;
    }

    public void setStTime(Date stTime) {
        this.stTime = stTime;
    }

    public Integer getVerson() {
        return verson;
    }

    public void setVerson(Integer verson) {
        this.verson = verson;
    }

    public String getStPhoto() {
        return stPhoto;
    }

    public void setStPhoto(String stPhoto) {
        this.stPhoto = stPhoto == null ? null : stPhoto.trim();
    }

    public String getStPassword() {
        return stPassword;
    }

    public void setStPassword(String stPassword) {
        this.stPassword = stPassword == null ? null : stPassword.trim();
    }
}