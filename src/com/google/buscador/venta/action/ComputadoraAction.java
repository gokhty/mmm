package com.google.buscador.venta.action;

import java.util.ArrayList;
import java.util.List;

import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.apache.struts2.convention.annotation.Result;

import com.google.buscador.venta.bean.ComputadoraBean;
import com.google.buscador.venta.bean.MarcaBean;
import com.google.buscador.venta.service.ComputadoraServiceImpl;
import com.opensymphony.xwork2.ActionSupport;

@SuppressWarnings("serial")
@ParentPackage("dawi")
public class ComputadoraAction extends ActionSupport{

	//Para la carga del combo
	private List<MarcaBean> lstMarca = new ArrayList<MarcaBean>();
	
	//Para el registro de computadora
	private ComputadoraBean computadora;
	
	//Para la consulta de computadora
	private List<ComputadoraBean> lstComputadora = new ArrayList<ComputadoraBean>();
	private String filtro;
	
	private String mensajeValida;
	
	
	@Action(value="/registraCompu",
			results={@Result(name="success",location="/registraComputadora.jsp")
	})
	public String registraComputadora(){
		ComputadoraServiceImpl service = new ComputadoraServiceImpl();
		try {
			int x=service.insertaComputadora(computadora);
			if(x==1){
				mensajeValida = "<div class='alert alert-danger fade in'>"
						+ "<span class='glyphicon glyphicon-remove-circle'>"
						+ "</span> <button type='button' class='close' data-dismiss='alert' aria-hidden='true'>"
						+ "×</button><strong></strong>	Registro guardado correctamente</div>";
			}
		} catch (Exception e) {
			e.printStackTrace();
		} 
		return SUCCESS;
	}
	
	@Action(value="/cargaMarca",results={@Result(name="success",type="json")})
	public String cargaMarca(){
		ComputadoraServiceImpl service = new ComputadoraServiceImpl();
		try {
			lstMarca = service.listaMarca();
		} catch (Exception e) {
			e.printStackTrace();
		} 
		return SUCCESS;
		
	}
	
	@Action(value="/consultaCompu",
			results={@Result(name="success",location="/listaComputadora.jsp")
	})
	public String consultaCompu(){
		ComputadoraServiceImpl service = new ComputadoraServiceImpl();
		try {
			lstComputadora = service.listaComputadora(filtro);
		} catch (Exception e) {
			e.printStackTrace();
		} 
		return SUCCESS;
	}
	
	@Action(value="/consultaXMarca",
			results={@Result(name="success",location="/listaComputadoraPorMarca.jsp")
	})
	public String consultaCompuXmarca(){
		ComputadoraServiceImpl service = new ComputadoraServiceImpl();
		try {
			lstComputadora = service.listaComputadoraXmarca(filtro);
		} catch (Exception e) {
			e.printStackTrace();
		} 
		return SUCCESS;
	}
	@Action(value="/consultaXMarca2",
			results={@Result(name="success",type="json")
	})
	public String consultaCompuXmarca2(){
		ComputadoraServiceImpl service = new ComputadoraServiceImpl();
		try {
			lstComputadora = service.listaComputadoraXmarca(filtro);
		} catch (Exception e) {
			e.printStackTrace();
		} 
		return SUCCESS;
	}
	
	
	@Action(value="/consultaXStock",
			results={@Result(name="success",location="/listaComputadoraPorStock.jsp")
	})
	public String consultaCompuXStock(){
		ComputadoraServiceImpl service = new ComputadoraServiceImpl();
		try {
			lstComputadora = service.listaComputadoraXStock(Integer.parseInt(filtro));
		} catch (Exception e) {
			e.printStackTrace();
		} 
		return SUCCESS;
	}
	@Action(value="/consultaXStock2",
			results={@Result(name="success",type="json")
	})
	public String consultaCompuXStock2(){
		ComputadoraServiceImpl service = new ComputadoraServiceImpl();
		try {
			lstComputadora = service.listaComputadoraXStock(Integer.parseInt(filtro));
		} catch (Exception e) {
			e.printStackTrace();
		} 
		return SUCCESS;
	}	
	public List<MarcaBean> getLstMarca() {
		return lstMarca;
	}

	public void setLstMarca(List<MarcaBean> lstMarca) {
		this.lstMarca = lstMarca;
	}

	public List<ComputadoraBean> getLstComputadora() {
		return lstComputadora;
	}

	public void setLstComputadora(List<ComputadoraBean> lstComputadora) {
		this.lstComputadora = lstComputadora;
	}

	public String getFiltro() {
		return filtro;
	}

	public ComputadoraBean getComputadora() {
		return computadora;
	}
	public void setComputadora(ComputadoraBean computadora) {
		this.computadora = computadora;
	}
	public void setFiltro(String filtro) {
		this.filtro = filtro;
	}

	public String getMensajeValida() {
		return mensajeValida;
	}

	public void setMensajeValida(String mensajeValida) {
		this.mensajeValida = mensajeValida;
	}

	
}
