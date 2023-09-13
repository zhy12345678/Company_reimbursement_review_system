package mine.design.oa.controller;

import mine.design.oa.biz.GoodBiz;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.Map;
@Controller("goodController")
@RequestMapping("/comment")
public class GoodController {
    @Autowired
    private GoodBiz goodBiz;
    @RequestMapping("/good_list")
    public String list(Map<String,Object> map){
        map.put("list",goodBiz.getAll());
        return "comment_good_list";
    }
}
