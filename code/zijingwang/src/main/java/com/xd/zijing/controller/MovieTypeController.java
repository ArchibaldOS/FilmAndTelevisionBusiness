package com.xd.zijing.controller;

import com.xd.zijing.entity.Page;
import com.xd.zijing.entity.MovieType;
import com.xd.zijing.service.MovieTypeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

/**
 * Created by lenovo on 2017/8/22.
 */
@Controller
public class MovieTypeController {

    @Autowired
    private MovieTypeService movieTypeService;

    @RequestMapping(value = "/movieType/movieTypeList",method = RequestMethod.GET)
    private String index(@RequestParam(name="cur",defaultValue = "1")int cur,Model model){
        Page page=movieTypeService.queryMoviesTypes(cur);
        model.addAttribute("page",page);
        return "lbq/fbms/movieTypeList";
    }

    @RequestMapping(value = "/movieType/{movieTypeId}/movieTypeDelete",method = RequestMethod.GET)
    public String movieTypeDelete(@PathVariable("movieTypeId")int movieTypeId){
        movieTypeService.deleteById(movieTypeId);
        return "redirect:/movieType/movieTypeList";
    }

    @RequestMapping(value = "/movieType/{movieTypeId}/movieTypeDetail",method = RequestMethod.GET)
    public String movieTypeDetail(@PathVariable("movieTypeId")int movieTypeId,Model model){
        MovieType movieType=movieTypeService.queryById(movieTypeId);
        model.addAttribute("movieType",movieType);
        return "lbq/fbms/movieTypeDetail";
    }

    @RequestMapping(value = "/movieType/{movieTypeId}/movieTypeDetailUpdate",method = RequestMethod.POST)
    public String movieTypeDetailUpdate(@PathVariable("movieTypeId")int movieTypeId,Model model){
        MovieType movieType=movieTypeService.queryById(movieTypeId);
        model.addAttribute("movieType",movieType);
        return "lbq/fbms/movieTypeDetailUpdate";
    }

    @RequestMapping(value = "/movieType/movieTypeUpdate",method = RequestMethod.POST)
    public String movieTypeUpdate(MovieType movieType){
        movieTypeService.updateMovieType(movieType);
        return "redirect:/movieType/movieTypeList";
    }

    @RequestMapping(value = "/movieType/movieTypeAdd",method = RequestMethod.GET)
    public String movieTypeAdd(){
        return "lbq/fbms/movieTypeAdd";
    }

    @RequestMapping(value = "/movieType/movieTypeAddAction",method = RequestMethod.POST)
    public String movieTypeAddAction(MovieType movieType){
        movieTypeService.addMovieType(movieType);
        return "redirect:/movieType/movieTypeList";
    }
}
