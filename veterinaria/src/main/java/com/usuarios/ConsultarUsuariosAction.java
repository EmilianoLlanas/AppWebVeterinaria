package com.usuarios;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.model.Usuario;
import com.opensymphony.xwork2.ActionSupport;
import com.service.UsuarioService;

public class ConsultarUsuariosAction extends ActionSupport implements SessionAware{
	private static final long serialVersionUID = 1L;
	private List<Usuario> usuarios;
	private Map<String, Object> session;

	@Override
	public void setSession(Map<String, Object> session) {
		this.session = session;
	}

	public List<Usuario> getUsuarios() {
		return usuarios;
	}
	public void setUsuarios(List<Usuario> usuarios) {
		this.usuarios = usuarios;
	}
	public String execute() throws SQLException {
		UsuarioService usuarioService= new UsuarioService();
		usuarios= usuarioService.consultarUsuarios();

		addActionMessage("Consulta Exitosa");
        return SUCCESS;
	}
}
