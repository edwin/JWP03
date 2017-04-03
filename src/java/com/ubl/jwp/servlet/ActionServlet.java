/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ubl.jwp.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author edwin < edwinkun at gmail dot com >
 */
public class ActionServlet extends HttpServlet {
    
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // tangkap username dan password
        String nama = request.getParameter("nama");
        String password = request.getParameter("password");
        
        // misalkan berhasil, maka forward ke halaman success
        if(nama.equals("admin") && password.equals("admin")) {
            // url tidak berubah menjadi success.jsp, namun bisa send parameter dari servlet ke jsp
            request.setAttribute("nama", nama);
            request.getRequestDispatcher("success.jsp").forward(request, response);
        } else {
            // url berubah menjadi fail.jsp
            response.sendRedirect("fail.jsp");  
        }
        
    }
}
