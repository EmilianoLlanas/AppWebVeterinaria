package com.model;

public class Dueno {
	private int idDueno;
	private String nombre;
	private String direccion;
	private String rfc;
	private Long telefono;
	
	public int getIdDueno() {
		return idDueno;
	}
	public void setIdDueno(int idDueno) {
		this.idDueno = idDueno;
	}
	public String getNombre() {
		return nombre;
	}
	public void setNombre(String nombre) {
		this.nombre = nombre;
	}
	public String getDireccion() {
		return direccion;
	}
	public void setDireccion(String direccion) {
		this.direccion = direccion;
	}
	public String getRfc() {
		return rfc;
	}
	public void setRfc(String rfc) {
		this.rfc = rfc;
	}
	public Long getTelefono() {
		return telefono;
	}
	public void setTelefono(Long telefono) {
		this.telefono = telefono;
	}
}
