package ua.in.vyshnya.mod8;

import javax.servlet.ServletException;
import javax.servlet.http.*;
import java.io.IOException;

/**
 * Created by pechenka on 04.11.16.
 */
public class ListServlet extends HttpServlet {

    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = req.getSession();

        if (req.getParameter("complete") != null) {
            session.removeAttribute(req.getParameter("complete"));
        } else if (req.getParameter("name") != null && req.getParameter("category") != null && !req.getParameter("name").isEmpty() && !req.getParameter("category").isEmpty()) {
            session.setAttribute(req.getParameter("name"), req.getParameter("category"));
        }

        req.getRequestDispatcher("home.jsp").forward(req, resp);
    }
}
