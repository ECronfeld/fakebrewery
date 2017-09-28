package controller;

import appLayer.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "/signup")
public class signup extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        User user = new User();
        if(user.isValidUSerCredentials(request.getParameter("loginname"), request.getParameter("password"))){
            request.setAttribute("Errormessage", "Username is already in use!");
            request.getRequestDispatcher("/signup.jsp").forward(request,response);
        } else {
            if(user.makeNewUser(request.getParameter("loginname"), request.getParameter("password"))){
        }   else {

        }
    }}

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
