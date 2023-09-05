package asm.hibernateDAO;

import java.util.Iterator;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.TypedQuery;
import javax.persistence.Query;
import asm.model.SanPham;
import asm.utils.Utils;

public class sanPhamDAO {
	private EntityManager em = Utils.getEntityManager();

	@Override
	protected void finalize() throws Throwable {
		em.close();
		super.finalize();
	}

	public SanPham create(SanPham entity) {
		try {
			em.getTransaction().begin();
			em.persist(entity);
			em.getTransaction().commit();
			return entity;
		} catch (Exception e) {
			// TODO: handle exception
			em.getTransaction().rollback();
			throw new RuntimeException(e);
		}
	}

	public SanPham update(SanPham entity) {
		try {
			em.getTransaction().begin();
			em.merge(entity);
			em.getTransaction().commit();
			return entity;
		} catch (Exception e) {
			// TODO: handle exception
			em.getTransaction().rollback();
			throw new RuntimeException(e);
		}
	}

	public SanPham remove(String id) {
		SanPham entity = this.findById(id);
		try {
			em.getTransaction().begin();
			em.remove(entity);
			em.getTransaction().commit();
			return entity;
		} catch (Exception e) {
			// TODO: handle exception
			em.getTransaction().rollback();
			throw new RuntimeException(e);
		}
	}

	public SanPham findById(String id) {
		SanPham entity = em.find(SanPham.class, id);
		return entity;
	}

	public List<SanPham> findAll() {
		String jpql = "SELECT o FROM SanPham o";
		TypedQuery<SanPham> query = em.createQuery(jpql, SanPham.class);
		List<SanPham> list = query.getResultList();
		return list;
	}

	public static void main(String[] args) {
		sanPhamDAO dao = new sanPhamDAO();
		int count = dao.getSLSanPham();
		System.out.println(count);
	}

	public List<SanPham> PhanSP(int index) {
		String jpql = "SELECT o FROM SanPham o";
		TypedQuery<SanPham> query = em.createQuery(jpql, SanPham.class);
		query.setFirstResult(index);
		query.setMaxResults(9);
		List<SanPham> list = query.getResultList();
		return list;
	};

	public int getSLSanPham() {
		String jpql = "SELECT o FROM SanPham o";
		TypedQuery<SanPham> query = em.createQuery(jpql, SanPham.class);
		List<SanPham> i = query.getResultList();
		int count = 0;
		for (SanPham x : i) {
			count++;
		}
		return count;
	}
	
	
	public int getSLSanPham02(String jpql, Object...args ) {
		TypedQuery<SanPham> query = em.createQuery(jpql, SanPham.class);
		for(int i = 0; i < args.length ; i++) {
			query.setParameter(i+1, args[i]);
		}
		
		List<SanPham> list = query.getResultList();
		int count = 0;
		for (SanPham x : list) {
			count++;
		}
		return count;
	}
	
	public List<SanPham> SapXepTheoTen(int index){
		String jpql = "SELECT o FROM SanPham o order by o.tenSP";
		TypedQuery<SanPham> query = em.createQuery(jpql, SanPham.class);
		query.setFirstResult(index);
		query.setMaxResults(9);
		List<SanPham> list = query.getResultList();
		return list;
	}
	
	public List<SanPham> SapXepTheoGia(int Min, int Max, int index){
		String jpql = "SELECT o FROM SanPham o WHERE o.giaSP BETWEEN ?1 AND ?2 order by o.giaSP";
		TypedQuery<SanPham> query = em.createQuery(jpql, SanPham.class);
		query.setParameter(1, Min);
		query.setParameter(2, Max);
		query.setFirstResult(index);
		query.setMaxResults(9);
		List<SanPham> list = query.getResultList();
		return list;
	}
	
	public List<SanPham> SapXepTheoThuongHieu(String Brand,int index){
		String jpql = "Select o from SanPham o where o.brand like ?1";
		TypedQuery<SanPham> query = em.createQuery(jpql, SanPham.class);
		query.setParameter(1, "%"+Brand+"%");
		query.setFirstResult(index);
		query.setMaxResults(9);
		List<SanPham> list = query.getResultList();
		return list;
	}

}
