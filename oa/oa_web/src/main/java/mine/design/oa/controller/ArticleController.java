package mine.design.oa.controller;

import mine.design.oa.biz.ArticleBiz;
import mine.design.oa.biz.IdeaBiz;
import mine.design.oa.entity.Article;
import mine.design.oa.entity.Employee;
import mine.design.oa.entity.Idea;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;
import java.util.Map;
@Controller("articleController")
@RequestMapping("/comment")
public class ArticleController {
    @Autowired
    private ArticleBiz articleBiz;
    @RequestMapping("/article_list")
    public String list(Map<String,Object> map){
        map.put("list",articleBiz.getAll());
        return "comment_article_list";
    }

    @RequestMapping("/article_to_add")
    public String toAdd(Map<String,Object> map){
        map.put("article",new Article());
        return "article_add";
    }

    @RequestMapping("/article_add")
    public String add(HttpSession session, Article article){
        Employee employee=(Employee)session.getAttribute("employee");
        article.setArticle_sn(employee.getSn());
        articleBiz.save(article);
        return "redirect:article_list";
    }
}
