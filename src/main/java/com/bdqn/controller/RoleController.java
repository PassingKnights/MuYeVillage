package com.bdqn.controller;

import com.alibaba.fastjson.JSON;
import com.bdqn.pojo.Role;
import com.bdqn.service.Impl.RoleServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
@RequestMapping("/role")
public class RoleController {
    @Autowired
    RoleServiceImpl roleService;

    //查所有角色
    @RequestMapping(value = "/showAll",produces = "text/html;charset=utf-8")
    @ResponseBody
    public String showAll(){
        List<Role> roles = roleService.selectAll();
        String s = JSON.toJSONString(roles);
        //System.out.println(s);

        String ss = "{\"code\":0,\"msg\":\"\",\"count\":"+roles.size()+",\"data\":"+s+"}";
        return ss;
    }
    //删除
    @RequestMapping("/delete")
    @ResponseBody
    public String delete(@RequestParam("roId")Integer roId){
        //System.out.println(roId);
        roleService.delete(roId);
        return "{\"result\":\"成功\"}";
    }
    //添加
    @RequestMapping(value = "/add",produces = "text/html;charset=utf-8")
    @ResponseBody
    public String add(String roName){
        //System.out.println(roName);
        Role role = new Role();
        role.setRoName(roName);
        roleService.add(role);

        return showAll();
    }
    //编辑
    @RequestMapping("/edit")
    public String edit(@RequestParam("roId")Integer roId, HttpServletRequest request){
        Role role = roleService.selectRole(roId);
        request.getSession().setAttribute("role",role);

        return "redirect:/AfterEnd/html/roleManageEdit.jsp";
    }


    //根据id查角色
    @RequestMapping(value = "/showById",produces = "text/html;charset=utf-8")
    @ResponseBody
    public String showById(@RequestParam("roId")Integer roId){
        //System.out.println(roId);
        Role role = roleService.selectById(roId);
        //System.out.println(role);
        String s = JSON.toJSONString(role.getOneMenus());
        //System.out.println(s);

        String ss = "{\"code\":0,\"msg\":\"\",\"count\":"+role.getOneMenus().size()+",\"data\":"+s+"}";
        return ss;
    }

    //删除菜单
    @RequestMapping(value = "/deleteMenu",produces = "text/html;charset=utf-8")
    @ResponseBody
    public String deleteMenu(@RequestParam("roId") Integer roId,String muName,String sonName){

        if(sonName!=null){
            roleService.deleteByIdAndName(roId,sonName);
        }else if(sonName==null){
            roleService.deleteByIdAndName(roId,muName);
        }

        return "{\"result\":\"成功\"}";
    }
    @RequestMapping(value = "/addMenu",produces = "text/html;charset=utf-8")
    @ResponseBody
    public String addMenu(Integer roId,String muName,String sonName){
        if(sonName.equals("")){
            roleService.addByIdAndName(roId,muName);
        }else{
            roleService.addByIdAndName(roId,sonName);
        }
        return showById(roId);
    }

}
