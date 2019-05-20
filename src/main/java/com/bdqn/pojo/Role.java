package com.bdqn.pojo;

import java.util.List;

//角色表
public class Role {
    private Integer roId;

    private String roName;

    //含有的菜单
    private List<Muen> menus;

    public List<Muen> getMenus() {
        return menus;
    }

    public void setMenus(List<Muen> menus) {
        this.menus = menus;
    }

    @Override
    public String toString() {
        return "Role{" +
                "roId=" + roId +
                ", roName='" + roName + '\'' +
                ", menus=" + menus +
                '}';
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