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
public class ElectricBill {
    private int ID;
    private int idBill;
    private int firstIndex;
    private int lastIndex;

    public ElectricBill() {
    }

    public ElectricBill(int ID, int idBill, int firstIndex, int lastIndex) {
        this.ID = ID;
        this.idBill = idBill;
        this.firstIndex = firstIndex;
        this.lastIndex = lastIndex;
    }

    public int getID() {
        return ID;
    }

    public void setID(int ID) {
        this.ID = ID;
    }

    public int getIdBill() {
        return idBill;
    }

    public void setIdBill(int idBill) {
        this.idBill = idBill;
    }

    public int getFirstIndex() {
        return firstIndex;
    }

    public void setFirstIndex(int firstIndex) {
        this.firstIndex = firstIndex;
    }

    public int getLastIndex() {
        return lastIndex;
    }

    public void setLastIndex(int lastIndex) {
        this.lastIndex = lastIndex;
    }
    
}
