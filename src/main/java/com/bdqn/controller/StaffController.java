package com.bdqn.controller;

import com.alibaba.fastjson.JSON;
import com.bdqn.pojo.Staff;
import com.bdqn.service.Impl.StaffServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
@RequestMapping("/staff")
public class StaffController {
    @Autowired
    private StaffServiceImpl staffService;

    @RequestMapping("/show")
    public String show(){
        Staff staff = staffService.selectByPrimaryKey(1);
        String s = JSON.toJSONString(staff);
        return "index.jsp";
    }

    //显示，分页
    @RequestMapping(value = "/paging",produces = "text/html;charset=utf-8")
    @ResponseBody
    public String paging(int page,int limit){
        List<Staff> staff = staffService.selectAll(null,page, limit);
        String s = JSON.toJSONString(staff);
        int count = staffService.selectAll(null,-1, -1).size();
        String ss = "{\"code\":0,\"msg\":\"\",\"count\":"+count+",\"data\":"+s+"}";

        return ss;
    }
    //删除
    @RequestMapping("delete")
    @ResponseBody
    public String delete(@RequestParam("stId") Integer stId){
        staffService.delete(stId);
        return "{\"result\":\"成功\"}";
    }

    //添加
    @RequestMapping("add")
    @ResponseBody
    public String add(Staff staff){
        staffService.add(staff);
        return null;
    }
    //编辑
    @RequestMapping("edit")
    @ResponseBody
    public String edit(@RequestParam("staff") Staff staff){
        staffService.update(staff);
        return null;
    }
    //搜索
    @RequestMapping(value = "/search",produces = "text/html;charset=utf-8")
    @ResponseBody
    public String search(String stName,int page,int limit){
        List<Staff> list = staffService.selectAll(stName, page, limit);
        String s = JSON.toJSONString(list);
        int count = staffService.selectAll(stName,-1, -1).size();
        String ss = "{\"code\":0,\"msg\":\"\",\"count\":"+count+",\"data\":"+s+"}";
        return ss;
    }


    //以下是员工和角色的

    //分页查询，单查或全查
    @RequestMapping(value = "/menus",produces = "text/html;charset=utf-8")
    @ResponseBody
    public String getMenus(Integer stId,Integer page,Integer limit){
        List<Staff> list=null;
        List<Staff> allList =null;
        if(stId!=null){
            list = staffService.selectRole(stId,page,limit);
            allList = staffService.selectRole(stId,-1,-1);
        }else {
           list = staffService.selectRole(-1,page,limit);
            allList = staffService.selectRole(-1,-1,-1);
        }

        String s = JSON.toJSONString(list);
        String ss = "{\"code\":0,\"msg\":\"\",\"count\":"+allList.size()+",\"data\":"+s+"}";
        return ss;
    }



    //跳转到个人的角色分配页面
    @RequestMapping("/goRoleEdit")
    public String goRoleEdit(Integer stId, HttpServletRequest request, HttpSession session){
        //request.setAttribute("stId",stId);
        session.setAttribute("stId",stId);
        return "redirect:/AfterEnd/html/staffRoleEdit.jsp";
    }

    //删除角色
    @RequestMapping(value = "/deleteRole",produces = "text/html;charset=utf-8")
    @ResponseBody
    public String deleteRole(@RequestParam("stId") Integer stId,String roName){
        staffService.deleteRole(stId,roName);
        return "{\"result\":\"成功\"}";
    }
    //添加角色
    @RequestMapping(value = "/addRole",produces = "text/html;charset=utf-8")
    @ResponseBody
    public String addRole(@RequestParam("stId") Integer stId,String roName,Integer page,Integer limit){
        System.out.println(stId+roName);
        staffService.addRole(stId,roName);

        List<Staff> list = staffService.selectRole(stId,page,limit);
        List<Staff> allList = staffService.selectRole(stId,-1,-1);

        String s = JSON.toJSONString(list);
        String ss = "{\"code\":0,\"msg\":\"\",\"count\":"+allList.size()+",\"data\":"+s+"}";
        return ss;
    }
}
