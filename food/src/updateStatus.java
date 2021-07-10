

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
 * Servlet implementation class updateStatus
 */
@WebServlet("/updateStatus")
public class updateStatus extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public updateStatus() {
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
			String chgemailid = request.getParameter("changedby");
			String timest = request.getParameter("ts");
			System.out.println(emailid);
			System.out.println(chg);
			System.out.println(chgemailid);
			Class.forName("com.mysql.jdbc.Driver"); 
			Connection con=DriverManager.getConnection(  
			"jdbc:mysql://localhost:3307/dbjdbc","root","");
			
			if(chg.equals("accept"))
			{

			PreparedStatement stmt=con.prepareStatement("update relatfoodtable set CurrentStatus='accepted',StatusChangedBy=? where (Email=? and Time=?)");  
			stmt.setString(1,chgemailid);
			stmt.setString(2,emailid);
			stmt.setString(3,timest);
			stmt.executeUpdate();
		System.out.println("i am executing updated current status");
		response.sendRedirect("voluser.jsp");
		
			}
			else if(chg.equals("reject"))
			{

			PreparedStatement stmt=con.prepareStatement("update relatfoodtable set CurrentStatus='rejected',StatusChangedBy=? where (Email=? and Time=?)");  
			stmt.setString(1,chgemailid);
			stmt.setString(2,emailid);
			stmt.setString(3,timest);
			stmt.executeUpdate();
		System.out.println("i am executing updated current status");
		response.sendRedirect("voluser.jsp");
		
			}
			else
			{

			PreparedStatement stmt=con.prepareStatement("update relatfoodtable set CurrentStatus='completed',StatusChangedBy=? where (Email=? and Time=?)");  
			stmt.setString(1,chgemailid);
			stmt.setString(2,emailid);
			stmt.setString(3,timest);
			stmt.executeUpdate();
		System.out.println("i am executing updated current status");
		response.sendRedirect("voluser.jsp");
		
			}
		}
			catch(Exception e){ System.out.println(e);
			response.sendError(404);}
			
			
			
			
			
			
			

		
		//response.getWriter().append("Served at: ").append(request.getContextPath());
	}

}
