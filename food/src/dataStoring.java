

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
 * Servlet implementation class dataStoring
 */
@WebServlet("/dataStoring")
public class dataStoring extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public dataStoring() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String naml=request.getParameter("inputName");
		String phnl=request.getParameter("inputPhone");
		String maill=request.getParameter("inputEmail");
		String pwdl=request.getParameter("inputPassword");
		String add1l=request.getParameter("inputAddress1");
		String add2l=request.getParameter("inputAddress2");
		String cityl=request.getParameter("inputCity");
		String statel=request.getParameter("inputState");
		String zipl=request.getParameter("inputZip");
		String grcl=request.getParameter("gridCheck");
		String typel=request.getParameter("defaultExampleRadios");
		//System.out.println(naml+phnl+maill+pwdl+add1l+add2l+cityl+statel+zipl+grcl+typel);
		
		//Integer.parseInt
				try{  
					Class.forName("com.mysql.jdbc.Driver");  
					Connection con=DriverManager.getConnection(  
					"jdbc:mysql://localhost:3307/dbjdbc","root","");  
										
					PreparedStatement stmt=con.prepareStatement("insert into foodtable values(?,?,?,?,?,?,?,?,?,?,?,'pending')");  
					stmt.setString(1,naml);  
					stmt.setString(2,phnl);  
					stmt.setString(3,maill);
					stmt.setString(4,pwdl);
					stmt.setString(5,add1l);
					stmt.setString(6,add2l);
					stmt.setString(7,cityl);
					stmt.setString(8,statel);
					stmt.setString(9,zipl);
					stmt.setString(10,grcl);
					stmt.setString(11,typel);
					
	  
					int i=stmt.executeUpdate();
					
					
					if(i>0){
						response.sendRedirect("index.jsp");
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

		
		
		//response.sendRedirect("index.jsp");
		
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
	}

}
