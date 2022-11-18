package com.tecnica.Johan.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tecnica.Johan.entity.Cliente;
import com.tecnica.Johan.reposiotry.ClienteRepository;



@Service
public class ClienteServiceImpl implements ClienteService {

	@Autowired
	public ClienteRepository clienteReposiotry;
	@Override
	public List<Cliente> listarClientes() {
		return clienteReposiotry.findAll();
	}

	@Override
	public Cliente insertarYactualizarCliente(Cliente obj) {
		return clienteReposiotry.save(obj);
	}

	@Override
	public List<Cliente> listarClientePorNombre(String filtro) {
		return clienteReposiotry.listarClientePorNombre(filtro);
	}

	@Override
	public Optional<Cliente> porId(Long documento) {
		return clienteReposiotry.findById(documento);
	}

	@Override
	public void eliminarCliente(Long documentoId) {
		clienteReposiotry.deleteById(documentoId);
	}
	

}
