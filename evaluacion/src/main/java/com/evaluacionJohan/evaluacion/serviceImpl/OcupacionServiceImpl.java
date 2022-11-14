package com.evaluacionJohan.evaluacion.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.evaluacionJohan.evaluacion.entity.Ocupacion;
import com.evaluacionJohan.evaluacion.reposiotry.OcupacionRepository;
import com.evaluacionJohan.evaluacion.service.OcupacionService;

@Service
public class OcupacionServiceImpl implements OcupacionService {

	@Autowired
	public OcupacionRepository ocupacionReposiotory;
	@Override
	public List<Ocupacion> listarOcupacion() {
		return ocupacionReposiotory.findAll();
	}

}
