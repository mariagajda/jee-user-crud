package pl.coderslab.users;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet("/user/edit")
public class UserEdit extends HttpServlet {
    private final UserDao userDao = new UserDao();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        User userToUpdate = userDao.read(id);
        request.setAttribute("user", userToUpdate);
        getServletContext().getRequestDispatcher("/users/edit.jsp")
                .forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        String userName = request.getParameter("userName");
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        User user = new User();
        user.setId(id);
        user.setUserName(userName);
        user.setEmail(email);
        user.setPassword(password);
        userDao.update(user);
        response.sendRedirect(request.getContextPath() + "/user/list");


    }
}
