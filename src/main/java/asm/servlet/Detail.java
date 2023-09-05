package asm.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import asm.hibernateDAO.sanPhamDAO;
//import asm.DAO.sanPhamDAO;
//import asm.entity.sanPham;
import asm.model.SanPham;

/**
 * Servlet implementation class Detail
 */
@WebServlet("/Detail")
public class Detail extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public Detail() {
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
		String name = request.getParameter("id");
		sanPhamDAO dao = new sanPhamDAO();
		SanPham sp = dao.findById(name);
		request.setAttribute("tensp", sp.getTenSP());
		request.setAttribute("hinh", sp.getHinhSP());
		request.setAttribute("masp", sp.getMaSP());
		request.setAttribute("giasp", sp.getGiaSP());
		request.getRequestDispatcher("/webSite/chiTiet.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.getRequestDispatcher("CartSVL").forward(request, response);

	}

}
