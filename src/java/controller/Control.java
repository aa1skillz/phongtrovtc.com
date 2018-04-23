/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import DAO.LoginDAO;
import entity.Users;
import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import tools.MD5;

/**
 *
 * @author zeddh
 */

public class Control extends HttpServlet {
   
    LoginDAO loginDAO = new LoginDAO();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        response.setCharacterEncoding("utf-8");
        
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
      
        String command = request.getParameter("command");
        String url = "";
        Users users = new Users();
        HttpSession session = request.getSession();

        switch (command) {

            case "login":
                users = loginDAO.login(request.getParameter("email"), MD5.encryption(request.getParameter("password")));
                //
                if (users != null) {
                    session.setAttribute("email", users);
                    url = "/home.jsp";

                } else {
                    request.setAttribute("error", "Tài khoản hoặc mật khẩu không đúng!");
                    url = "/login.jsp";
                }

                break;
        }

        RequestDispatcher rd = getServletContext().getRequestDispatcher(url);
        rd.forward(request, response);
        
       

    }
    

}
