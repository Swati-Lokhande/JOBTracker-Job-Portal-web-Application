package servlet;

import dao.ApplicationDAO;
import model.Application;
import model.User;

import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;

@WebServlet("/applyjob")
public class ApplyJobServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        int jobId = Integer.parseInt(request.getParameter("jobId"));
        HttpSession session = request.getSession();
        User user = (User) session.getAttribute("user");

        Application app = new Application(user.getId(), jobId);
        boolean success = ApplicationDAO.applyToJob(app);

        if (success) {
            response.sendRedirect("applySuccess.jsp");
        } else {
            response.getWriter().println("Application failed.");
        }
    }
}
