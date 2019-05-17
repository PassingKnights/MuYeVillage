package com.bdqn.pojo;

public class Muen {
    private Integer muId;

    private String muName;

    private Integer pid;

    private Integer muLevel;

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