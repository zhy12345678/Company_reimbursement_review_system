package mine.design.oa.dao;

import mine.design.oa.entity.Article;
import org.springframework.stereotype.Repository;

import java.util.List;
@Repository("articleDao")
public interface ArticleDao {
    void insert(Article article);
    List<Article> selectAll();
}
