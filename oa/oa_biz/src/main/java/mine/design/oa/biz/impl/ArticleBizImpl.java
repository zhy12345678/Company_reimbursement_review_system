package mine.design.oa.biz.impl;

import mine.design.oa.biz.ArticleBiz;
import mine.design.oa.dao.ArticleDao;
import mine.design.oa.entity.Article;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.List;

@Service("articleBiz")
public class ArticleBizImpl implements ArticleBiz {
    @Autowired
    private ArticleDao articleDao;

    public void save(Article article) {
        article.setArticle_time(new Date());
        articleDao.insert(article);
    }

    public List<Article> getAll() {
        return articleDao.selectAll();
    }
}
