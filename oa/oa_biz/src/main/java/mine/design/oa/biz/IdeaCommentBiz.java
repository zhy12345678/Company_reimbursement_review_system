package mine.design.oa.biz;

import mine.design.oa.entity.Article;
import mine.design.oa.entity.IdeaComment;

import java.util.List;

public interface IdeaCommentBiz {
    void save(IdeaComment ideaComment);
    List<IdeaComment> getCommentbyId();
}
