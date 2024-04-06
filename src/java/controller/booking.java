/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import daoPackage.reservedao;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import utilPackage.bookedmail;
import utilPackage.sendSMS;

/**
 *
 * @author adala_06k8xra
 */
public class booking extends HttpServlet {

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
            out.println("<title>Servlet booking</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet booking at " + request.getContextPath() + "</h1>");
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
        
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String phone = request.getParameter("phone");
        String country = request.getParameter("country");
        String arrival = request.getParameter("arrival");
        String departure = request.getParameter("departure");
        String adult = request.getParameter("adult");
        String children = request.getParameter("children");
        String room = request.getParameter("room");
        String comment = request.getParameter("comment");
        
        
        HttpSession session = request.getSession(false);
        String member = (String) session.getAttribute("email");
        
        String ph = phone.substring(phone.length() - 9);
        
        if(phone.length() != 10)
        {
            
        }
        else
        {
            try
            {
                if(email != null && email.equals(member))
                {
                    reservedao tmp = new reservedao();
                    boolean rslt = tmp.reserve(name,email,phone,country,arrival,departure,adult,children,room,comment,member);
                    if(rslt == true)
                    {
                        response.sendRedirect("Reservation-S.jsp");
                        String msg = "Dear "+name+", Your Booking has been made Successfully! Thank you for Booking with Us We Hope to See You Soon!!!";
                        bookedmail b = new bookedmail();
                        b.sendmail(email,msg);
                        sendSMS s = new sendSMS();
                        s.sendsms(msg,ph);
                    }
                    else
                    {
                        response.sendRedirect("Reservation-F.jsp");
                    }
                }
                else
                {
                    member = null;
                    reservedao tmp = new reservedao();
                    boolean rslt = tmp.reserve(name,email,phone,country,arrival,departure,adult,children,room,comment,member);
                    if(rslt == true)
                    {
                        response.sendRedirect("Reservation-S.jsp");
                        String msg = "Dear "+name+", Your Booking has been made Successfully! Thank you for Booking with Us We Hope to See You Soon!!!";
                        bookedmail b = new bookedmail();
                        b.sendmail(email,msg);
                        sendSMS s = new sendSMS();
                        s.sendsms(msg,ph);
                    }
                    else
                    {
                        response.sendRedirect("Reservation-F.jsp");
                    }
                }
                
            }
            catch(Exception e)
            {
                e.printStackTrace();
            }
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
