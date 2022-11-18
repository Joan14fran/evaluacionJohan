package com.tecnica.Johan.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.tecnica.Johan.entity.Ciudad;
import com.tecnica.Johan.entity.Cliente;
import com.tecnica.Johan.entity.Ocupacion;
import com.tecnica.Johan.service.CiudadService;
import com.tecnica.Johan.service.ClienteService;
import com.tecnica.Johan.service.OcupacionService;



@Controller
public class ClienteController {
	
	@Autowired
	private CiudadService ciudadService;
	
	@Autowired 
	private OcupacionService ocupacionService;
	
	@Autowired
	private ClienteService clienteService;
	
	
	@RequestMapping("/listaOcupacion")
	@ResponseBody
	public List<Ocupacion> listaOcupacion(){
		List<Ocupacion> lista = ocupacionService.listarOcupacion();
		return lista;
	}
	
	@RequestMapping("/listaCiudad")
	@ResponseBody
	public List<Ciudad> listarCiudades(){
		List<Ciudad> lista = ciudadService.listarCiudad();
		return lista;
	}
	
	@RequestMapping("/listarClientes")
	@ResponseBody
	public List<Cliente> listarClientes(String filtro){
		List<Cliente> lista = clienteService.listarClientePorNombre("%"+filtro+"%");
		return lista;
	}
	
	@RequestMapping("/registrarCliente")
	@ResponseBody
	public Map<String, Object> insertar(Cliente obj){
		Map<String, Object> salida = new HashMap<String, Object>();
		try {
			Cliente objResultado = clienteService.insertarYactualizarCliente(obj);
			if(objResultado == null) {
				salida.put("mensaje", "Error al crear Cliente");
			}else {
				List<Cliente> lista = clienteService.listarClientes();
				salida.put("lista", lista);
				salida.put("mensaje", "Cliente creado correctamente");
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		return salida;
	}
	@RequestMapping("/actualizarCliente")
	@ResponseBody
	public Map<String, Object> actualizar(Cliente obj){
		Map<String, Object> salida = new HashMap<String, Object>();
		try {
			Cliente objResultado = clienteService.insertarYactualizarCliente(obj);
			if(objResultado == null) {
				salida.put("mensaje", "Error al actualizar cliente");
			}else {
				List<Cliente> lista = clienteService.listarClientes();
				salida.put("mensaje", lista);
				salida.put("mensaje", "el cliente se actualizo correctamente");
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		return salida;
	}
	@RequestMapping("/eliminarCliente")
	@ResponseBody
	public Map<String, Object> elminar(String documentoId){
		Map<String, Object> salida = new HashMap<String, Object>();
		try {
			Optional<Cliente> optCLiente = clienteService.porId(Long.parseLong(documentoId));
			if(optCLiente.isEmpty()) {
				salida.put("mensaje", "El id no esxte" + documentoId);
			}else {
				clienteService.eliminarCliente(Long.parseLong(documentoId));
				List<Cliente> lista = clienteService.listarClientes();
				salida.put("lista", lista);
				salida.put("mensaje", "Se elimino corretamente");
			}
		}catch(Exception e){
			e.printStackTrace();
		}
		return salida;
	}
	
	@RequestMapping("/verDatosClientes")
	public String Clientes() {
		return "crudClietes";
	}
	
	
	
}
