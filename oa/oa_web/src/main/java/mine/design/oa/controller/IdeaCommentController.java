package mine.design.oa.controller;


import mine.design.oa.biz.IdeaCommentBiz;
import mine.design.oa.entity.Employee;
import mine.design.oa.entity.IdeaComment;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;
import java.util.Map;



@Controller("ideaCommentController")
@RequestMapping("/commentmin")
public class IdeaCommentController {
    @Autowired
    private IdeaCommentBiz ideaCommentBiz;
    @RequestMapping("/idea_comment_list")
    public String list(Map<String,Object> map){
        map.put("list",ideaCommentBiz.getCommentbyId());
        return "idea_comment_list";
    }
    @RequestMapping("/idea_comment_to_add")
    public String toAdd(Map<String,Object> map){
        map.put("ideaComment",new IdeaComment());
        return "idea_comment_action";
    }
    @RequestMapping("/idea_comment_add")
    public String add(HttpSession session, IdeaComment ideaComment){
        Employee employee=(Employee)session.getAttribute("employee");
        ideaComment.setCommentfolk_sn(employee.getName());
        ideaCommentBiz.save(ideaComment);
        return "redirect:idea_comment_list";
    }
}
