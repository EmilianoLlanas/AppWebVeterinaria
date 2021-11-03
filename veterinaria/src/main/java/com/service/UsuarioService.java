package com.service;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.model.Usuario;
import com.utils.Conexion;

public class UsuarioService {
	private Usuario usuario;

	public Usuario getUsuario() {
		return usuario;
	}

	public void setUsuario(Usuario usuario) {
		this.usuario = usuario;
	}

	public boolean isUserRegister() throws SQLException {
        int count = 0;
        Conexion conexion = new Conexion();
        Connection conn = conexion.establishConnection().getCon();

        String sql = "SELECT user,password FROM veterinaria.usuario WHERE user=? AND password=?" ;
        PreparedStatement ps = conn.prepareStatement(sql);

        ps.setString(1, usuario.getUser());
        ps.setString(2, usuario.getPassword());

        ResultSet rs = ps.executeQuery();

        while (rs.next()) {
            count ++;
        }

        if (count == 0) {
            return false;
        }

        conexion.closeConnection();
        return true;
    }
	
	public List<Usuario> consultarUsuarios() throws SQLException
	{
		Conexion conexion = new Conexion();
		Connection conn = conexion.establishConnection().getCon();

		String sql = "SELECT idUsuario,user,estadoUsuario FROM veterinaria.usuario";
		PreparedStatement ps = conn.prepareStatement(sql);
		ResultSet rs = ps.executeQuery();

		List<Usuario> usuarios=new ArrayList<Usuario>();

		while(rs.next()) {
			Usuario usuario= new Usuario();

			usuario.setIdUsuario(rs.getInt(1));
			usuario.setUser(rs.getString(2));
			usuario.setEstadoUsuario(rs.getString("estadoUsuario"));

			usuarios.add(usuario);

		}

		conexion.closeConnection();
		return usuarios;
	}

	public Usuario editarUsuario() throws SQLException
	{
		Conexion conexion = new Conexion();
		Connection conn = conexion.establishConnection().getCon();
		String sql = "UPDATE  veterinaria.usuario SET password=?, SET confirmarPassword=?, SET estadoUsuario=? WHERE idUsuario=?";
		PreparedStatement ps = conn.prepareStatement(sql);
		ps.setString(1, usuario.getPassword());
		ps.setString(2, usuario.getConfirmarPassword());
		ps.setString(3, usuario.getEstadoUsuario());

		ps.executeUpdate();
		conexion.closeConnection();
		return usuario;
	}

	public Usuario altaUsuario() throws SQLException
	{
		Conexion conexion = new Conexion();
		Connection conn = conexion.establishConnection().getCon();
		String sql = "INSERT INTO veterinaria.usuario (user,password,confirmarPassword,estadoUsuario) VALUES (?,?,?,?)";

		PreparedStatement ps = conn.prepareStatement(sql);
		ps.setString(1, usuario.getUser());
		ps.setString(2, usuario.getPassword());
		ps.setString(3, usuario.getConfirmarPassword());
		ps.setString(4, usuario.getEstadoUsuario());

		ps.executeUpdate();

		conexion.closeConnection();
		return usuario;
	}

	public void bajaUsuario() throws SQLException
	{
		Conexion conexion = new Conexion();
		Connection conn = conexion.establishConnection().getCon();

		String sql = "DELETE FROM veterinaria.usuario WHERE idUsuario=?";
		PreparedStatement ps = conn.prepareStatement(sql);
		ps.setInt(1, usuario.getIdUsuario());

		ps.executeUpdate();

		conexion.closeConnection();

	}
}
