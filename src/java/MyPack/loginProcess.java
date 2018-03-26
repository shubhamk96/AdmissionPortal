/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package MyPack;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
import javax.servlet.*;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author sbk11
 */
public class loginProcess extends HttpServlet {

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
        PrintWriter out = response.getWriter();
        try {
            /* TODO output your page here. You may use following sample code. */
            RequestDispatcher rd;
            HttpSession session = null;
            HttpSession session1 = null;
            String username = request.getParameter("form-username");
            String password = request.getParameter("form-password");
            String userid = null;
            String userpwd = null;
            Connection con = null;
            PreparedStatement s;
            ResultSet rs;

            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            con = DriverManager.getConnection("jdbc:sqlserver://localhost:1433;databaseName=AdmPortal", "sa", "1234");

            try {
                s = con.prepareStatement("SELECT *  FROM  dbo.temp_login where uname=\'" + username + "\';",ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_UPDATABLE);
                //rs = s.executeQuery("SELECT *  FROM  dbo.temp_login where uname=\'" + username + "\';",ResultSet.CONCUR_UPDATABLE,ResultSet.FETCH_REVERSE);
                rs = s.executeQuery();
                out.println("exe -2");
                rs.first();
                out.println("exe -1 ");
                if (rs.first() == false) {
                    request.setAttribute("errorMessage", "Invalid user or password in");
                    rd = request.getRequestDispatcher("LoginReg.jsp");
                    rd.forward(request, response);
                } else {
                    out.println(rs.getString(2));
                    userid = rs.getString(2).trim();
                    out.println(rs.getString(3));
                    userpwd = rs.getString(3).trim();
                }
                out.println("exe 0");
            } catch (Exception e) {
                out.println("The following error occured :\n" + e);
            }
           /* out.println("form - username : "+username);
            out.println("form - password : "+password);
            out.println("userid : "+userid);
            out.println("userpwd : "+userpwd);
            */
           if ((userid.equals(username)) && (userpwd.equals(password))) {
                session = request.getSession(true);
                
                session.setAttribute("uname", userid);
                out.println("exe 1");
                response.sendRedirect("userHome.jsp");
            } else if ((!userid.equalsIgnoreCase(username)) && (!userpwd.equals(password))) {
                session.invalidate();
                out.println("exe 2");
                request.setAttribute("errorMessage", "Invalid user or password");
                rd = request.getRequestDispatcher("LoginReg.jsp");
                rd.forward(request, response);
            }
        } catch (Exception e) {
            out.println("The following error occured ::\n" + e);
        
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
        processRequest(request, response);
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
