package mine.design.oa.entity;

import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;

public class Idea {
    private Integer id;
    private String idea_sn;
    private String idea_title;
    private String idea_content;
    @DateTimeFormat(pattern = "yyyy-MM-dd hh:mm")
    private Date idea_time;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getIdea_sn() {
        return idea_sn;
    }

    public void setIdea_sn(String idea_sn) {
        this.idea_sn = idea_sn;
    }


    public String getIdea_title() {
        return idea_title;
    }

    public void setIdea_title(String idea_title) {
        this.idea_title = idea_title;
    }

    public String getIdea_content() {
        return idea_content;
    }

    public void setIdea_content(String idea_content) {
        this.idea_content = idea_content;
    }

    public Date getIdea_time() {
        return idea_time;
    }

    public void setIdea_time(Date idea_time) {
        this.idea_time = idea_time;
    }

    private Employee creater;

    public Employee getEmployee() {
        return creater;
    }

    public void setEmployee(Employee employee) {
        this.creater = employee;
    }
}
