package mine.design.oa.biz.impl;
import mine.design.oa.dao.ArticleCommentDao;
import mine.design.oa.biz.ArticleCommentBiz;
import mine.design.oa.entity.ArticleComment;
import mine.design.oa.global.Contant;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.List;
@Service("articleCommentBiz")
public class ArticleCommentBizImpl implements ArticleCommentBiz {
    @Autowired
    private ArticleCommentDao articleCommentDao;
    public void save(ArticleComment articleComment) {
        articleComment.setComment_time(new Date());
        articleComment.setComment_sn(Contant.COMMENT_Article);
        articleCommentDao.insert(articleComment);
    }

    public List<ArticleComment> getCommentbyId() {
        return articleCommentDao.selectById();
    }
}
