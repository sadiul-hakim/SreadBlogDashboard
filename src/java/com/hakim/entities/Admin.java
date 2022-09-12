package com.hakim.entities;

import java.sql.Timestamp;

/**
 *
 * @author Hakim
 */
public class Admin {
    private int id;
    private String name;
    private String admin_password;
    private String pic;
    private Timestamp creation_time;

    public Admin(int id, String name, String admin_password, String pic, Timestamp creation_time) {
        this.id = id;
        this.name = name;
        this.admin_password = admin_password;
        this.pic = pic;
        this.creation_time = creation_time;
    }

    public Admin() {
    }

    public Admin(String name, String admin_password) {
        this.name = name;
        this.admin_password = admin_password;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getAdmin_password() {
        return admin_password;
    }

    public void setAdmin_password(String admin_password) {
        this.admin_password = admin_password;
    }

    public String getPic() {
        return pic;
    }

    public void setPic(String pic) {
        this.pic = pic;
    }

    public Timestamp getCreation_time() {
        return creation_time;
    }

    public void setCreation_time(Timestamp creation_time) {
        this.creation_time = creation_time;
    }
    
    
}
