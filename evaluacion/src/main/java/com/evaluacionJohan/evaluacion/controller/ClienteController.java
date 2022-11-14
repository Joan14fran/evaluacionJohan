package com.evaluacionJohan.evaluacion.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.evaluacionJohan.evaluacion.entity.Ciudad;
import com.evaluacionJohan.evaluacion.entity.Cliente;
import com.evaluacionJohan.evaluacion.entity.Ocupacion;
import com.evaluacionJohan.evaluacion.service.CiudadService;
import com.evaluacionJohan.evaluacion.service.ClienteService;
import com.evaluacionJohan.evaluacion.service.OcupacionService;

@Controller
public class ClienteController {
	
	@Autowired
	private CiudadService ciudadService;
	
	@Autowired 
	private OcupacionService ocupacionService;
	
	@Autowired
	private ClienteService clienteService;
	
	/*ListarOcupaciones*/
	@RequestMapping("/listaOcupacion")
	@ResponseBody
	public List<Ocupacion> listaOcupacion(){
		List<Ocupacion> lista = ocupacionService.listarOcupacion();
		return lista;
	}
	/*ListarOcupaciones*/
	/**/
	/*listarCiudades*/
	@RequestMapping("/listaCiudad")
	@ResponseBody
	public List<Ciudad> listarCiudades(){
		List<Ciudad> lista = ciudadService.listarCiudad();
		return lista;
	}
	/*listarCiudades*/
	/**/
	/*ListarCiudadesporNobre*/
	@RequestMapping("/listarCiudadNombre")
	@ResponseBody
	public List<Ciudad> consultaCiudades(String filtro){
		List<Ciudad> lista = ciudadService.listarCiudadporNombre("%"+filtro+"%");
		return lista;
	}
	/*ListarCiudadesporNobre*/
	/**/
	/*ListarClientes*/
	@RequestMapping("/listarClientes")
	@ResponseBody
	public List<Cliente> listarClientes(String filtro){
		List<Cliente> lista = clienteService.listarClientePorNombre("%"+filtro+"%");
		return lista;
	}
	/*ListarClientes*/
	/**/
	/*MostrarDatos*/
	@RequestMapping("/clientes")
	public String Clientes() {
		return "clientes";
	}
	/*MostrarDatos*/
	/**/
	/*RegistrarClientes*/
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
	/*RegistrarClientes*/
	/**/
	/*ActualizarClientes*/
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
	/*ActualizarClientes*/
	/**/
	/*EliminarCliente*/
	@RequestMapping("/eliminarCliente")
	@ResponseBody
	public Map<String, Object> elminar(String id){
		Map<String, Object> salida = new HashMap<String, Object>();
		try {
			Optional<Cliente> optCLiente = clienteService.clientePorId(Long.parseLong(id));
			if(optCLiente.isEmpty()) {
				salida.put("mensaje", "El id no esxte" + id);
			}else {
				clienteService.eliminarCliente(Long.parseLong(id));
				List<Cliente> lista = clienteService.listarClientes();
				salida.put("lista", lista);
				salida.put("mensaje", "Se elimino corretamente");
			}
		}catch(Exception e){
			e.printStackTrace();
		}
		return salida;
	}
	/*EliminarCliente*/
	
	
	
}
