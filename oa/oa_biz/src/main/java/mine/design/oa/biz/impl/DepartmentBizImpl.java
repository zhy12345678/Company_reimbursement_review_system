package mine.design.oa.biz.impl;

import mine.design.oa.biz.DepartmentBiz;
import mine.design.oa.dao.DepartmentDao;
import mine.design.oa.entity.Department;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.context.annotation.Primary;
import org.springframework.stereotype.Service;

import java.util.List;
@Service("departmentBiz")
public class DepartmentBizImpl implements DepartmentBiz {
//注意注意注意注意注意啊啊啊啊这边是有问题的因为departmentDAo这不应该有qualiter不知道咋回事反正我加上了错了的话估计问题就在这
    @Autowired
    private DepartmentDao departmentDao;
//    因为是需要用到这个的
    public void add(Department department) {
        departmentDao.insert(department);
    }

    public void edit(Department department) {
        departmentDao.update(department);

    }

    public void remove(String sn) {
        departmentDao.delete(sn);

    }

    public Department get(String sn) {

        return departmentDao.select(sn);
    }

    public List<Department> getAll() {
        return departmentDao.selectALL();
    }
}
