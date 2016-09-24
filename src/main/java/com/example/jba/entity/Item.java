package com.example.jba.entity;

import javax.persistence.*;
import java.util.Date;

/**
 * Created by george on 21.08.2016.
 */
@Entity
public class Item {

    @Id
    @GeneratedValue
    private Integer id;
    private String title;
    private String description;

    @Column(name = "published_date")
    private Date publishedDate;
    private String link;

    @ManyToOne
    @JoinColumn(name = "blog")
    private Blog blog;

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public Date getPublishedDate() {
        return publishedDate;
    }

    public void setPublishedDate(Date publishedDate) {
        this.publishedDate = publishedDate;
    }

    public String getLink() {
        return link;
    }

    public void setLink(String link) {
        this.link = link;
    }

    public Blog getBlog() {
        return blog;
    }

    public void setBlog(Blog blog) {
        this.blog = blog;
    }
}
