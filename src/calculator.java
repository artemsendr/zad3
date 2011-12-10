

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.*;

/**
 * Servlet implementation class calculator
 */
@WebServlet("/calculator")
public class calculator extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public calculator() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	    Double a =  Double.parseDouble(request.getParameter("a"));
	    Double b =  Double.parseDouble(request.getParameter("b"));//*/
	    PrintWriter out  =  response.getWriter(); 
	    response.setContentType("text/html");
	    out.println("<html><body>");
	    out.println(a + "+" + b + "="+ (a+b));
	
	    out.println("</body></html>");
	}
}

