package asm.servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.beanutils.BeanUtils;
import org.eclipse.jdt.internal.compiler.ast.StringLiteral;

import asm.hibernateDAO.CartDao;
import asm.hibernateDAO.sanPhamDAO;
import asm.model.GioHang;
import asm.model.SanPham;


/**
 * Servlet implementation class CartSVL
 */
@WebServlet("/CartSVL")
public class CartSVL extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CartSVL() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
			String MaSP =(String) request.getParameter("idsp");
			String SL = request.getParameter("SL");
			String Size = request.getParameter("Size");
		
	
		CartDao dao = new CartDao();
		sanPhamDAO daoSP = new sanPhamDAO(); 
		try {
			if(SL.equals("")) {
				SL = "1";
			}
			
			if(Size.equals("")) {
				Size = "43";
			}
		} catch (Exception e) {
			// TODO: handle exception
		}
		
		
		if(MaSP!=null) {
			if(dao.findById(MaSP)!=null) {
				SanPham sp = daoSP.findById(MaSP);
				GioHang cart = new GioHang();
				cart.setMaND("ND001");
				cart.setMaSP(MaSP);
				cart.setHinhSP(sp.getHinhSP());
				cart.setGiaSP(sp.getGiaSP());
				cart.setSize(Integer.parseInt(Size));
				cart.setSoLuong(Integer.parseInt(SL));
				cart.setTenSP(sp.getTenSP());
				dao.update(cart);
			}
			else{
				SanPham sp = daoSP.findById(MaSP);
				GioHang cart = new GioHang();
				cart.setMaND("ND001");
				cart.setMaSP(MaSP);
				cart.setHinhSP(sp.getHinhSP());
				cart.setGiaSP(sp.getGiaSP());
				cart.setSize(Integer.parseInt(Size));
				cart.setSoLuong(Integer.parseInt(SL));
				cart.setTenSP(sp.getTenSP());
				dao.create(cart);			
			}
			
		}
		List<GioHang> list = dao.findAll();
		request.setAttribute("List", list);
		
		String count = String.valueOf(dao.CountCart()) ;
		request.setAttribute("countCart", count);
		request.getRequestDispatcher("/webSite/gioHang1.jsp").forward(request, response);
		
		
	}


	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
