package com.bdqn.pojo;
//菜单表
public class Muen {
    private Integer muId;

    private String muName;

    private Integer pid;

    private Integer muLevel;
    //子菜单
    private String sonName;

    @Override
    public String toString() {
        return "Muen{" +
                "muId=" + muId +
                ", muName='" + muName + '\'' +
                ", pid=" + pid +
                ", muLevel=" + muLevel +
                ", sonName='" + sonName + '\'' +
                '}';
    }

    public Muen() {
    }

    public Muen(Integer muId, String muName, Integer pid, Integer muLevel, String sonName) {
        this.muId = muId;
        this.muName = muName;
        this.pid = pid;
        this.muLevel = muLevel;
        this.sonName = sonName;
    }

    public String getSonName() {
        return sonName;
    }

    public void setSonName(String sonName) {
        this.sonName = sonName;
    }

    public Integer getMuId() {
        return muId;
    }

    public void setMuId(Integer muId) {
        this.muId = muId;
    }

    public String getMuName() {
        return muName;
    }

    public void setMuName(String muName) {
        this.muName = muName == null ? null : muName.trim();
    }

    public Integer getPid() {
        return pid;
    }

    public void setPid(Integer pid) {
        this.pid = pid;
    }

    public Integer getMuLevel() {
        return muLevel;
    }

    public void setMuLevel(Integer muLevel) {
        this.muLevel = muLevel;
    }
}