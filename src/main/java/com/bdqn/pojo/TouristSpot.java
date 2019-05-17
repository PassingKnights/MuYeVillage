package com.bdqn.pojo;

public class TouristSpot {
    private Integer spId;

    private String spName;

    private String spMessage;

    private String spPictrue;

    public Integer getSpId() {
        return spId;
    }

    public void setSpId(Integer spId) {
        this.spId = spId;
    }

    public String getSpName() {
        return spName;
    }

    public void setSpName(String spName) {
        this.spName = spName == null ? null : spName.trim();
    }

    public String getSpMessage() {
        return spMessage;
    }

    public void setSpMessage(String spMessage) {
        this.spMessage = spMessage == null ? null : spMessage.trim();
    }

    public String getSpPictrue() {
        return spPictrue;
    }

    public void setSpPictrue(String spPictrue) {
        this.spPictrue = spPictrue == null ? null : spPictrue.trim();
    }
}