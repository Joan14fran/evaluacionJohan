package com.tecnica.Johan.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "ocupaciones")
public class Ocupacion {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long idOcupacion;
	@Column
	private String nombre;
	
	//Get//Set//
	public Long getIdOcupacion() {
		return idOcupacion;
	}
	public void setIdOcupacion(Long idOcupacion) {
		this.idOcupacion = idOcupacion;
	}
	public String getNombre() {
		return nombre;
	}
	public void setNombre(String nombre) {
		this.nombre = nombre;
	}
	
	
	

}
