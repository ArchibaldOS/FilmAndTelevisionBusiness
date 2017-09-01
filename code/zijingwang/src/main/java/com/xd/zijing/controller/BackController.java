package com.xd.zijing.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class BackController {

	@RequestMapping(value="/backIndex",method=RequestMethod.GET)
	public String get(){
		return "backIndex";
	}

    @RequestMapping(value="/hotmovie",method=RequestMethod.GET)
    public String hotmovie(){
        return "ylds/hotmovie";
    }

}
