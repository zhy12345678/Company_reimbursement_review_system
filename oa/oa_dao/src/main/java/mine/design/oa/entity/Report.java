package mine.design.oa.entity;

import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;

public class Report {
    private Integer id;
    private String sn;
    private String content;
    @DateTimeFormat(pattern = "yyyy-MM-dd hh:mm")
    private Date report_time;
    private String continue_time;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getSn() {
        return sn;
    }

    public void setSn(String sn) {
        this.sn = sn;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public Date getReport_time() {
        return report_time;
    }

    public void setReport_time(Date report_time) {
        this.report_time = report_time;
    }

    public String getContinue_time() {
        return continue_time;
    }

    public void setContinue_time(String continue_time) {
        this.continue_time = continue_time;
    }
    private Employee creater;

    public Employee getCreater() {
        return creater;
    }

    public void setCreater(Employee creater) {
        this.creater = creater;
    }
}
