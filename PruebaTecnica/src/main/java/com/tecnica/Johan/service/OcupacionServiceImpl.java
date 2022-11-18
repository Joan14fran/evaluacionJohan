package com.tecnica.Johan.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tecnica.Johan.entity.Ocupacion;
import com.tecnica.Johan.reposiotry.OcupacionRepository;



@Service
public class OcupacionServiceImpl implements OcupacionService {

	@Autowired
	public OcupacionRepository ocupacionReposiotory;
	@Override
	public List<Ocupacion> listarOcupacion() {
		return ocupacionReposiotory.findAll();
	}

}
