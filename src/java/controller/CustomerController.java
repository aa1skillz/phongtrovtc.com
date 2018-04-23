/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import DAO.CustomerDAO;
import entity.Customer;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author zeddh
 */

public class CustomerController extends HttpServlet {
    private static final long serialVesionUID=1L;
    private static String INSERT_OR_EDIT="customer.jsp";
    private static String LIST_CUSTOMER="list_customer.jsp";
    private CustomerDAO cdao;
    public CustomerController(){
        super();
        cdao=new CustomerDAO();
    }

  
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        doGet(request, response);
        doPost(request, response);
       
    }


    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String foward="";
        String action=request.getParameter("action");
      
        if(action.equalsIgnoreCase("delete")){
            int customerID=Integer.parseInt(request.getParameter("customerID"));
            cdao.deleteCustomer(customerID);
            foward=LIST_CUSTOMER;
            try {
                request.setAttribute("customer", cdao.getListCustomer());
            } catch (SQLException ex) {
                Logger.getLogger(CustomerController.class.getName()).log(Level.SEVERE, null, ex);
                ex.printStackTrace();
            }
        }
        else if(action.equalsIgnoreCase("edit")){
            foward=INSERT_OR_EDIT;
            int customerID=Integer.parseInt(request.getParameter("customerID"));
            Customer customer=cdao.getCustomerbyID(customerID);
            request.setAttribute("customerID", customer);
            
        }
        else if(action.equalsIgnoreCase("listCustomer")){  
            try {
                foward=LIST_CUSTOMER;
                request.setAttribute("customer", cdao.getListCustomer());
            } catch (SQLException ex) {
                Logger.getLogger(CustomerController.class.getName()).log(Level.SEVERE, null, ex);
            }
                
           
        }
        else {
            foward=INSERT_OR_EDIT;
        }
        RequestDispatcher view=request.getRequestDispatcher(foward);
        view.forward(request, response);
    }


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        Customer customer=new Customer();
        customer.setFullName(request.getParameter("fullname"));
        customer.setBirthDay(request.getParameter("birthday"));
        customer.setSex(request.getParameter("sex"));
        customer.setPhone(request.getParameter("phone"));
        customer.setAddress(request.getParameter("address"));
        customer.setIc(request.getParameter("ic"));
        customer.setAvatar(request.getParameter("avatar"));
        customer.setDelegate(request.getParameter("delegate"));
        customer.setStatus(request.getParameter("status"));
        customer.setCreated(request.getParameter("created"));
        customer.setUpdated(request.getParameter("update"));
        String customerid = request.getParameter("customerID");
         if(customerid == null || customerid.isEmpty())
        {
            try {
                cdao.insertCustomer(customer);
            } catch (SQLException ex) {
                Logger.getLogger(CustomerController.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        else
        {
            customer.setID(Integer.parseInt(customerid));
            cdao.updateCustomer(customer);
        }
         RequestDispatcher view =request.getRequestDispatcher(LIST_CUSTOMER);
        try {
            request.setAttribute("customer", cdao.getListCustomer());
        } catch (SQLException ex) {
            Logger.getLogger(CustomerController.class.getName()).log(Level.SEVERE, null, ex);
        }
         view.forward(request, response);
    }


}
