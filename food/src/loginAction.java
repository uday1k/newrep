

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class loginAction
 */
@WebServlet("/loginAction")
public class loginAction extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public loginAction() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String emaild=request.getParameter("exampleInputEmail");
		String pwdd=request.getParameter("exampleInputPassword");
		
		if(emaild.equals("admin") && pwdd.equals("admin"))
			response.sendRedirect("admin.jsp");
		else {

		//Integer.parseInt
				try{  
					Class.forName("com.mysql.jdbc.Driver");  
					Connection con=DriverManager.getConnection(  
					"jdbc:mysql://localhost:3307/dbjdbc","root","");  
					//here sonoo is database name, root is username and password  
					//Statement stmt=con.createStatement();  
					//ResultSet rs=stmt.executeQuery("select * from jdbctable where namd=? and pwdd=?");
					
					PreparedStatement stmt=con.prepareStatement("select * from foodtable where Email=? and Password=? and Legal='valid'");  
					stmt.setString(1,emaild);  
					stmt.setString(2,pwdd);  
					
					
					ResultSet result = stmt.executeQuery();
					
					
					if(result.next()){
						
						
						HttpSession session = request.getSession();
						session.setAttribute("saemail",emaild);
					      session.setAttribute("sapass",pwdd);
					      //session.setAttribute("uemail",result.getString("email"));
					     // session.setAttribute("uphno",result.getString("phone")); 
					      //System.out.println("no pro");
					     if((result.getString("Type")).equals("donar"))
					     {
					    	 
						response.sendRedirect("donate.jsp");
					     }
					     else
					     {
					    	 response.sendRedirect("voluser.jsp");
					     }
					     
					     
						//System.out.println("inserted failed");

					}
					else
					{
						
						response.sendRedirect("login.jsp");
						
						//System.out.println("inserted failed");
						

					}
					
				}catch(Exception e){ System.out.println("2"+e);
				response.sendRedirect("error.jsp");
				}
		
		//response.getWriter().append("Served at: ").append(request.getContextPath());
	}

}
}
