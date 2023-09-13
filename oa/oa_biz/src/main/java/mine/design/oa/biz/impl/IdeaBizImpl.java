package mine.design.oa.biz.impl;

import mine.design.oa.biz.IdeaBiz;
import mine.design.oa.dao.IdeaDao;
import mine.design.oa.entity.Idea;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.List;
@Service("ideaBiz")
public class IdeaBizImpl implements IdeaBiz {
    @Autowired
    private IdeaDao ideaDao;
    public List<Idea> getAll() {
        return ideaDao.selectAll();
    }

    public void save(Idea idea) {
        idea.setIdea_time(new Date());
        ideaDao.insert(idea);
    }

}
