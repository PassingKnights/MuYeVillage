package com.bdqn.pojo;

//旅游点表
public class TouristSpot {
    private Integer spId;

    private String spName;//地点

    private String spMessage;//消息

//    private String spPictrue;//照片

    //tostring


    @Override
    public String toString() {
        return "TouristSpot{" +
                "spId=" + spId +
                ", spName='" + spName + '\'' +
                ", spMessage='" + spMessage + '\'' +
                '}';
    }

    //有参
    public TouristSpot(Integer spId, String spName, String spMessage) {
        this.spId = spId;
        this.spName = spName;
        this.spMessage = spMessage;
    }

    //无参
    public TouristSpot() {
    }


    //set 和 get
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


}