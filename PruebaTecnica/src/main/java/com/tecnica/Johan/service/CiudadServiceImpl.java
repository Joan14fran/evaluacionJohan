package com.tecnica.Johan.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tecnica.Johan.entity.Ciudad;
import com.tecnica.Johan.reposiotry.CiudadRepository;



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
