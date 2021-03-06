package com.action;

import java.sql.*;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.model.Usuario;
import com.opensymphony.xwork2.ActionSupport;
import com.service.UsuarioService;

public class LoginAction extends ActionSupport implements SessionAware{
	private static final long serialVersionUID = 1L;
	private Usuario user;
	private Map<String, Object> session;
	
	@Override
	public void setSession(Map<String, Object> session) {
		this.session = session;
	}
	public Usuario getUser() {
		return user;
	}
	public void setUser(Usuario user) {
		this.user = user;
	}

//	
	public String execute() throws SQLException {
		String ret = ERROR;
		
		UsuarioService usuarioService= new UsuarioService();
		
		usuarioService.setUsuario(user);
		user=usuarioService.getUsuario();
		
		System.out.println(user.getUser());
		System.out.println(user.getPassword());
		System.out.println(usuarioService.isUserRegister());
		
		if (usuarioService.isUserRegister()) {
			ret = SUCCESS;
		} else {
			addActionError("Usuario invalido favor de verificar");
			return "input";
		}

		return ret;
	}

}