package com.tecnica.Johan.service;

import java.util.List;

import com.tecnica.Johan.entity.Ciudad;


public interface CiudadService {
	
	public List<Ciudad> listarCiudad();
	public List<Ciudad> listarCiudadporNombre(String filtro);

}
