package mine.design.oa.biz;

import mine.design.oa.entity.Report;

import java.util.List;

public interface ReportBiz {
    void save(Report report);
    List<Report> getAll();
}
