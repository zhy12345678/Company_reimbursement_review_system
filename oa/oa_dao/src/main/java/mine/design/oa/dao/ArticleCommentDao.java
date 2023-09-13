package mine.design.oa.dao;

import mine.design.oa.entity.Article;
import mine.design.oa.entity.ArticleComment;
import org.springframework.stereotype.Repository;

import java.util.List;
@Repository("articleComment")
public interface ArticleCommentDao {
    void insert(ArticleComment articleComment);
    List<ArticleComment> selectById();
}
