package ch06_basic;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/ch06/login")
public class Ex05_login extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RequestDispatcher rd = request.getRequestDispatcher("/ch06/loginForm.jsp");
		rd.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String uid = request.getParameter("uid");
		String pwd = request.getParameter("pwd");
		
		String result = "";
		String url = "";
		RequestDispatcher rd = null;
		if(uid.equals("james") && pwd.equals("1234")) {
			result="제임스님 환영합니다.";
			url = "/jw/ch06/loginResult.jsp";
		}
		else if(!uid.equals("james")) {
			result="잘못된 아이디 입니다.";
			url = "/jw/ch06/login";
		}
		else if(!pwd.equals("1234")) {
			result="패스워드가 틀렸습니다.";
			url = "/jw/ch06/login";
		}
		rd = request.getRequestDispatcher("/ch06/alertMessage.jsp");
		request.setAttribute("result",result);
		request.setAttribute("url",url);
		rd.forward(request, response);
		
//		rd = request.getRequestDispatcher("/ch06/loginResult.jsp");
//		request.setAttribute("uid", uid);
//		request.setAttribute("pwd", pwd);
//		request.setAttribute("result",result);
//		rd.forward(request, response);
	}


}
