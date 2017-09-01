package com.xd.zijing.controller;

import com.xd.zijing.entity.Screening;
import com.xd.zijing.service.ScreeningManage;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.List;

/**
 * @author Archibald
 * @version:
 * @time: 8/25/2017.
 */
@Controller
public class TicketTimeController {
    @Autowired
    private ScreeningManage screeningManage;

    @RequestMapping("/TicketTimeManage")
    public String ticketTimeManage(){
        return "chy/BackSite/TicketTimeManage";
    }

    @RequestMapping("/MovieDetail")
    public String movieDetail(){
        return "chy/BackSite/MovieDetail";
    }
    
    @RequestMapping("/TicketTimeUpdate")
    public String ticketTimeUpdate(HttpServletRequest request){
        Screening screening = screeningManage.selectScreeningById(Integer.valueOf(request.getParameter("screeningnumber")));
        request.setAttribute("screening",screening);
        return "chy/BackSite/TicketTimeUpdate";
    }


    @RequestMapping(value = "/TicketTimeManageDO")
    public String TicketTimeManage( HttpSession session){
        List<Screening> screenings = screeningManage.selectAllScreening(0,11);
        session.setAttribute("screenings",screenings);
        return "chy/BackSite/redirect:/TicketTimeManage";
    }

    @RequestMapping(value = "/MovieDetailDO")
    public String MovieDetail(HttpServletRequest request){
        Screening screening = screeningManage.selectScreeningById(Integer.valueOf(request.getParameter("screeningnumber")));
        request.setAttribute("screening",screening);
        return "chy/BackSite//MovieDetail";
    }

    @RequestMapping(value = "/TicketTimeUpdateDO")
    public String TicketTimeUpdate(HttpServletRequest request){
        Screening screening = screeningManage.selectScreeningById(Integer.valueOf(request.getParameter("screeningnumber")));
        DateFormat df = new SimpleDateFormat("yyyy-MM-dd");//日期格式可以在这里改
        String time = request.getParameter("sometime");
        screening.setSaletime(new java.util.Date(time));
//        if (time != null){
//           try{
//               screening.setSaletime(df.parse(time));
//           }catch (ParseException e) {
//            // TODO Auto-generated catch block
//            e.printStackTrace();
//          }
//        }

        System.out.println(time);
        screeningManage.updateScreening(screening);
        return "chy/BackSite/redirect:/TicketTimeManageDO";
    }
//// TODO: 8/31/2017
    @RequestMapping(value = "/TicketTimeDeleteDO",method = {RequestMethod.GET})
    public String TicketTimeDelete(HttpServletRequest request){
        screeningManage.deleteScreening(Long.parseLong(request.getParameter("id")));
        return "chy/BackSite/redirect:/TicketTimeManageDO";
    }

}
