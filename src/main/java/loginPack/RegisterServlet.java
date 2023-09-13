package loginPack;
 
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import el.dao.*;

@WebServlet("/RegisterServlet")
public class RegisterServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
    { 
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String phone = request.getParameter("phone");
        String mail = request.getParameter("mail");
        String role=request.getParameter("role");
        DAO dao = new DAO();

        if(dao.doRegister(username,password,phone,mail,role))
		{
			 response.sendRedirect("Success.jsp");
		}else 
		{
			response.sendRedirect("Failed.jsp");
		}
    }
}
