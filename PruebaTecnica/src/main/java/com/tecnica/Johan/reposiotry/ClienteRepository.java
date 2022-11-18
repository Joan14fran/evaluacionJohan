package com.tecnica.Johan.reposiotry;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.tecnica.Johan.entity.Cliente;


public interface ClienteRepository extends JpaRepository<Cliente, Long> {
	
	@Query("SELECT c FROM Cliente c WHERE nombre LIKE  :fil")
	public List<Cliente> listarClientePorNombre(@Param("fil")String filtro);

}
