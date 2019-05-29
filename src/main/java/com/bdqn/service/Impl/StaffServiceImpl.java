package com.bdqn.service.Impl;

import com.bdqn.mapper.StaffMapper;
import com.bdqn.pojo.Staff;
import com.bdqn.service.StaffService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class StaffServiceImpl implements StaffService {

    @Autowired
    private StaffMapper staffMapper;
    //根据id查询
    public Staff selectByPrimaryKey(Integer id){
        return staffMapper.selectByPrimaryKey(id);
    }

    //查所有，当cur=-1查所有。分页
    @Override
    public List<Staff> selectAll(int cur,int limit) {
        int index = (cur-1)*limit;
        List<Staff> list = staffMapper.selectAll(index, limit);
        return list;
    }

    @Override
    public List<Staff> selectRole() {
        return staffMapper.selectRole();
    }

    @Override
    public void delete(Integer id) {
        staffMapper.deleteByPrimaryKey(id);
    }

    @Override
    public void add(Staff staff) {
        staffMapper.insertSelective(staff);
    }

    @Override
    public void update(Staff staff) {
        staffMapper.updateByPrimaryKeySelective(staff);
    }

    public static void main(String[] args) {
        ApplicationContext ac = new ClassPathXmlApplicationContext("ApplicationContext.xml");
        StaffServiceImpl staffServiceImpl = ac.getBean("staffServiceImpl", StaffServiceImpl.class);
//        Staff staff = staffServiceImpl.selectByPrimaryKey(1);
//        System.out.println(staff);
        List<Staff> list = staffServiceImpl.selectRole();
        for (Staff s : list) {
            System.out.println(s);
        }
    }

}
