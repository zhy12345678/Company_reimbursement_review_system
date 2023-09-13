package mine.design.oa.biz;

import mine.design.oa.entity.Idea;

import java.util.List;

public interface IdeaBiz {
    void save(Idea idea);
    List<Idea> getAll();
}
