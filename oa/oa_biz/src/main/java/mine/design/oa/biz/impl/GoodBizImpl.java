package mine.design.oa.biz.impl;

import mine.design.oa.biz.GoodBiz;
import mine.design.oa.dao.EmployeeDao;
import mine.design.oa.dao.GoodDao;
import mine.design.oa.entity.Good;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service("goodBiz")
public class GoodBizImpl implements GoodBiz {
    @Autowired
    private GoodDao goodDao;
    public List<Good> getAll() {
        return goodDao.selectAll();
    }
}
