package mine.design.oa.dao;

import mine.design.oa.entity.Report;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository("reportDao")
public interface ReportDao {
    void insert(Report report);
    List<Report> selectAll();
}
