package com.google.buscador.venta.action;

import java.util.List;

import com.google.buscador.venta.bean.UsuarioBean;
import com.google.buscador.venta.daos.ModeloUsuarioDAO;

public class Prueba {
public static void main(String arg[]){
	List<UsuarioBean> data=new ModeloUsuarioDAO().lista(); 
	for(UsuarioBean m: data)
		System.out.println(m.getNom()+"\t"+
						   m.getMail());
}
}
