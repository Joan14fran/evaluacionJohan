package com.evaluacionJohan.evaluacion.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.evaluacionJohan.evaluacion.entity.Ciudad;
import com.evaluacionJohan.evaluacion.reposiotry.CiudadRepository;
import com.evaluacionJohan.evaluacion.service.CiudadService;

@Service
public class CiudadServiceImpl implements CiudadService{

	@Autowired
	public CiudadRepository ciudadReposiotry;
	@Override
	public List<Ciudad> listarCiudad() {
		return ciudadReposiotry.findAll();
	}
	@Override
	public List<Ciudad> listarCiudadporNombre(String filtro) {
		return ciudadReposiotry.mostrarCiudadPorNombre(filtro);
	}

}
