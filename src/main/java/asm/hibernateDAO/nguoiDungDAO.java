package asm.hibernateDAO;


import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.TypedQuery;

import asm.model.NguoiDung;
import asm.utils.Utils;

public class nguoiDungDAO {
	private EntityManager em = Utils.getEntityManager();

	@Override
	protected void finalize() throws Throwable {
		em.close();
		super.finalize();
	}

	public NguoiDung create(NguoiDung entity) {
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

	public NguoiDung update(NguoiDung entity) {
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

	public NguoiDung remove(String maND) {
		NguoiDung entity = this.findById(maND);
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

	public NguoiDung findById(String maND) {
		NguoiDung entity = em.find(NguoiDung.class, maND);
		return entity;
	}

	public List<NguoiDung> findAll() {
		String jpql = "SELECT o FROM SanPham o";
		TypedQuery<NguoiDung> query = em.createQuery(jpql, NguoiDung.class);
		List<NguoiDung> list = query.getResultList();
		return list;
	}
	public List<NguoiDung> findAllNguoiDung() {
		String jpql = "SELECT o FROM NguoiDung o";
		TypedQuery<NguoiDung> query = em.createQuery(jpql, NguoiDung.class);
		List<NguoiDung> list = query.getResultList();
		return list;
	}
	
	
	public List<NguoiDung> findAllNguoiDungRoleUser() {
		String jpql = "SELECT o FROM NguoiDung o where o.role = 0";
		TypedQuery<NguoiDung> query = em.createQuery(jpql, NguoiDung.class);
//		query.setParameter(0, Role);
		List<NguoiDung> list = query.getResultList();
		return list;
	}


	public NguoiDung checkLogin(String Email, String Pass) {
		String sql = "SELECT o FROM NguoiDung o WHERE o.email = ?0 AND o.matKhau = ?1";
		TypedQuery<NguoiDung> query = em.createQuery(sql, NguoiDung.class);
		query.setParameter(0, Email);
		query.setParameter(1, Pass);
		List<NguoiDung> result = query.getResultList();
		if (result.isEmpty()) {
			return null;
		} 
		return result.get(0);
	}
}
