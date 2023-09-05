package asm.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import asm.hibernateDAO.sanPhamDAO;
import asm.model.SanPham;

/**
 * Servlet implementation class FilterByName
 */
@WebServlet("/FilterByName")
public class FilterByName extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public FilterByName() {
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

		HttpSession ss = request.getSession();
		ss.setAttribute("checkfilter", 1);
		
		sanPhamDAO dao = new sanPhamDAO();
		String indexPage = request.getParameter("index");
		if (indexPage == null) {
			indexPage = "1";
		}
		int index = Integer.parseInt(indexPage);

		int count = dao.getSLSanPham();
		int endPage = count / 9;
		if (count % 9 != 0) {
			endPage++;
		}
		int index2 = (index - 1) * 9;

		List<SanPham> List = dao.SapXepTheoTen(index2);

// set data to jsp
		request.setAttribute("ListSP", List);
		request.setAttribute("SP", endPage);


		request.getRequestDispatcher("/webSite/sanPham.jsp").forward(request, response);

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
