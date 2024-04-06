/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import daoPackage.checkemaildao;
import daoPackage.registerdao;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.user;
import utilPackage.registermail;

/**
 *
 * @author adala_06k8xra
 */
public class register extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet register</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet register at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        //processRequest(request, response);
        response.setContentType("text/html;Charset=UTF-8");
        PrintWriter out = response.getWriter();
        
        String email = request.getParameter("email");
        String fname = request.getParameter("first_name");
        String lname = request.getParameter("last_name");
        String phone = request.getParameter("phno");
        String pass = request.getParameter("password");
        String pass1 = request.getParameter("re_password");
        
        
        if ((pass != null && pass1 != null) && pass.equals(pass1))
            
        {
            try
        {
            checkemaildao tmp1 = new checkemaildao();
            boolean rslt1 = tmp1.checkemail(email);
            if(rslt1==false)
            {
                user u = new user();
                u.setemail(email);
                u.setfname(fname);  
                u.setlname(lname);    
                u.setphone(phone);
                u.setpassword(pass);
                registerdao tmp = new registerdao();
                boolean rslt = tmp.register(u);
                if(rslt==true)
                {
                    RequestDispatcher rs = request.getRequestDispatcher("Registration-S.jsp");
                    rs.forward(request, response);
                    String msg = "Dear "+fname+" "+lname+", Your Registration is Successful! Thank you for Registering with Us!!!";
                    registermail r = new registermail();
                    r.regmail(email,msg);
                }
                else
                {
                    RequestDispatcher rs = request.getRequestDispatcher("Registration-F.jsp");
                    rs.forward(request, response);
                }
            }
            else
            {
                RequestDispatcher rs = request.getRequestDispatcher("Registration-email.jsp");
                rs.forward(request, response);
            }
            
        }
        catch(Exception se)
        {
            se.printStackTrace();  
        }
        }
        else
        {
            RequestDispatcher rs = request.getRequestDispatcher("Registration-wrong.jsp");
                rs.forward(request, response);
        }
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
