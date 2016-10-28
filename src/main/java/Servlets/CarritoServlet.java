package Servlets;

import Entidades.Producto;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "CarritoServlet", urlPatterns = {"/CarritoServlet"})
public class CarritoServlet extends HttpServlet {
    //HashMap listaProductos = new HashMap();
    List<Entidades.Producto> listaProductos = new ArrayList();
    
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
        
        for(Producto p : listaProductos){
            if( p.getNombre().equalsIgnoreCase(request.getParameter("lista"))){
                p.setCantidad(p.getCantidad()+1);
            }
        }
        
        request.getSession().setAttribute("listaProductos", listaProductos);
        
        RequestDispatcher rd = this.getServletContext().getRequestDispatcher("/CarritoCompra.jsp");
        rd.forward(request, response);
    }

    @Override
    public void init() throws ServletException {
        Producto p1 = new Producto();
        p1.setId(1);
        p1.setNombre("ASUS");
        p1.setPrecio(500);
        
        Producto p2 = new Producto();
        p2.setId(2);
        p2.setNombre("ACER");
        p2.setPrecio(450);
        
        Producto p3 = new Producto();
        p3.setId(3);
        p3.setNombre("Toshiba");
        p3.setPrecio(750);
        
        Producto p4 = new Producto();
        p4.setId(4);
        p4.setNombre("HP");
        p4.setPrecio(550);
        
        Producto p5 = new Producto();
        p5.setId(5);
        p5.setNombre("MEDION");
        p5.setPrecio(650);      

    listaProductos.add(p1);
    listaProductos.add(p2);
    listaProductos.add(p3);
    listaProductos.add(p4);
    listaProductos.add(p5);
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
