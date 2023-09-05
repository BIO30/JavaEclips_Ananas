package asm.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.catalina.startup.ClassLoaderFactory.Repository;

import asm.hibernateDAO.nguoiDungDAO;
import asm.hibernateDAO.sanPhamDAO;
import asm.model.NguoiDung;
//import asm.DAO.nguoiDungDAO;
//import asm.DAO.sanPhamDAO;
//import asm.entity.nguoiDung;
//
//import asm.entity.sanPham;
import asm.model.SanPham;

/**
 * Servlet implementation class sanPhamServlet
 */
@WebServlet("/sanPhamServlet")
public class sanPhamServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public sanPhamServlet() {
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
		
		HttpSession ss = request.getSession();
		ss.setAttribute("checkfilter", null);
		
		String indexPage = request.getParameter("index");
		if (indexPage == null) {
			indexPage = "1";
		}
		int index = Integer.parseInt(indexPage);
		sanPhamDAO dao = new sanPhamDAO();
		int count = dao.getSLSanPham();
		int endPage = count / 9;
		if (count % 9 != 0) {
			endPage++;
		}
		int index2 = (index - 1) * 9;

		List<SanPham> list = dao.PhanSP(index2);

		// set data to jsp
		request.setAttribute("ListSP", list);
		request.setAttribute("SP", endPage);
		request.getRequestDispatcher("/webSite/sanPham.jsp").forward(request, response);

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
//		// Set mã hóa cho ký tự request và response là utf-8
//		request.setCharacterEncoding("utf-8");
//		response.setCharacterEncoding("utf-8");
//
//		// Lấy giá trị của username và password từ form login
//		String username = request.getParameter("txtEmail");
//		String password = request.getParameter("txtpass");
//		String method = request.getMethod();
//		// Gọi phương thức Login từ class nguoiDungDAO để thực hiện đăng nhập
//		nguoiDungDAO dao = new nguoiDungDAO();
//		NguoiDung nd = dao.checkLogin(username, password);
//
//		// Set attribute "nd" với giá trị là mã người dùng vào request để sử dụng trong
//		// jsp
//		request.setAttribute("nd", nd.getMaND());
//
//		// Kiểm tra kết quả đăng nhập và set attribute "message" để thông báo kết quả
//		// đăng nhập
////
////		if (nd.getMaND() == null) {
////		    request.setAttribute("message", "Đăng nhập thất bại");
////		} else {
////		 if(nd.getMaND() != null && nd.getRole() == true) {
////		        // Nếu là admin thì chuyển hướng sang trang admin
////		        response.sendRedirect("adminServlet");
//////		        return; // Dừng thực hiện các câu lệnh tiếp theo
////		    }else if(nd.getMaND() != null && nd.getRole() == false){
////		        request.setAttribute("message", "Đăng nhập thành công");
//////		        response.sendRedirect("/webSite/sanPham.jsp");
////		    }
////		}
//		if (nd.getMaND() == null) {
//			request.setAttribute("message", "Dang nhap that bai");
//			// request.getRequestDispatcher("adminServlet").forward(request, response);
//
//		} else {
//
//			request.setAttribute("message", "Dang nhap thanh cong");
//			//request.getRequestDispatcher("adminServlet").forward(request, response);
//		}
//
//		// Lấy giá trị của trang hiện tại và set giá trị mặc định là 1 nếu không có giá
//		// trị trang được gửi lên
//		String indexPage = request.getParameter("index");
//		if (indexPage == null) {
//			indexPage = "1";
//		}
//
//		// Chuyển đổi giá trị indexPage sang kiểu số nguyên
//		int index = Integer.parseInt(indexPage);
//
//		// Gọi phương thức getSLSanPham từ class sanPhamDAO để lấy số lượng sản phẩm
//		// trong cơ sở dữ liệu
//		sanPhamDAO dao2 = new sanPhamDAO();
//		int count = dao2.getSLSanPham();
//
//		// Tính toán số trang kết thúc của sản phẩm
//		int endPage = count / 9;
//		if (count % 9 != 0) {
//			endPage++;
//		}
//
//		// Tính toán vị trí bắt đầu của sản phẩm hiện tại
//		int index2 = (index - 1) * 9;
//
//		// Gọi phương thức phanSP từ class sanPhamDAO để lấy danh sách sản phẩm
//		List<SanPham> list = dao2.PhanSP(index2);
//
//		// Set attribute "ListSP" với giá trị là danh sách sản phẩm vào request để sử
//		// dụng trong jsp
//		request.setAttribute("ListSP", list);
//
//		// Set attribute "SP" với giá trị là số trang kết thúc của sản phẩm vào request
//		// để sử dụng trong jsp
//		request.setAttribute("SP", endPage);
//
//		// Forward request và response tới trang sanPham.jsp để hiển thị danh sách sản
//		// phẩm
//		request.getRequestDispatcher("/webSite/sanPham.jsp").forward(request, response);
		doGet(request, response);
	}
}
