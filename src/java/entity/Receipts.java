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
public class Receipts {
    private int ID;
    private int idCustomer;
    private int idMember;
    private int idRoom;
    private Timestamp start;
    private Timestamp leave;
    private double deposits;
    private Timestamp created;
    private Timestamp updated;

    public Receipts() {
    }

    public Receipts(int ID, int idCustomer, int idMember, int idRoom, Timestamp start, Timestamp leave, double deposits, Timestamp created, Timestamp updated) {
        this.ID = ID;
        this.idCustomer = idCustomer;
        this.idMember = idMember;
        this.idRoom = idRoom;
        this.start = start;
        this.leave = leave;
        this.deposits = deposits;
        this.created = created;
        this.updated = updated;
    }

    public int getID() {
        return ID;
    }

    public void setID(int ID) {
        this.ID = ID;
    }

    public int getIdCustomer() {
        return idCustomer;
    }

    public void setIdCustomer(int idCustomer) {
        this.idCustomer = idCustomer;
    }

    public int getIdMember() {
        return idMember;
    }

    public void setIdMember(int idMember) {
        this.idMember = idMember;
    }

    public int getIdRoom() {
        return idRoom;
    }

    public void setIdRoom(int idRoom) {
        this.idRoom = idRoom;
    }

    public Timestamp getStart() {
        return start;
    }

    public void setStart(Timestamp start) {
        this.start = start;
    }

    public Timestamp getLeave() {
        return leave;
    }

    public void setLeave(Timestamp leave) {
        this.leave = leave;
    }

    public double getDeposits() {
        return deposits;
    }

    public void setDeposits(double deposits) {
        this.deposits = deposits;
    }

    public Timestamp getCreated() {
        return created;
    }

    public void setCreated(Timestamp created) {
        this.created = created;
    }

    public Timestamp getUpdated() {
        return updated;
    }

    public void setUpdated(Timestamp updated) {
        this.updated = updated;
    }
    
}
