package mine.design.oa.biz;


import mine.design.oa.entity.ArticleComment;

import java.util.List;

public interface ArticleCommentBiz {
    void save(ArticleComment articleComment);
    List<ArticleComment> getCommentbyId();
}
