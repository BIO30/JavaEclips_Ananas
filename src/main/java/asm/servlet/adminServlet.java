package asm.servlet;

import java.io.IOException;
import java.util.List;
import java.util.regex.Pattern;

//import java.util.List;
//
//import javax.persistence.criteria.CriteriaBuilder;
//import javax.persistence.criteria.CriteriaQuery;
//import javax.persistence.criteria.Root;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.beanutils.BeanUtils;
//import org.hibernate.Session;
//import org.hibernate.SessionFactory;
//import org.hibernate.cfg.Configuration;

import asm.hibernateDAO.nguoiDungDAO;
import asm.model.NguoiDung;
import asm.model.SanPham;

/**
 * Servlet implementation class adminServlet
 */
@WebServlet({ "/adminServlet", "/user/index", "/user/edit/*", "/user/create", "/user/update", "/user/delete" })
public class adminServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public adminServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub

//    	SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
//    	Session session = sessionFactory.openSession();
//    	CriteriaBuilder builder = session.getCriteriaBuilder();
//    	CriteriaQuery<NguoiDung> criteriaQuery = builder.createQuery(NguoiDung.class);
//    	Root<NguoiDung> root = criteriaQuery.from(NguoiDung.class);
//    	criteriaQuery.select(root);
//    	List<NguoiDung> userList = session.createQuery(criteriaQuery).getResultList();
//    	

		req.setCharacterEncoding("utf-8");
		resp.setCharacterEncoding("utf-8");
		NguoiDung nguoiDung = new NguoiDung();
		nguoiDungDAO dao = new nguoiDungDAO();

		String uri = req.getRequestURI();
		if (uri.contains("edit")) {
			// user/edit/id
			String maND = uri.substring(uri.lastIndexOf("/") + 1);
			nguoiDung = dao.findById(maND);

		} else if (uri.contains("create")) {
			try {
				BeanUtils.populate(nguoiDung, req.getParameterMap());
				dao.create(nguoiDung);
				req.setAttribute("message", "Thêm mới thành công!");
			} catch (Exception e) {
				// TODO: handle exception
				req.setAttribute("message", "Thêm mới thất bại");
			}
		} else if (uri.contains("delete")) {
			try {
				String id = req.getParameter("maND");
				dao.remove(id);
				req.setAttribute("message", "Xóa thành công!");
			} catch (Exception e) {
				req.setAttribute("message", "Xóa Thất bại!");
			}

		} else {
			try {
				BeanUtils.populate(nguoiDung, req.getParameterMap());
				dao.update(nguoiDung);
				req.setAttribute("message", "Cập nhật thành công!");
			} catch (Exception e) {
				req.setAttribute("message", "Cập nhật thất bại");
			}
		}
		List<NguoiDung> list = dao.findAllNguoiDungRoleUser();
//		req.setAttribute("form", list);
		req.setAttribute("form", nguoiDung);
		req.setAttribute("items", list);
		req.getRequestDispatcher("/webSite/adminPage.jsp").forward(req, resp);

	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method st

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub

	}
}
