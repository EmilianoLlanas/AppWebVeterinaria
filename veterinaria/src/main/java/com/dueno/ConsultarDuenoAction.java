package com.dueno;

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

import com.model.Dueno;
import com.opensymphony.xwork2.ActionSupport;
import com.service.DuenoService;

public class ConsultarDuenoAction extends ActionSupport implements SessionAware{
    private static final long serialVersionUID = 1L;
    private List<Dueno> duenos;
    private Map<String, Object> session;

    @Override
    public void setSession(Map<String, Object> session) {
        this.session = session;
    }

    public List<Dueno> getDuenos() {
        return duenos;
    }
    public void setDuenos(List<Dueno> duenos) {
        this.duenos = duenos;
    }
    public String execute() throws SQLException {
        DuenoService duenoService= new DuenoService();
        duenos= duenoService.consultarDuenos();

        addActionMessage("Consulta Exitosa");
        return SUCCESS;
    }
}