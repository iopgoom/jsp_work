

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/exam")
public class gugu extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html;charset=UTF-8");
		
		PrintWriter out = response.getWriter();
		
		String action = request.getParameter("action");
		String limit = request.getParameter("limit");
		int limitI = Integer.parseInt(limit);
		
		if (action.equals("printGuGu1")) {
			for (int i = 2; i < 10 ;i++) {
				for (int j = 1; j < 10 ;j++) {
					out.println(i + "*" + j + "=" + i * j + "</br>" );
				}
			}
		} else if (action.equals("printGuGu2")) {
			for (int i = 2; i < limitI ;i++) {
				for (int j = 1; j <= limitI ;j++) {
					out.println(i + "*" + j + "=" + i * j + "</br>" );
				}
			}
		}
		
		out.println("hi");
	}
}
