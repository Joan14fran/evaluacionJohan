package com.evaluacionJohan.evaluacion.service;

import java.util.List;

import com.evaluacionJohan.evaluacion.entity.Ciudad;

public interface CiudadService {
	
	public List<Ciudad> listarCiudad();
	public List<Ciudad> listarCiudadporNombre(String filtro);

}
