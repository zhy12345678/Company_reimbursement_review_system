package mine.design.oa.dao;

import mine.design.oa.entity.IdeaComment;
import org.springframework.stereotype.Repository;

import java.util.List;
@Repository("ideaCommentDao")
public interface IdeaCommentDao {
    void insert(IdeaComment ideaComment);
    List<IdeaComment> selectById();
}
