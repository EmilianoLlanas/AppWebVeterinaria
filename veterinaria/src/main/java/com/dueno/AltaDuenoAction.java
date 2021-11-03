package com.dueno;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.model.Dueno;
import com.opensymphony.xwork2.ActionSupport;
import com.service.DuenoService;

public class AltaDuenoAction extends ActionSupport implements SessionAware {
    private static final long serialVersionUID = 1L;
    private Dueno dueno;
    private HashMap<Integer, Dueno> duenos;
    private Map<String, Object> session;

    @Override
    public void setSession(Map<String, Object> session) {
        this.session = session;
    }


    public Dueno getDueno() {
        return dueno;
    }


    public void setDueno(Dueno dueno) {
        this.dueno = dueno;
    }


    public HashMap<Integer, Dueno> getDuenos() {
        return duenos;
    }

    public void setUsuarios(HashMap<Integer, Dueno> Duenos) {
        this.duenos = Duenos;
    }



    public String init() {
        return "success";
    }


    public String execute() throws SQLException {

        String ret = ERROR;

        DuenoService DuenoService = new DuenoService();
        DuenoService.setDueno(dueno);
        dueno=DuenoService.getDueno();



        if(dueno.getIdDueno() == 0)
        {
            char[] chars=dueno.getNombre().toCharArray();
            for(char c:chars) {
                if(Character.isDigit(c)) {
                    addActionMessage("Hay un numero en el nombre");
                    return "input";
                }
            }
            DuenoService.altaDueno();
            addActionMessage("Alta exitosa");
            ret = SUCCESS;

        }


        return ret;
    }


}