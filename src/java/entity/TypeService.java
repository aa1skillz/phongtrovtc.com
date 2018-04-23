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
public class TypeService {
    private int ID;
    private String name;
    private double unitPrice;

    public TypeService() {
    }

    public TypeService(int ID, String name, double unitPrice) {
        this.ID = ID;
        this.name = name;
        this.unitPrice = unitPrice;
    }

    public int getID() {
        return ID;
    }

    public void setID(int ID) {
        this.ID = ID;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public double getUnitPrice() {
        return unitPrice;
    }

    public void setUnitPrice(double unitPrice) {
        this.unitPrice = unitPrice;
    }
    
}
