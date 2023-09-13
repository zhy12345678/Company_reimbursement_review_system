package mine.design.oa.dao;


import mine.design.oa.entity.Idea;
import org.springframework.stereotype.Repository;

import java.util.List;
@Repository("ideaDao")
public interface IdeaDao {
    void insert(Idea idea);
    List<Idea> selectAll();
}
