package com.service;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.model.Dueno;
import com.model.Paciente;
import com.utils.Conexion;

public class PacienteService {
	Paciente paciente;

	public Paciente getPaciente() {
		return paciente;
	}

	public void setPaciente(Paciente paciente) {
		this.paciente = paciente;
	}
		
	public Paciente altaPaciente() throws SQLException
	{
		Conexion conexion = new Conexion();
		Connection conn = conexion.establishConnection().getCon();
		
		String sql = "INSERT INTO paciente (nombre,categoria,edad) VALUES (?,?,?)";
		
		PreparedStatement ps = conn.prepareStatement(sql);
		ps.setString(1, paciente.getNombre());
		ps.setString(2, paciente.getCategoria());
		ps.setInt(3, paciente.getEdad());
		
		ps.executeUpdate();
		
		conexion.closeConnection();
		return paciente;
	}
	
	public List<Paciente> consultarPacientes() throws SQLException
	{
		Conexion conexion = new Conexion();
		Connection conn = conexion.establishConnection().getCon();
		
		String sql = "SELECT nombre, categoria, edad FROM producto";
		PreparedStatement ps = conn.prepareStatement(sql);
		ResultSet rs = ps.executeQuery();
		
		List<Paciente> pacientes=new ArrayList<Paciente>();
		
		while(rs.next()) {
			Paciente paciente= new Paciente();
		
			paciente.setNombre(rs.getString(1));
			paciente.setCategoria(rs.getString(2));
			paciente.setEdad(rs.getInt(3));
			
			pacientes.add(paciente);
		}
		
		conexion.closeConnection();
		return pacientes;
	}	
	
	/*public Paciente entradaProducto() throws SQLException
	{
		Conexion conexion = new Conexion();
		Connection conn = conexion.establishConnection().getCon();
		
		String sql = "UPDATE  producto SET existencia=? WHERE idProducto=?";
		PreparedStatement ps = conn.prepareStatement(sql);
		ps.setInt(1, producto.getExistencia());
		ps.setInt(2, producto.getIdProducto());
		
		ps.executeUpdate();
		conexion.closeConnection();
		return producto;
	}
	
	public Paciente salidaProducto() throws SQLException
	{
		Conexion conexion = new Conexion();
		Connection conn = conexion.establishConnection().getCon();
		
		String sql = "UPDATE producto SET existencia=? WHERE nombre=?";
		PreparedStatement ps = conn.prepareStatement(sql);
		ps.setInt(1, producto.getExistencia());
		ps.setString(2, producto.getNombre());
		
		ps.executeUpdate();
		conexion.closeConnection();
		return producto;
	}*/
}