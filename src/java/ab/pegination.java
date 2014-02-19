/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package ab;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author JEBA ROJI
 */
public class pegination extends HttpServlet {

    /**
     * Processes requests for both HTTP
     * <code>GET</code> and
     * <code>POST</code> methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, ClassNotFoundException, SQLException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try {
            /* TODO output your page here. You may use following sample code. */
//            out.println("<!DOCTYPE html>");
//            out.println("<html>");
//            out.println("<head>");
//            out.println("<title>Servlet pegination</title>");            
//            out.println("</head>");
//            out.println("<body>");
//            out.println("<h1>Servlet pegination at " + request.getContextPath() + "</h1>");
//            out.println("</body>");
//            out.println("</html>");
            String a = request.getParameter("a");
        
        int pagenum;
        if (a != null) {
            pagenum = Integer.parseInt(a);
        } else {
            pagenum = 1;
        }
         
            int k=3;
           
           Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
            Connection con = DriverManager.getConnection("jdbc:odbc:regis", "", "");
            PreparedStatement ps = con.prepareStatement("declare @rowsperpage int=?, @pagenumber int = ? \n"
                    + "select photoname from(select photoname,row_number() over (order by id) as ROWNUM from photo)as SOD where SOD.RowNum between ((@pagenumber-1)*@rowsperpage)+1 and @rowsperpage*(@pagenumber)");
                 ps.setInt(1,k);
                 ps.setInt(2, pagenum);
            ResultSet rs = ps.executeQuery();
              String abc[] = new String[3];
               int i = 0;
            while(rs.next())
                 
                      {
                          
                          abc[i] = rs.getString(1);
                          /*abc1[i]=rs.getString(2);
                          abc2[i] = rs.getString(3);
                          abc3[i] = rs.getString(4);*/
                          i++;
                      }
              request.setAttribute("abcd",abc);
            /*request.setAttribute("abc1",abc1);
            request.setAttribute("abc2",abc2);
             request.setAttribute("abc3",abc3);*/        
                RequestDispatcher rd = getServletContext().getRequestDispatcher("/viewgallery.jsp");
             rd.forward(request, response);
             
        }
        catch(Exception e)
        {
            e.printStackTrace();
        }
        }
    

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP
     * <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(pegination.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(pegination.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    /**
     * Handles the HTTP
     * <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(pegination.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(pegination.class.getName()).log(Level.SEVERE, null, ex);
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
