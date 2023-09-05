package asm.hibernateDAO;

import javax.persistence.EntityManager;

import asm.utils.Utils;

public class connectDAO {
	public static final EntityManager entityManager = Utils.getEntityManager();

	@SuppressWarnings("deprecation")
	@Override
	protected void finalize() throws Throwable {
		entityManager.close();
		super.finalize();
	}
}
