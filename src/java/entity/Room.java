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
public class Room {
    private int ID;
    private int idTypeRoom;
    private String code;
    private String name;
    private String address;
    private int state;
    private boolean status;

    public Room() {
    }

    public Room(int ID, int idTypeRoom, String code, String name, String address, int state, boolean status) {
        this.ID = ID;
        this.idTypeRoom = idTypeRoom;
        this.code = code;
        this.name = name;
        this.address = address;
        this.state = state;
        this.status = status;
    }

    public int getID() {
        return ID;
    }

    public void setID(int ID) {
        this.ID = ID;
    }

    public int getIdTypeRoom() {
        return idTypeRoom;
    }

    public void setIdTypeRoom(int idTypeRoom) {
        this.idTypeRoom = idTypeRoom;
    }

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public int getState() {
        return state;
    }

    public void setState(int state) {
        this.state = state;
    }
    public String getStatus(){
        if(isStatus())
            return "Phòng trống";
        else
            return "Phòng đã đầy";
    }
    public boolean isStatus() {
        return status;
    }

    public void setStatus(boolean status) {
        this.status = status;
    }
    
}
