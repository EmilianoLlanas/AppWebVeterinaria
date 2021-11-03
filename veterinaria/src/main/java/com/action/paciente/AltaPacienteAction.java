package com.action.paciente;

import java.sql.SQLException;
import java.util.HashMap;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.model.Paciente;
import com.opensymphony.xwork2.ActionSupport;
import com.service.PacienteService;

public class AltaPacienteAction extends ActionSupport implements SessionAware{
	private static final long serialVersionUID = 1L;
	private Paciente paciente;
	private Map<String, Object> session;

	@Override
	public void setSession(Map<String, Object> session) {
		this.session = session;
	}
	public Paciente getPaciente() {
		return paciente;
	}
	public void setProducto(Paciente paciente) {
		this.paciente = paciente;
	}
	
	public String init() {
		return "success";
	}
	
	
	public String execute() throws SQLException {
		PacienteService productoService= new PacienteService();
		pacienteService.setPaciente(paciente);
		
		pacienteService.altaPaciente();
		addActionMessage("Alta exitosa");
		
		return SUCCESS;
	}
}
