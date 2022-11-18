package com.tecnica.Johan.reposiotry;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.tecnica.Johan.entity.Ciudad;



public interface CiudadRepository extends JpaRepository<Ciudad, Long>{
	
	@Query("SELECT c FROM Ciudad c WHERE nombre like :fil")
	public List<Ciudad> mostrarCiudadPorNombre(@Param("fil")String filtro);

}
