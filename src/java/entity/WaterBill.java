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
public class WaterBill {
    private int ID;
    private int idBill;
    private Timestamp created;
    private int firstIndex;
    private int lastIndex;

    public WaterBill() {
    }

    public WaterBill(int ID, int idBill, Timestamp created, int firstIndex, int lastIndex) {
        this.ID = ID;
        this.idBill = idBill;
        this.created = created;
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

    public Timestamp getCreated() {
        return created;
    }

    public void setCreated(Timestamp created) {
        this.created = created;
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
