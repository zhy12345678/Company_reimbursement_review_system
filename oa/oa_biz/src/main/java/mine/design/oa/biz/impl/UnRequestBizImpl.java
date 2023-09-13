package mine.design.oa.biz.impl;

import mine.design.oa.biz.UnRequestBiz;
import mine.design.oa.dao.UnRequestDao;
import mine.design.oa.entity.UnRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service("unRequestBiz")
public class UnRequestBizImpl implements UnRequestBiz {
    @Autowired
    private UnRequestDao unRequestDao;
    public List<UnRequest> getAll() {
        return unRequestDao.selectAll();
    }
}
