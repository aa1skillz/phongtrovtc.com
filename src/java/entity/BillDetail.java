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
public class BillDetail {
    private int ID;
    private int idBill;
    private double waterBill;
    private double electricBill;
    private double serviceBill;

    public BillDetail() {
    }

    public BillDetail(int ID, int idBill, double waterBill, double electricBill, double serviceBill) {
        this.ID = ID;
        this.idBill = idBill;
        this.waterBill = waterBill;
        this.electricBill = electricBill;
        this.serviceBill = serviceBill;
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

    public double getWaterBill() {
        return waterBill;
    }

    public void setWaterBill(double waterBill) {
        this.waterBill = waterBill;
    }

    public double getElectricBill() {
        return electricBill;
    }

    public void setElectricBill(double electricBill) {
        this.electricBill = electricBill;
    }

    public double getServiceBill() {
        return serviceBill;
    }

    public void setServiceBill(double serviceBill) {
        this.serviceBill = serviceBill;
    }
    
}
