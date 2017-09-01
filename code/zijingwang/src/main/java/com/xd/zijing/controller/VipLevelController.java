package com.xd.zijing.controller;

import com.xd.zijing.entity.Vip;
import com.xd.zijing.service.VipManage;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.Iterator;
import java.util.List;

/**
 * @author Archibald
 * @version:
 * @time: 8/25/2017.
 */
@Controller
public class VipLevelController {
    @Autowired
    private VipManage vipManage;

    @RequestMapping("/VipLevelSearch")
    public String vipLevelSearch(){
        return "chy/BackSite/VipLevelSearch";
    }
    @RequestMapping("/VipList")
    public String vipList(){
        return "chy/BackSite/VipList";
    }

    @RequestMapping(value = "/VipListDO")
    public String selectStruct( HttpSession session){
        List<Vip> vips = vipManage.selectAllVip(0,11);
        session.setAttribute("vips",vips);
        return "chy/BackSite/redirect:/VipList";
    }

    @RequestMapping("/VipSearchResult")
    public String vipSearchResult(){
        return "chy/BackSite/VipSearchResult";
    }

    @RequestMapping("/VipSearchResultDO")
    public String VipSearchResult(HttpServletRequest request,HttpSession session){
        List<Vip> vips = vipManage.selectAllVip(0,11);
        String viplevel = request.getParameter("vipLevel");
        //必须使用Iterator，不可以在遍历List时修改List，只可以使用Iterator的remove方法
        Iterator<Vip> iterator = vips.iterator();
        while(iterator.hasNext()) {
            Vip vip = iterator.next();
            String viprank = vip.getViprank();
            if (viprank == null || !(viprank.equals(viplevel))){
               iterator.remove();
            }
        }
        session.setAttribute("vips",vips);
        return "chy/BackSite/redirect:VipSearchResult";
    }
}
