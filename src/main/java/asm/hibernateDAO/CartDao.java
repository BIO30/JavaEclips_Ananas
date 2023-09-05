package asm.hibernateDAO;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.TypedQuery;

import asm.model.GioHang;
import asm.utils.Utils;

public class CartDao {
	private EntityManager em = Utils.getEntityManager();

	@Override
	protected void finalize() throws Throwable {
		em.close();
		super.finalize();
	}

	public GioHang create(GioHang entity) {
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

	public GioHang update(GioHang entity) {
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

	public GioHang remove(String id) {
		GioHang entity = this.findById(id);
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

	public GioHang findById(String id) {
		GioHang entity = em.find(GioHang.class, id);
		return entity;
	}

	public List<GioHang> findAll() {
		String jpql = "SELECT o FROM GioHang o";
		TypedQuery<GioHang> query = em.createQuery(jpql, GioHang.class);
		List<GioHang> list = query.getResultList();
		return list;
	}
	
	public int CountCart() {
		List<GioHang> list = this.findAll();
		int count = 0;
		for(GioHang x : list) {
			count++;
		}
		return count;
	}
}
