package com.xd.zijing.controller;

import com.xd.zijing.entity.Page;
import com.xd.zijing.entity.Version;
import com.xd.zijing.service.VersionService;
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
public class VersionController {

    @Autowired
    private VersionService versionService;

    @RequestMapping(value = "/version/versionList",method = RequestMethod.GET)
    private String index(@RequestParam(name="cur",defaultValue = "1")int cur,Model model){
        Page page=versionService.queryVersions(cur);
        model.addAttribute("page",page);
        return "lbq/fbms/versionList";
    }

    @RequestMapping(value = "/version/{versionId}/versionDelete",method = RequestMethod.GET)
    public String versionDelete(@PathVariable("versionId")int versionId){
        versionService.deleteById(versionId);
        return "redirect:/version/versionList";
    }

    @RequestMapping(value = "/version/{versionId}/versionDetail",method = RequestMethod.GET)
    public String versionDetail(@PathVariable("versionId")int versionId,Model model){
        Version version=versionService.queryById(versionId);
        model.addAttribute("version",version);
        return "lbq/fbms/versionDetail";
    }

    @RequestMapping(value = "/version/{versionId}/versionDetailUpdate",method = RequestMethod.POST)
    public String versionDetailUpdate(@PathVariable("versionId")int versionId,Model model){
        Version version=versionService.queryById(versionId);
        model.addAttribute("version",version);
        return "lbq/fbms/versionDetailUpdate";
    }

    @RequestMapping(value = "/version/versionUpdate",method = RequestMethod.POST)
    public String versionUpdate(Version version){
        versionService.updateVersion(version);
        return "redirect:/version/versionList";
    }

    @RequestMapping(value = "/version/versionAdd",method = RequestMethod.GET)
    public String versionAdd(){
        return "lbq/fbms/versionAdd";
    }

    @RequestMapping(value = "/version/versionAddAction",method = RequestMethod.POST)
    public String versionAddAction(Version version){
        versionService.addVersion(version);
        return "redirect:/version/versionList";
    }
}
