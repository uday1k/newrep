

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
 * Servlet implementation class donarDetailsInsert
 */
@WebServlet("/donarDetailsInsert")
public class donarDetailsInsert extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public donarDetailsInsert() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String ss=request.getParameter("exampleRadios");
		HttpSession session=request.getSession(false);
        String sessionmail=(String)session.getAttribute("saemail");  
		
		try{  
			Class.forName("com.mysql.jdbc.Driver");  
			Connection con=DriverManager.getConnection(  
			"jdbc:mysql://localhost:3307/dbjdbc","root","");
			
			PreparedStatement stmt=con.prepareStatement("insert into relatfoodtable values(?,?,'pending','None',DEFAULT)");  
			stmt.setString(1,sessionmail); 
			if(ss.equals("curr"))
			{
				PreparedStatement stmt1=con.prepareStatement("select * from foodtable where Email=?");  
				stmt1.setString(1,sessionmail);  
				ResultSet result1 = stmt1.executeQuery();
				result1.next();
				stmt.setString(2,result1.getString("Address1"));	
			}
			else
			{
				ss=request.getParameter("chgadd");
				stmt.setString(2,ss);
				//System.out.println(ss);
				
			}
			
			
			
			
						int i=stmt.executeUpdate();
			
			
			if(i>0){
				response.sendRedirect("donatinguser.jsp");
				//System.out.println("inserted failed");

			}
			else
			{
				response.sendRedirect("error.jsp");
				//System.out.println("inserted failed");
				

			}
			
		}catch(Exception e){ System.out.println(e);
		response.sendRedirect("error.jsp");
		response.sendError(404);}


		
		
		//response.getWriter().append("Served at: ").append(request.getContextPath());
	}

}
