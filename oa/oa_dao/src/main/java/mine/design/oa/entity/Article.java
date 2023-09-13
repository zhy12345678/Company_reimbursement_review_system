package mine.design.oa.entity;

import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;

public class Article {

    private Integer id;
    private String article_sn;
    private String article_tltle;
    private String article_content;
    private String article_link;
    @DateTimeFormat(pattern = "yyyy-MM-dd hh:mm")
    private Date article_time;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getArticle_sn() {
        return article_sn;
    }

    public void setArticle_sn(String article_sn) {
        this.article_sn = article_sn;
    }

    public String getArticle_tltle() {
        return article_tltle;
    }

    public void setArticle_tltle(String article_tltle) {
        this.article_tltle = article_tltle;
    }

    public String getArticle_content() {
        return article_content;
    }

    public void setArticle_content(String article_content) {
        this.article_content = article_content;
    }

    public String getArticle_link() {
        return article_link;
    }

    public void setArticle_link(String article_link) {
        this.article_link = article_link;
    }

    public Date getArticle_time() {
        return article_time;
    }

    public void setArticle_time(Date article_time) {
        this.article_time = article_time;
    }

    private Employee creater;

    public Employee getEmployee() {
        return creater;
    }

    public void setEmployee(Employee employee) {
        this.creater = employee;
    }
}
