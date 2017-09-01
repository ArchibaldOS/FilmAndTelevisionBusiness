package com.xd.zijing.controller;

import com.xd.zijing.entity.Struct;
import com.xd.zijing.service.StructManage;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;

/**
 * @author Archibald
 * @version:
 * @time: 8/29/2017.
 */
@Controller
public class StructController {
    @Autowired
    private StructManage structManage;



    @RequestMapping("/AddStruct")
    public String addStruct(){
        return "AddStruct";
    }

    @RequestMapping(value = "/AddStruct.do",method = {RequestMethod.GET})
    public String addStruct(HttpServletRequest request){
        Struct struct = new Struct();
        List<Struct> structs = structManage.selectAllStruct(0,5);

        struct.setCinemaname(request.getParameter("cinemaName"));
        struct.setDepartmentname(request.getParameter("departmentName"));
        struct.setLeader(request.getParameter("leader"));
        String higherDepartment = request.getParameter("higherDepartment");
        if (higherDepartment.equals("无")){
            struct.setIstop(1);
        }else {
            struct.setIstop(0);
            for (Struct s : structs){
                if (higherDepartment.equals(s.getDepartmentname())){
                    struct.setHigherdepartmentid(s.getDepartmentid());
                }
            }
        }

        structManage.insertStruct(struct);
        return "redirect:/StructManage.do";
    }

    @RequestMapping("/StructManage")
    public String structManage(){
        return "StructManage";
    }

    @RequestMapping(value = "/StructManage.do")
    public String StructManage( HttpSession session){
        List<Struct> structs = structManage.selectAllStruct(0,5);
        session.setAttribute("structs",structs);
        return "redirect:/StructManage";
    }

    @RequestMapping("/StructDetail")
    public String structDetail(){
        return "StructDetail";
    }

    @RequestMapping(value = "/StructDetail.do")
    public String StructDetail(HttpServletRequest request){
        Struct struct = structManage.selectStructById(Long.parseLong(request.getParameter("departmentID")));
        request.setAttribute("struct",struct);

        return "StructDetail";
    }
    @RequestMapping("/StructDetailUpdate")
    public String structDetailUpdate(HttpServletRequest request) {
        Struct struct = structManage.selectStructById(Long.valueOf(request.getParameter("departmentID")));
        request.setAttribute("struct",struct);
        return "StructDetailUpdate";
    }


    @RequestMapping(value = "/StructDetailUpdate.do")
    public String StructDetailUpdate(HttpServletRequest request){

        Struct struct = structManage.selectStructById(Long.parseLong(request.getParameter("departmentID")));
        List<Struct> structs = structManage.selectAllStruct(0,5);

        struct.setCinemaname(request.getParameter("cinemaName"));
        struct.setDepartmentname(request.getParameter("departmentName"));
        struct.setLeader(request.getParameter("leader"));

        String higherDepartment = request.getParameter("higherDepartment");
        if (higherDepartment.equals("无") || higherDepartment == null){
            struct.setIstop(1);
        }else {
            struct.setIstop(0);
            for (Struct s : structs){
                if (higherDepartment.equals(s.getDepartmentname())){
                    struct.setHigherdepartmentid(s.getDepartmentid());
                }
            }
        }


        structManage.updateStruct(struct);
        return "redirect:/StructManage.do";
    }

    @RequestMapping(value = "/StructDetailDelete.do",method = {RequestMethod.GET})
    public String deleteStruct(HttpServletRequest request){
        structManage.deleteStruct(Long.parseLong(request.getParameter("departmentID")));
        return "redirect:/StructManage.do";
    }

}
