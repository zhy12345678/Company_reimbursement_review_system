package mine.design.oa.biz;

import mine.design.oa.entity.Department;
import mine.design.oa.entity.Employee;

import java.util.List;

public interface EmployeeBiz {
    void add(Employee employee);
    void edit(Employee employee);
    void remove(String sn);
    Employee get(String sn);
    List<Employee> getAll();

}
