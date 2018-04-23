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
public class Bill {
    private int ID;
    private int idRoom;
    private int idCustomer;
    private Timestamp created;
    private int idWaterBill;
    private int idElectricBill;

    public Bill() {
    }

    public Bill(int ID, int idRoom, int idCustomer, Timestamp created, int idWaterBill, int idElectricBill) {
        this.ID = ID;
        this.idRoom = idRoom;
        this.idCustomer = idCustomer;
        this.created = created;
        this.idWaterBill = idWaterBill;
        this.idElectricBill = idElectricBill;
    }

    public int getID() {
        return ID;
    }

    public void setID(int ID) {
        this.ID = ID;
    }

    public int getIdRoom() {
        return idRoom;
    }

    public void setIdRoom(int idRoom) {
        this.idRoom = idRoom;
    }

    public int getIdCustomer() {
        return idCustomer;
    }

    public void setIdCustomer(int idCustomer) {
        this.idCustomer = idCustomer;
    }

    public Timestamp getCreated() {
        return created;
    }

    public void setCreated(Timestamp created) {
        this.created = created;
    }

    public int getIdWaterBill() {
        return idWaterBill;
    }

    public void setIdWaterBill(int idWaterBill) {
        this.idWaterBill = idWaterBill;
    }

    public int getIdElectricBill() {
        return idElectricBill;
    }

    public void setIdElectricBill(int idElectricBill) {
        this.idElectricBill = idElectricBill;
    }
    
    
}
