package mine.design.oa.biz.impl;

import mine.design.oa.biz.IdeaCommentBiz;
import mine.design.oa.dao.IdeaCommentDao;
import mine.design.oa.dao.IdeaDao;
import mine.design.oa.entity.Idea;
import mine.design.oa.entity.IdeaComment;
import mine.design.oa.global.Contant;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.List;

@Service("ideaCommentBiz")
public class IdeaCommentBizImpl implements IdeaCommentBiz {
    @Autowired
    private IdeaCommentDao ideaCommentDao;

    public void save(IdeaComment ideaComment) {
        ideaComment.setComment_time(new Date());
        ideaComment.setComment_sn(Contant.COMMENT_SN);
        ideaCommentDao.insert(ideaComment);
    }

    public List<IdeaComment> getCommentbyId() {
        return ideaCommentDao.selectById();
    }
}
