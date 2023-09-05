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
 * Servlet implementation class FilterByBrand
 */
@WebServlet("/FilterByBrand")
public class FilterByBrand extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FilterByBrand() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		

		HttpSession ss = request.getSession();
		ss.setAttribute("checkfilter", 3);
		String jpql = "Select o from SanPham o where o.brand like ?1";

		String brand = "";
		if(request.getParameter("brand") != null) {
			brand = (String) request.getParameter("brand");
			ss.setAttribute("brand", brand);
		}
		
		sanPhamDAO dao = new sanPhamDAO();
		String indexPage = request.getParameter("index");
		if (indexPage == null) {
			indexPage = "1";
		}
		int index = Integer.parseInt(indexPage);

		int count = dao.getSLSanPham02(jpql,"%"+brand+"%");
		int endPage = count / 9;
		if (count % 9 != 0) {
			endPage++;
		}
		int index2 = (index - 1) * 9;
		
		List<SanPham> List = dao.SapXepTheoThuongHieu(brand,index2);
		
		request.setAttribute("ListSP", List);
		request.setAttribute("SP", endPage);
		
		request.getRequestDispatcher("/webSite/sanPham.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
