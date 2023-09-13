package mine.design.oa.entity;

import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;

public class ArticleComment {
    private Integer id;
    private Integer comment_sn;
    private String commentfolk_sn;
    private String content;
    @DateTimeFormat(pattern = "yyyy-MM-dd hh:mm")
    private Date comment_time;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getComment_sn() {
        return comment_sn;
    }

    public void setComment_sn(Integer comment_sn) {
        this.comment_sn = comment_sn;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public Date getComment_time() {
        return comment_time;
    }

    public void setComment_time(Date comment_time) {
        this.comment_time = comment_time;
    }

    public String getCommentfolk_sn() {
        return commentfolk_sn;
    }

    public void setCommentfolk_sn(String commentfolk_sn) {
        this.commentfolk_sn = commentfolk_sn;
    }
    private Employee commenter;
    private Article article;

    public Employee getCommenter() {
        return commenter;
    }

    public void setCommenter(Employee commenter) {
        this.commenter = commenter;
    }

    public Article getArticle() {
        return article;
    }

    public void setArticle(Article article) {
        this.article = article;
    }
}
