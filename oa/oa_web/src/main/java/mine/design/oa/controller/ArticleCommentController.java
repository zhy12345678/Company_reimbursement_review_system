package mine.design.oa.controller;

import mine.design.oa.biz.ArticleCommentBiz;
import mine.design.oa.entity.Article;
import mine.design.oa.entity.ArticleComment;
import mine.design.oa.entity.Employee;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;
import java.util.Map;
@Controller("articleCommentController")
@RequestMapping("/commentmin")
public class ArticleCommentController {
    @Autowired
    private ArticleCommentBiz articleCommentBiz;
    @RequestMapping("/article_comment_list")
    public String list(Map<String,Object> map){
        map.put("list",articleCommentBiz.getCommentbyId());
        return "comment_article_comment_list";
    }

    @RequestMapping("/article_comment_to_add")
    public String toAdd(Map<String,Object> map){
        map.put("articleComment",new ArticleComment());
        return "article_comment_add";
    }

    @RequestMapping("/article_comment_add")
    public String add(HttpSession session, ArticleComment articleComment, Article article){
        Employee employee=(Employee)session.getAttribute("employee");
        articleComment.setCommentfolk_sn(employee.getSn());
        articleCommentBiz.save(articleComment);
        return "redirect:article_comment_list";
    }
}
