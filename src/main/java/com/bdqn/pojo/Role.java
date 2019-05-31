package com.bdqn.pojo;

import java.util.List;

//角色表
public class Role {
    private Integer roId;

    private String roName;

    //含有的一级菜单
    private List<Muen> oneMenus;

    @Override
    public String toString() {
        return "Role{" +
                "roId=" + roId +
                ", roName='" + roName + '\'' +
                ", oneMenus=" + oneMenus +
                '}';
    }

    public List<Muen> getOneMenus() {
        return oneMenus;
    }

    public void setOneMenus(List<Muen> oneMenus) {
        this.oneMenus = oneMenus;
    }

    public Integer getRoId() {
        return roId;
    }

    public void setRoId(Integer roId) {
        this.roId = roId;
    }

    public String getRoName() {
        return roName;
    }

    public void setRoName(String roName) {
        this.roName = roName == null ? null : roName.trim();
    }
}