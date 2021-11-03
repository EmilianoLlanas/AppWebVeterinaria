package com.usuarios;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.model.Usuario;
import com.opensymphony.xwork2.ActionSupport;
import com.service.UsuarioService;

public class BajaUsuarioAction extends ActionSupport implements SessionAware{
	private static final long serialVersionUID = 1L;
	private Usuario usuario;
	private HashMap<Integer, Usuario> usuarios;
	private Map<String, Object> session;

	@Override
	public void setSession(Map<String, Object> session) {
		this.session = session;
	}

	public HashMap<Integer, Usuario> getUsuarios() {
		return usuarios;
	}

	public void setUsuarios(HashMap<Integer, Usuario> usuarios) {
		this.usuarios = usuarios;
	}

	public Map<String, Object> getSession() {
		return session;
	}

	public Usuario getUsuario() {
		return usuario;
	}

	public void setUsuario(Usuario usuario) {
		this.usuario = usuario;
	}


	public String execute() throws SQLException {
		String ret = ERROR;
		UsuarioService usuarioService = new UsuarioService();
		usuarioService.setUsuario(usuario);

		usuarioService.bajaUsuario();
		addActionMessage("baja exitosa");
		ret = SUCCESS;
		return ret;
	}


}