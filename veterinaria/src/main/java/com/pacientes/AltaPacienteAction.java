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
import com.model.Dueno;
import com.opensymphony.xwork2.ActionSupport;
import com.service.PacienteService;


public class AltaPacienteAction extends ActionSupport implements SessionAware{
    private static final long serialVersionUID = 1L;
    private Paciente paciente;
    private HashMap<Integer, Paciente> Pacientes;
    private Map<String, Object> session;

    @Override
    public void setSession(Map<String, Object> session) {
        this.session = session;
    }

    public Paciente getPaciente() {
        return paciente;
    }

    public void setPaciente(Paciente paciente) {
        this.paciente = paciente;
    }

    public HashMap<Integer, Paciente> getPacientes() {
        return Pacientes;
    }

    public void setPacientes(HashMap<Integer, Paciente> Pacientes) {
        this.Pacientes = Pacientes;
    }

    public String init() {
        return "success";
    }

    public String execute() throws SQLException {

        String ret = ERROR;

        PacienteService PacienteService = new PacienteService();
        PacienteService.setPaciente(paciente);
        paciente=PacienteService.getPaciente();
        
        PacienteService.altaPaciente();
        ret = SUCCESS;
        
        return ret;
    }

}