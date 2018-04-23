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
public class ServiceRegister {
    private int ID;
    private int idCustomer;
    private int idRoom;
    private Timestamp created;

    public ServiceRegister() {
    }

    public ServiceRegister(int ID, int idCustomer, int idRoom, Timestamp created) {
        this.ID = ID;
        this.idCustomer = idCustomer;
        this.idRoom = idRoom;
        this.created = created;
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

    public int getIdRoom() {
        return idRoom;
    }

    public void setIdRoom(int idRoom) {
        this.idRoom = idRoom;
    }

    public Timestamp getCreated() {
        return created;
    }

    public void setCreated(Timestamp created) {
        this.created = created;
    }
    
}
