package mine.design.oa.controller;

import mine.design.oa.biz.IdeaBiz;
import mine.design.oa.entity.Employee;
import mine.design.oa.entity.Idea;
import mine.design.oa.global.Contant;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;
import java.util.Map;
@Controller("ideaController")
@RequestMapping("/comment")
public class IdeaController {
    @Autowired
    private IdeaBiz ideaBiz;
    @RequestMapping("/idea_list")
    public String list(Map<String,Object> map){
        map.put("list",ideaBiz.getAll());
        return "comment_idea_list";
    }

    @RequestMapping("/to_add")
    public String toAdd(Map<String,Object> map){
        map.put("idea",new Idea());
        return "idea_add";
    }

    @RequestMapping("/add")
    public String add(HttpSession session,Idea idea){
        Employee employee=(Employee)session.getAttribute("employee");
        idea.setIdea_sn(employee.getSn());
        ideaBiz.save(idea);
        return "redirect:idea_list";
    }


}
