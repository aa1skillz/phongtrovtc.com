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
public class TypeRoom {
    private int ID;
    private String types;
    private double price;
    private double area;
    private String postion;

    public TypeRoom() {
    }

    public TypeRoom(int ID, String types, double price, double area, String postion) {
        this.ID = ID;
        this.types = types;
        this.price = price;
        this.area = area;
        this.postion = postion;
    }

    public int getID() {
        return ID;
    }

    public void setID(int ID) {
        this.ID = ID;
    }

    public String getTypes() {
        return types;
    }

    public void setTypes(String types) {
        this.types = types;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public double getArea() {
        return area;
    }

    public void setArea(double area) {
        this.area = area;
    }

    public String getPostion() {
        return postion;
    }

    public void setPostion(String postion) {
        this.postion = postion;
    }
    
}
