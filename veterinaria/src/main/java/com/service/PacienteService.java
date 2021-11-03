package com.service;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.model.Dueno;
import com.model.Paciente;
import com.model.Usuario;
import com.utils.Conexion;

public class PacienteService {
	private Paciente paciente;

	public Paciente getPaciente() {
		return paciente;
	}

	public void setPaciente(Paciente pacientee) {
		this.paciente = pacientee;
	}
		
	public Paciente altaPaciente() throws SQLException
	{
		Conexion conexion = new Conexion();
		Connection conn = conexion.establishConnection().getCon();
		String sql = "INSERT INTO veterinaria.paciente (nombre,categoria,edad) VALUES (?,?,?)";
		
		PreparedStatement ps = conn.prepareStatement(sql);
		ps.setString(1, paciente.getNombre());
		ps.setInt(2, paciente.getEdad());
		ps.setString(3, paciente.getCategoria());
		
		ps.executeUpdate();
		
		conexion.closeConnection();
		return paciente;
	}
	
	public List<Paciente> consultarPacientes() throws SQLException
	{
		Conexion conexion = new Conexion();
		Connection conn = conexion.establishConnection().getCon();

		String sql = "SELECT idPaciente,nombre,edad,categoria FROM veterinaria.paciente";
		PreparedStatement ps = conn.prepareStatement(sql);
		ResultSet rs = ps.executeQuery();

		List<Paciente> pacientes=new ArrayList<Paciente>();

		while(rs.next()) {
			Paciente paciente= new Paciente();

			paciente.setIdPaciente(rs.getInt(1));
			paciente.setNombre(rs.getString(2));
			paciente.setEdad(rs.getInt(3));
			paciente.setCategoria(rs.getString(4));

			pacientes.add(paciente);
		}
		conexion.closeConnection();
		return pacientes;
	}
	
	public void bajaPaciente() throws SQLException
	{
		Conexion conexion = new Conexion();
		Connection conn = conexion.establishConnection().getCon();

		String sql = "DELETE FROM veterinaria.paciente WHERE idPaciente=?";
		PreparedStatement ps = conn.prepareStatement(sql);
		ps.setInt(1, paciente.getIdPaciente());

		ps.executeUpdate();

		conexion.closeConnection();
	}
	
	public Paciente editarPaciente() throws SQLException
	{
		Conexion conexion = new Conexion();
		Connection conn = conexion.establishConnection().getCon();
		String sql = "UPDATE  veterinaria.paciente SET nombre=?, SET edad=?, SET categoria=? WHERE idPaciente=?";
		PreparedStatement ps = conn.prepareStatement(sql);
		ps.setString(1, paciente.getNombre());
		ps.setInt(2, paciente.getEdad());
		ps.setString(3, paciente.getCategoria());

		ps.executeUpdate();
		conexion.closeConnection();
		return paciente;
	}
}
