package asm.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import asm.hibernateDAO.nguoiDungDAO;
import asm.model.NguoiDung;

/**
 * Servlet implementation class LoginControlSVL
 */
@WebServlet("/LoginControlSVL")
public class LoginControlSVL extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public LoginControlSVL() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
//		response.getWriter().append("Served at: ").append(request.getContextPath());
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		String username = (String) request.getParameter("txtEmail");
		String password = (String) request.getParameter("txtpass");
		nguoiDungDAO dao = new nguoiDungDAO();
		NguoiDung nd = dao.checkLogin(username, password);
		
		HttpSession session =  request.getSession();
		if(nd != null) {
			if(nd.getRole() == true) {
				int i = 1;
				session.setAttribute("checklog", i);
			}else if(nd.getRole() == false){
				int i = 0;
				session.setAttribute("checklog", i);
			}
		}
		
		
		
		
		if(nd == null) {
			session.setAttribute("result", "Dang nhap that bai");
			request.getRequestDispatcher("sanPhamServlet").forward(request, response);

		}else
		{
			if(nd != null) {
				if(nd.getRole() == true) {
					session.setAttribute("result", null);
					session.setAttribute("UserID", nd.getMaND());
					request.getRequestDispatcher("adminServlet").forward(request, response);
				}else if(nd.getRole() == false){
					session.setAttribute("result", null);
					session.setAttribute("UserID", nd.getMaND());
					request.getRequestDispatcher("userServlet").forward(request, response);
				}
			}
			
		}
		
	}

}
