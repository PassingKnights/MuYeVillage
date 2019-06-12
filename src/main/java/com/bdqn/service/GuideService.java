package com.bdqn.service;

import com.bdqn.pojo.Guide;

import java.util.List;

public interface GuideService {

    public List<Guide> selectAll(int cur, int limit);
}
