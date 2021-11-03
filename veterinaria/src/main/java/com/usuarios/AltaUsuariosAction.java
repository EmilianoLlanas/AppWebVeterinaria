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


public class AltaUsuariosAction extends ActionSupport implements SessionAware{
	private static final long serialVersionUID = 1L;
	private Usuario usuario;
	private HashMap<Integer, Usuario> Usuarios;
	private Map<String, Object> session;

	@Override
	public void setSession(Map<String, Object> session) {
		this.session = session;
	}

	
	public Usuario getUsuario() {
		return usuario;
	}


	public void setUsuario(Usuario usuario) {
		this.usuario = usuario;
	}


	public HashMap<Integer, Usuario> getUsuarios() {
		return Usuarios;
	}

	public void setUsuarios(HashMap<Integer, Usuario> Usuarios) {
		this.Usuarios = Usuarios;
	}



	public String init() {
		return "success";
	}


	public String execute() throws SQLException {
		int newUsuarioID = usuario.getIdUsuario();
		String ret = ERROR;

		UsuarioService UsuarioService = new UsuarioService();
		UsuarioService.setUsuario(usuario);

		if (0 == newUsuarioID) {

			if(usuario.getPassword().equals(usuario.getConfirmarPassword()))
			{
				UsuarioService.altaUsuario();
				addActionMessage("Alta exitosa");
				ret = SUCCESS;
			}
			else{
				addActionMessage("Las contraseñas no coinciden");
				return "input";
			}

		} 

		return ret;
	}

}