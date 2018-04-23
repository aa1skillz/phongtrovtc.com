/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entity;

/**
 *
 * @author zeddh
 */
public class Post {
    
    
    private String linkPost;
    private String title;
    private String des;
    private String image;
    private String conten;

    public Post() {
    }

    public Post(String linkPost, String title, String des,String image) {
        this.linkPost = linkPost;
        this.title = title;
        this.des = des;
        this.image = image;
       
    }

    public String getDes() {
        return des;
    }

    public String getLinkPost() {
        return linkPost;
    }

    public String getTitle() {
        return title;
    }

    public String getImage() {
        return image;
    }

    public String getConten() {
        return conten;
    }
    
}
