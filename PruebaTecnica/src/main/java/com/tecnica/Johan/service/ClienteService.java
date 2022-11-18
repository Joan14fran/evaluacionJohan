package com.tecnica.Johan.service;

import java.util.List;
import java.util.Optional;

import com.tecnica.Johan.entity.Cliente;



public interface ClienteService {
	
	public List<Cliente> listarClientes();
	public Cliente insertarYactualizarCliente(Cliente obj);
	public Optional<Cliente> porId(Long documento);
	public void eliminarCliente(Long documentoId);
	public List<Cliente> listarClientePorNombre(String filtro);
	

}
