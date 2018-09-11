package com.google.buscador.venta.action;

import com.opensymphony.xwork2.ActionSupport;

public class RegistroUsuarioAction extends ActionSupport{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	private String correo, pass, pass2;
	
	public String registraUsuario(){
		System.out.println("correo: "+correo);
		System.out.println("pass: "+pass);
		System.out.println("pass2: "+pass2);
		return "SUCCESS";
	}

}
