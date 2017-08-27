package com.xd.zijing.controller;

import com.xd.zijing.entity.Page;
import com.xd.zijing.entity.Hall;
import com.xd.zijing.service.HallService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

/**
 * Created by lenovo on 2017/8/20.
 */
@Controller
public class HallController {

    @Autowired
    private HallService hallService;

    @RequestMapping(value = "/hall/hallList", method = RequestMethod.GET)
    public String index(@RequestParam(name = "cur", defaultValue = "1") int cur, Model model) {
        Page page = hallService.queryHalls(cur);
        model.addAttribute("page", page);
        return "lbq/fbms/hallList";
    }

    @RequestMapping(value = "/hall/{hallId}/hallDelete", method = RequestMethod.GET)
    public String hallDelete(@PathVariable("hallId") int hallId) {

        hallService.deleteById(hallId);
        return "redirect:/hall/hallList";
    }

    @RequestMapping(value = "/hall/{hallId}/hallDetail", method = RequestMethod.GET)
    public String hallDetail(@PathVariable("hallId") int hallId, Model model) {

        Hall hall = hallService.queryHallById(hallId);
        model.addAttribute("hall", hall);
        return "lbq/fbms/hallDetail";
    }

    @RequestMapping(value = "/hall/{hallId}/hallDetailUpdate", method = RequestMethod.POST)
    public String hallDetailUpdate(@PathVariable("hallId") int hallId, Model model) {
        Hall hal1 = hallService.queryHallById(hallId);
        model.addAttribute("hall", hal1);
        return "lbq/fbms/hallDetailUpdate";
    }

    @RequestMapping(value = "/hall/hallUpdate", method = RequestMethod.POST)
    public String hallUpdate(Hall hall) {
        hallService.updateHall(hall);
        return "redirect:/hall/hallList";
    }

    @RequestMapping(value = "/hall/hallAdd", method = RequestMethod.GET)
    public String hallAdd(){
        return "lbq/fbms/hallAdd";
    }

    @RequestMapping(value = "/hall/hallAddAction",method = RequestMethod.POST)
    public String hallAddAction(Hall hall){
        hallService.addHall(hall);
        return "redirect:/hall/hallList";
    }
}
