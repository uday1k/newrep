

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class updatevol
 */
@WebServlet("/updatevol")
public class updatevol extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public updatevol() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try{ 
			String emailid = request.getParameter("email");
			String chg = request.getParameter("change");
			Class.forName("com.mysql.jdbc.Driver"); 
			Connection con=DriverManager.getConnection(  
			"jdbc:mysql://localhost:3307/dbjdbc","root","");
			
			if(chg.equals("valid"))
			{

			PreparedStatement stmt=con.prepareStatement("update foodtable set Legal='invalid' where Email=?");  
			stmt.setString(1,emailid);
			stmt.executeUpdate();
		System.out.println("i am executing updated");
		response.sendRedirect("acceptedlist.jsp");
			}
			else if(chg.equals("invalid"))
			{
				PreparedStatement stmt=con.prepareStatement("update foodtable set Legal='valid' where Email=?");  
				stmt.setString(1,emailid);
				stmt.executeUpdate();
			System.out.println("i am executing updated2");
			response.sendRedirect("rejectlist.jsp");

			}
			else
			{
				String vorinv = request.getParameter("validorinvalid");
				System.out.println("hahahahahaha"+vorinv);
				if(vorinv.equals("vv"))
				{
					PreparedStatement stmt=con.prepareStatement("update foodtable set Legal='valid' where Email=?");  
					stmt.setString(1,emailid);
					stmt.executeUpdate();
				System.out.println("i am executing updated2");
				response.sendRedirect("pending.jsp");

				}
				else
				{
					PreparedStatement stmt=con.prepareStatement("update foodtable set Legal='invalid' where Email=?");  
					stmt.setString(1,emailid);
					stmt.executeUpdate();
				System.out.println("i am executing updated2");
				response.sendRedirect("pending.jsp");

				}
			}
			
			
		}
		catch(Exception e){ System.out.println(e);
		response.sendError(404);}
		
		

		//response.getWriter().append("Served at: ").append(request.getContextPath());
	}

}
