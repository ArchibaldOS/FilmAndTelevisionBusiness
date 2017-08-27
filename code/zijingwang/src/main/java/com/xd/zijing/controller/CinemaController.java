package com.xd.zijing.controller;

import com.xd.zijing.entity.Cinema;
import com.xd.zijing.service.CinemaService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Created by lenovo on 2017/8/20.
 */
@Controller
public class CinemaController {

    @Autowired
    private CinemaService cinemaService;

    @RequestMapping(value = "/cinema", method = RequestMethod.GET)
    public String backIndex() {
        return "lbq/fbms/back_index";
    }

    @RequestMapping(value = "/cinema/cinemaDetail", method = RequestMethod.GET)
    public String cinemaDetail(Model model) {

        Cinema cinema = cinemaService.queryCinemaInfo();
        model.addAttribute("cinema", cinema);
        return "lbq/fbms/cinemaDetail";
    }

    @RequestMapping(value = "/cinema/cinemaDetailUpdate", method = RequestMethod.GET)
    public String cinemaDetailUpdate(Model model) {

        Cinema cinema = cinemaService.queryCinemaInfo();
        model.addAttribute("cinema", cinema);
        return "lbq/fbms/cinemaDetailUpdate";
    }

    @RequestMapping(value = "/cinema/cinemaUpdate", method = RequestMethod.POST)
    public String cinemaUpdate(@ModelAttribute Cinema cinema){
        cinemaService.updateCinema(cinema);
        return "lbq/fbms/cinemaDetail";
    }
}
