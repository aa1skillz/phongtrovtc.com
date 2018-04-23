/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entity;

import java.sql.Timestamp;

/**
 *
 * @author zeddh
 */
public class Customer {
    private int ID;
    private String fullName;
    private String birthDay;
    private String sex;
    private String phone;
    private String address;
    private String ic;
    private String avatar;
    private String delegate;
    private String status;
    private String created;
    private String updated;

    public Customer() {
    }

    public Customer(int ID, String fullName, String birthDay, String sex, String phone, String address, String ic, String avatar, String delegate, String status, String created, String updated) {
        this.ID = ID;
        this.fullName = fullName;
        this.birthDay = birthDay;
        this.sex = sex;
        this.phone = phone;
        this.address = address;
        this.ic = ic;
        this.avatar = avatar;
        this.delegate = delegate;
        this.status = status;
        this.created = created;
        this.updated = updated;
    }

    public int getID() {
        return ID;
    }

    public void setID(int ID) {
        this.ID = ID;
    }

    public String getFullName() {
        return fullName;
    }

    public void setFullName(String fullName) {
        this.fullName = fullName;
    }

    public String getBirthDay() {
        return birthDay;
    }

    public void setBirthDay(String birthDay) {
        this.birthDay = birthDay;
    }

    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getIc() {
        return ic;
    }

    public void setIc(String ic) {
        this.ic = ic;
    }

    public String getAvatar() {
        return avatar;
    }

    public void setAvatar(String avatar) {
        this.avatar = avatar;
    }

    public String getDelegate() {
        return delegate;
    }

    public void setDelegate(String delegate) {
        this.delegate = delegate;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public String getCreated() {
        return created;
    }

    public void setCreated(String created) {
        this.created = created;
    }

    public String getUpdated() {
        return updated;
    }

    public void setUpdated(String updated) {
        this.updated = updated;
    }

    

 
    
}
