package com.bdqn.Utils;


import java.util.List;

//分页
public class PageUtils {

    private int totalCount; // 总记录条数

    private Integer totalPage; // 总页数

    private Integer currPage; // 当前页

    private Integer startIndex; // 开始索引

    private List<Object> list; // 结果集


    public int getTotalCount() {
        return totalCount;
    }

    public void setTotalCount(int totalCount) {
        this.totalCount = totalCount;
    }

    public Integer getTotalPage() {
        return totalPage;
    }

    public void setTotalPage(Integer totalPage) {
        this.totalPage = totalPage;
    }

    public Integer getCurrPage() {
        return currPage;
    }

    public void setCurrPage(Integer currPage) {
        this.currPage = currPage;
    }

    public Integer getStartIndex() {
        return startIndex;
    }

    public void setStartIndex(Integer startIndex) {
        this.startIndex = startIndex;
    }

    public List<Object> getList() {
        return list;
    }

    public void setList(List<Object> list) {
        this.list = list;
    }

    @Override
    public String toString() {
        return "PageUtils{" +
                "totalCount=" + totalCount +
                ", totalPage=" + totalPage +
                ", currPage=" + currPage +
                ", startIndex=" + startIndex +
                ", list=" + list +
                '}';
    }
}
