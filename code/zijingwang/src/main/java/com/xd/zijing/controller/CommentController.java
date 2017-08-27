package com.xd.zijing.controller;

import com.xd.zijing.entity.Page;
import com.xd.zijing.entity.Comment;
import com.xd.zijing.service.CommentService;
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
public class CommentController {

    @Autowired
    private CommentService commentService;

    @RequestMapping(value = "/comment/commentList",method = RequestMethod.GET)
    private String index(@RequestParam(name="cur",defaultValue = "1")int cur,Model model){
        Page page=commentService.queryComments(cur);
        model.addAttribute("page",page);
        return "lbq/fbms/commentList";
    }

    @RequestMapping(value = "/comment/{commentId}/commentDelete",method = RequestMethod.GET)
    public String commentDelete(@PathVariable("commentId")int commentId){
        commentService.deleteById(commentId);
        return "redirect:/comment/commentList";
    }

    @RequestMapping(value = "/comment/{commentId}/commentDetail",method = RequestMethod.GET)
    public String commentDetail(@PathVariable("commentId")int commentId,Model model){
        Comment comment=commentService.queryById(commentId);
        model.addAttribute("comment", comment);
        return "lbq/fbms/commentDetail";
    }


}
