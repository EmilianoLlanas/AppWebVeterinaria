package com.pacientes;

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

import com.model.Paciente;
import com.opensymphony.xwork2.ActionSupport;
import com.service.PacienteService;

public class ConsultarPacientesAction extends ActionSupport implements SessionAware{
	private static final long serialVersionUID = 1L;
	private List<Paciente> pacientes;
	private Map<String, Object> session;

	@Override
	public void setSession(Map<String, Object> session) {
		this.session = session;
	}

	public List<Paciente> getPacientes() {
		return pacientes;
	}
	public void setUsuarios(List<Paciente> pacientes) {
		this.pacientes = pacientes;
	}
	public String execute() throws SQLException {
		PacienteService pacienteService= new PacienteService();
		pacientes= pacienteService.consultarPacientes();

		addActionMessage("Consulta Exitosa");
        return SUCCESS;
	}
}