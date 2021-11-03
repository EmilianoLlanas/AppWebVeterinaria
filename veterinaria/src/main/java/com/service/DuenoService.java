package com.service;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.model.Dueno;
import com.utils.Conexion;

public class DuenoService {
    private Dueno dueno;

    public Dueno  getDueno() {
        return dueno;
    }

    public void setDueno(Dueno dueno) {
        this.dueno = dueno;
    }
    
    public List<Dueno> consultarDuenos() throws SQLException
    {
        Conexion conexion = new Conexion();
        Connection conn = conexion.establishConnection().getCon();

        String sql = "SELECT idDueno,nombre,telefono FROM veterinaria.dueno";
        PreparedStatement ps = conn.prepareStatement(sql);
        ResultSet rs = ps.executeQuery();

        List<Dueno> duenos=new ArrayList<Dueno>();

        while(rs.next()) {
            Dueno dueno= new Dueno();

            dueno.setIdDueno(rs.getInt(1));
            dueno.setNombre(rs.getString(2));
        
            dueno.setTelefono(rs.getLong("telefono"));

            duenos.add(dueno);

        }

        conexion.closeConnection();
        return duenos;
    }

    public Dueno editarDueno() throws SQLException
    {
        Conexion conexion = new Conexion();
        Connection conn = conexion.establishConnection().getCon();
        String sql = "UPDATE veterinaria.dueno SET nombre=?, direccion=?, rfc=?, telefono=? WHERE idDueno=?";
        PreparedStatement ps = conn.prepareStatement(sql);
        ps.setString(1, dueno.getNombre());
        ps.setString(2, dueno.getDireccion());
        ps.setString(3, dueno.getRfc());
        ps.setLong(4, dueno.getTelefono());
        ps.setInt(5, dueno.getIdDueno());

        ps.executeUpdate();
        conexion.closeConnection();
        return dueno;
    }

    public Dueno altaDueno() throws SQLException
    {
        Conexion conexion = new Conexion();
        Connection conn = conexion.establishConnection().getCon();
        String sql = "INSERT INTO veterinaria.dueno (nombre,direccion,rfc,telefono) VALUES (?,?,?,?)";

        PreparedStatement ps = conn.prepareStatement(sql);
        ps.setString(1, dueno.getNombre());
        ps.setString(2, dueno.getDireccion());
        ps.setString(3, dueno.getRfc());
        ps.setLong(4, dueno.getTelefono());

        ps.executeUpdate();

        conexion.closeConnection();
        return dueno;
    }

}