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
public class Service {
    private int ID;
    private String name;
    private int idTypeService;
    private boolean status;

    public Service() {
    }

    public Service(int ID, String name, int idTypeService, boolean status) {
        this.ID = ID;
        this.name = name;
        this.idTypeService = idTypeService;
        this.status = status;
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

    public int getIdTypeService() {
        return idTypeService;
    }

    public void setIdTypeService(int idTypeService) {
        this.idTypeService = idTypeService;
    }

    public boolean isStatus() {
        return status;
    }

    public void setStatus(boolean status) {
        this.status = status;
    }
    
}
