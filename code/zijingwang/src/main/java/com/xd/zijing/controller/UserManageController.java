package com.xd.zijing.controller;

import com.xd.zijing.entity.Vip;
import com.xd.zijing.service.VipManage;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.Date;
import java.util.List;

/**
 * @author Archibald
 * @version:
 * @time: 8/25/2017.
 */
@Controller
public class UserManageController {

    @Autowired
    private VipManage vipManage;

    @RequestMapping("/AddUser")
    public String addUser(){
        return "AddUser";
    }

    @RequestMapping("/UserList")
    public String userList(){
        return "UserList";
    }

    @RequestMapping(value = "/UserList.do")
    public String selectUser(HttpSession session){
        List<Vip> vips = vipManage.selectAllVip(0,11);
        session.setAttribute("vips",vips);
        return "redirect:/UserList";
    }

    @RequestMapping(value = "/UserDetail.do")
    public String UserDetail(HttpServletRequest request){
        Vip vip = vipManage.selectVipById(Integer.valueOf(request.getParameter("vipid")));
        request.setAttribute("vip",vip);
//        for (Vip vip:vips){
//            System.out.println(vip);
//        }
        return "UserDetail";
    }

    @RequestMapping("/UserDetail")
    public String userDetail(){
        return "UserDetail";
    }

    @RequestMapping("/AddUser.do")
    public String AddUser(HttpServletRequest request){
        Vip vip = new Vip();
        vip.setVipusername(request.getParameter("u_username"));
        vip.setVippassword(request.getParameter("u_password"));
        vip.setVipname(request.getParameter("u_name"));
        vip.setVipgender(request.getParameter("u_gender"));
//        vip.setVipbirthday(request.getParameter("u_birthday"));
        vip.setViptelephone(request.getParameter("u_telephone"));
        vip.setVipregisterdate(new Date());
        vipManage.insertVip(vip);
        return "redirect:/AddUser";
    }

    @RequestMapping(value = "/UserDetailUpdate.do")
    public String UserDetailUpdate(HttpServletRequest request){
        Vip vip = vipManage.selectVipById(Integer.valueOf(request.getParameter("u_vip")));
        vip.setVipusername(request.getParameter("u_username"));
        vip.setVippassword(request.getParameter("u_password"));
        vip.setVipname(request.getParameter("u_name"));
        vip.setVipgender(request.getParameter("u_gender"));
//        vip.setVipbirthday(request.getParameter("u_birthday"));
        vip.setViptelephone(request.getParameter("u_telephone"));
        vipManage.updateVip(vip);
        return "redirect:/UserList.do";
    }
    @RequestMapping("/UserDetailUpdate")
    public String userDetailUpdate(HttpServletRequest request){
        Vip vip = vipManage.selectVipById(Integer.valueOf(request.getParameter("vipid")));
        request.setAttribute("vip",vip);
        return "UserDetailUpdate";
    }


    @RequestMapping("/ResetPassword")
    public String resetPassword(){
        return "ResetPassword";
    }

    @RequestMapping("/ResetPasswordError")
    public String resetPasswordError(){
        return "ResetPasswordError";
    }


    @RequestMapping("/ResetPassword.do")
    public String ResetPassword(HttpServletRequest request){
        Vip vip = vipManage.selectVipById(Integer.valueOf(request.getParameter("userID")));
        String oldPassword = request.getParameter("oldPassword");
        String newPassword = request.getParameter("newPassword");
        String checkPassword = request.getParameter("checkPassword");
        if (oldPassword.equals(vip.getVippassword())){
            if (newPassword.equals(checkPassword)){
                vip.setVippassword(newPassword);
                vipManage.updateVip(vip);
                return "/ResetPassword";
            }
            else{
                return "/ResetPasswordError";
            }
        }else{
            return "/ResetPasswordError";
        }
    }

    @RequestMapping(value = "/DeleteUser.do",method = {RequestMethod.GET})
    public String DeleteUser(HttpServletRequest request){
        vipManage.deleteVip(Long.parseLong(request.getParameter("vipid")));
        return "redirect:/UserList.do";
    }



}
