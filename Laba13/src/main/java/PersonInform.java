import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.StringWriter;
import java.util.Calendar;

/**
 * Created by Anna on 13.05.2017.
 */
@WebServlet("/AddInfAdress")
public class PersonInform extends HttpServlet {

    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String name = req.getParameter("Name");
        String lastName = req.getParameter("LastName");
        PersonInformation temp = new PersonInformation();
        req.getSession().setAttribute("Name", name);
        req.getSession().setAttribute("LastName", lastName);
        req.getSession().setAttribute("Time", temp.getDate());

        resp.sendRedirect("AddInfAdress.jsp");
    }
}
