package controller;

import service.AutomovilService;

import jakarta.servlet .*;

import jakarta.servlet.http .*;

import java.io.IOException;
@jakarta.servlet.annotation.WebServlet("/AutomovilServlet")

public class AutomovilServlet extends HttpServlet {

protected void doGet(HttpServletRequest request , HttpServletResponse response)

throws ServletException , IOException {

AutomovilService service = new AutomovilService ();

request.setAttribute("hashMap", service.getHashMap ());

request.setAttribute("linkedHashMap", service.getLinkedHashMap ());

request.setAttribute("treeMap", service.getTreeMap ());

RequestDispatcher rd = request.getRequestDispatcher("listarAutos.jsp");

rd.forward(request , response);

}

}
