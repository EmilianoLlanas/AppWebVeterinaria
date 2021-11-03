package com.pacientes;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.model.Paciente;
import com.opensymphony.xwork2.ActionSupport;
import com.service.PacienteService;

public class BajaPacienteAction extends ActionSupport implements SessionAware{
    private static final long serialVersionUID = 1L;
    private Paciente paciente;
    private String justificacion;
    private HashMap<Integer, Paciente> pacientes;
    private Map<String, Object> session;

    public String getJustificacion() {
        return justificacion;
    }

    public void setJustificacion(String justificacion) {
        this.justificacion = justificacion;
    }

    @Override
    public void setSession(Map<String, Object> session) {
        this.session = session;
    }

    public HashMap<Integer, Paciente> getPacientes() {
        return pacientes;
    }

    public void setPacientes(HashMap<Integer, Paciente> pacientes) {
        this.pacientes = pacientes;
    }

    public Map<String, Object> getSession() {
        return session;
    }

    public Paciente getPaciente() {
        return paciente;
    }

    public void setPaciente(Paciente paciente) {
        this.paciente = paciente;
    }

    public String init() {
        return "success";
    }

    public String execute() throws SQLException {
        String ret = ERROR;
        PacienteService pacienteService = new PacienteService();
        pacienteService.setPaciente(paciente);

        pacienteService.bajaPaciente();
        addActionMessage("Baja exitosa");
        ret = SUCCESS;
        return ret;
    }
}