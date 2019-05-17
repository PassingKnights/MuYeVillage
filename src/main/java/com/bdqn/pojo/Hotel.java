package com.bdqn.pojo;
//酒店表
public class Hotel {
    private Integer hId;

    private String hName;

    private String hScore;

    private String hPictrue;

    private String hIntroduce;

    public Integer gethId() {
        return hId;
    }

    public void sethId(Integer hId) {
        this.hId = hId;
    }

    public String gethName() {
        return hName;
    }

    public void sethName(String hName) {
        this.hName = hName == null ? null : hName.trim();
    }

    public String gethScore() {
        return hScore;
    }

    public void sethScore(String hScore) {
        this.hScore = hScore == null ? null : hScore.trim();
    }

    public String gethPictrue() {
        return hPictrue;
    }

    public void sethPictrue(String hPictrue) {
        this.hPictrue = hPictrue == null ? null : hPictrue.trim();
    }

    public String gethIntroduce() {
        return hIntroduce;
    }

    public void sethIntroduce(String hIntroduce) {
        this.hIntroduce = hIntroduce == null ? null : hIntroduce.trim();
    }
}