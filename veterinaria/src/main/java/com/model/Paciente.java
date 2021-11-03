package com.model;

public class Paciente {
	private String nombre;
	private String edad;
	private String categoria;
	private String nombreDueno;
	private Long telefonoDueno;
	public String getNombre() {
		return nombre;
	}
	public void setNombre(String nombre) {
		this.nombre = nombre;
	}
	public String getEdad() {
		return edad;
	}
	public void setEdad(String edad) {
		this.edad = edad;
	}
	public String getCategoria() {
		return categoria;
	}
	public void setCategoria(String categoria) {
		this.categoria = categoria;
	}
	public String getNombreDueno() {
		return nombreDueno;
	}
	public void setNombreDueno(String nombreDueno) {
		this.nombreDueno = nombreDueno;
	}
	public Long getTelefonoDueno() {
		return telefonoDueno;
	}
	public void setTelefonoDueno(Long telefonoDueno) {
		this.telefonoDueno = telefonoDueno;
	}
}
