package kz.edu.astanait;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
@WebServlet("/adminlogin")
public class AdminLoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
	
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		String adminusername="admin";
		String adminpassword="mainadmin";
		
		if(username.equals(adminusername) && password.equals(adminpassword)) {
			response.sendRedirect("menu.jsp");
		}else
			response.sendRedirect("login.jsp");	
		}

}
