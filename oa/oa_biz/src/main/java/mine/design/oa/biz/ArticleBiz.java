package mine.design.oa.biz;

import mine.design.oa.entity.Article;

import java.util.List;

public interface ArticleBiz {
    void save(Article article);
    List<Article> getAll();
}
