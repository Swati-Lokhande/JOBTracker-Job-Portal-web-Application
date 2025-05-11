package servlet;

import dao.UserDAO;
import model.User;

import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;

@WebServlet("/register")
public class RegisterServlet extends HttpServlet {
	@Override
	public void init() throws ServletException {
	    System.out.println("RegisterServlet initialized");
	}
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    	System.out.println("RegisterServlet triggered");
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String role = request.getParameter("role");

        User user = new User(username, password, role);
        boolean success = UserDAO.registerUser(user);

        if (success) {
            response.sendRedirect("login.jsp");
        } else {
            response.getWriter().println("Registration failed. Try a different username.");
        }
    }
}

