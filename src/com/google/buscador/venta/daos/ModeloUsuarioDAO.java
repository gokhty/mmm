package com.google.buscador.venta.daos;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.Query;
import javax.persistence.TypedQuery;

import com.google.buscador.venta.bean.UsuarioBean;

public class ModeloUsuarioDAO implements UsuarioDAO {
	EntityManagerFactory fabrica=Persistence.
			createEntityManagerFactory("PE");
	@Override
	public int registrarUsuario(UsuarioBean u) {
		
		return 0;
	}
	
	public List<UsuarioBean>lista(){
		EntityManager manager=fabrica.createEntityManager();
		String hql="from UsuarioBean m where m.nom like '%a%'";
		TypedQuery<UsuarioBean> q=manager.createQuery(hql,
				UsuarioBean.class);
		return q.getResultList();
	}

}
