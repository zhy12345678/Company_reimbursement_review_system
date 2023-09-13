package mine.design.oa.controller;

import mine.design.oa.biz.UnRequestBiz;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.Map;
@Controller("unRequestController")
@RequestMapping("/comment")
public class UnRequestController {
    @Autowired
    private UnRequestBiz unRequestBiz;
    @RequestMapping("/unrequest_list")
    public String list(Map<String,Object> map){
        map.put("list",unRequestBiz.getAll());
        return "comment_unrequest_list";

    }
}
