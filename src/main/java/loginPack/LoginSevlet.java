package loginPack;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import el.dao.DAO;
@WebServlet("/LoginServlet")
public class LoginSevlet extends HttpServlet 
{   
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		PrintWriter pw=response.getWriter();
		String username=request.getParameter("username");
		String password=request.getParameter("password");
		
		HttpSession session= request.getSession(); 
		DAO dao=new DAO();
		String role=dao.loginCheck(username, password);
		
		if (role!=null && role.equalsIgnoreCase("user")) 
		{
			session.setAttribute("name",username);
			session.setAttribute("role",role);
			response.sendRedirect("UserHome.jsp");
		}else if (role!=null && role.equalsIgnoreCase("admin"))
		{
			session.setAttribute("username",username);
			session.setAttribute("role",role);
			response.sendRedirect("AdminHome.jsp");
		}
		else {
				response.sendRedirect("Login.jsp?msg=InvalidUseridOrPassword");
			}
		}
	    
	}


