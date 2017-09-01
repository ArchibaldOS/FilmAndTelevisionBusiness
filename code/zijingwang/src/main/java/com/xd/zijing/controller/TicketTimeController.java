package com.six.FilmAndTelevisionBusiness.controller;

import com.six.FilmAndTelevisionBusiness.entity.Screening;
import com.six.FilmAndTelevisionBusiness.service.ScreeningManage;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.sql.Date;
import java.text.DateFormat;
import java.text.ParseException;
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
        return "TicketTimeManage";
    }

    @RequestMapping("/MovieDetail")
    public String movieDetail(){
        return "MovieDetail";
    }
    
    @RequestMapping("/TicketTimeUpdate")
    public String ticketTimeUpdate(HttpServletRequest request){
        Screening screening = screeningManage.selectScreeningById(Integer.valueOf(request.getParameter("screeningnumber")));
        request.setAttribute("screening",screening);
        return "TicketTimeUpdate";
    }


    @RequestMapping(value = "/TicketTimeManage.do")
    public String TicketTimeManage( HttpSession session){
        List<Screening> screenings = screeningManage.selectAllScreening(0,11);
        session.setAttribute("screenings",screenings);
        return "redirect:/TicketTimeManage";
    }

    @RequestMapping(value = "/MovieDetail.do")
    public String MovieDetail(HttpServletRequest request){
        Screening screening = screeningManage.selectScreeningById(Integer.valueOf(request.getParameter("screeningnumber")));
        request.setAttribute("screening",screening);
        return "/MovieDetail";
    }

    @RequestMapping(value = "/TicketTimeUpdate.do")
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
        return "redirect:/TicketTimeManage.do";
    }
//// TODO: 8/31/2017
    @RequestMapping(value = "/TicketTimeDelete.do",method = {RequestMethod.GET})
    public String TicketTimeDelete(HttpServletRequest request){
        screeningManage.deleteScreening(Long.parseLong(request.getParameter("id")));
        return "redirect:/TicketTimeManage.do";
    }

}
