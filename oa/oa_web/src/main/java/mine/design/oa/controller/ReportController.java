package mine.design.oa.controller;


import mine.design.oa.biz.ReportBiz;
import mine.design.oa.entity.Employee;
import mine.design.oa.entity.Idea;
import mine.design.oa.entity.Report;
import mine.design.oa.global.Contant;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;
import java.util.Map;

@Controller("reportController")
@RequestMapping("/report")
public class ReportController {
    @Autowired
    private ReportBiz reportBiz;
    @RequestMapping("/report_list")
    public String list(Map<String,Object> map){
        map.put("list",reportBiz.getAll());
        return "report_list";
    }
    @RequestMapping("/to_add")
    public String toAdd(Map<String,Object> map){
        map.put("report",new Report());
        map.put("rlist", Contant.getTime());
        return "report_add";
    }

    @RequestMapping("/add")
    public String add(HttpSession session, Report report){
        Employee employee=(Employee)session.getAttribute("employee");
        report.setSn(employee.getSn());
        reportBiz.save(report);
        return "redirect:report_list";
    }



}
