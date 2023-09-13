package mine.design.oa.biz.impl;

import mine.design.oa.biz.ReportBiz;
import mine.design.oa.dao.ReportDao;
import mine.design.oa.entity.Idea;
import mine.design.oa.entity.Report;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.List;


@Service("reportBiz")
public class ReportBizImpl implements ReportBiz {
    @Autowired
    private ReportDao reportDao;


    public void save(Report report) {
        report.setReport_time(new Date());
        reportDao.insert(report);
    }

    public List<Report> getAll() {
        return reportDao.selectAll();
    }
}
