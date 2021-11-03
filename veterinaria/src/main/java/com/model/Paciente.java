package com.model;

public class Paciente {
	
	private int idPaciente;
	private String nombre;
	private int edad;
	private String categoria;
	private int idDueno;
	private String nombreDueno;
	private Long telefonoDueno;
	
	public int getIdPaciente() {
		return idPaciente;
	}
	public void setIdPaciente(int idPaciente) {
		this.idPaciente = idPaciente;
	}
	public String getNombre() {
		return nombre;
	}
	public void setNombre(String nombre) {
		this.nombre = nombre;
	}
	public int getEdad() {
		return edad;
	}
	public void setEdad(int edad) {
		this.edad = edad;
	}
	public String getCategoria() {
		return categoria;
	}
	public void setCategoria(String categoria) {
		this.categoria = categoria;
	}
	public int getIdDueno() {
		return idDueno;
	}
	public void setIdDueno(int idDueno) {
		this.idDueno = idDueno;
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
