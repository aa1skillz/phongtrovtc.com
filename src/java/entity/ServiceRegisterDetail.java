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
public class ServiceRegisterDetail {
    private int ID;
    private int idServiceRegister;
    private int idService;

    public ServiceRegisterDetail() {
    }

    public ServiceRegisterDetail(int ID, int idServiceRegister, int idService) {
        this.ID = ID;
        this.idServiceRegister = idServiceRegister;
        this.idService = idService;
    }

    public int getID() {
        return ID;
    }

    public void setID(int ID) {
        this.ID = ID;
    }

    public int getIdServiceRegister() {
        return idServiceRegister;
    }

    public void setIdServiceRegister(int idServiceRegister) {
        this.idServiceRegister = idServiceRegister;
    }

    public int getIdService() {
        return idService;
    }

    public void setIdService(int idService) {
        this.idService = idService;
    }
    
}
