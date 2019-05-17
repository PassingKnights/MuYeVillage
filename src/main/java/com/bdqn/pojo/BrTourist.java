package com.bdqn.pojo;

import java.util.Date;

//游客表
public class BrTourist {
    private Integer trId;

    private String trName;

    private String trSex;

    private Date trTime;

    private String trPhone;

    private String trEmail;

    private String trPassword;

    private String trPicture;

    public Integer getTrId() {
        return trId;
    }

    public void setTrId(Integer trId) {
        this.trId = trId;
    }

    public String getTrName() {
        return trName;
    }

    public void setTrName(String trName) {
        this.trName = trName == null ? null : trName.trim();
    }

    public String getTrSex() {
        return trSex;
    }

    public void setTrSex(String trSex) {
        this.trSex = trSex == null ? null : trSex.trim();
    }

    public Date getTrTime() {
        return trTime;
    }

    public void setTrTime(Date trTime) {
        this.trTime = trTime;
    }

    public String getTrPhone() {
        return trPhone;
    }

    public void setTrPhone(String trPhone) {
        this.trPhone = trPhone == null ? null : trPhone.trim();
    }

    public String getTrEmail() {
        return trEmail;
    }

    public void setTrEmail(String trEmail) {
        this.trEmail = trEmail == null ? null : trEmail.trim();
    }

    public String getTrPassword() {
        return trPassword;
    }

    public void setTrPassword(String trPassword) {
        this.trPassword = trPassword == null ? null : trPassword.trim();
    }

    public String getTrPicture() {
        return trPicture;
    }

    public void setTrPicture(String trPicture) {
        this.trPicture = trPicture == null ? null : trPicture.trim();
    }
}