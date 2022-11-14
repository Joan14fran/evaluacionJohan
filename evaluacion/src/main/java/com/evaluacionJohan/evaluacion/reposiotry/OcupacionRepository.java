package com.evaluacionJohan.evaluacion.reposiotry;

import org.springframework.data.jpa.repository.JpaRepository;
import com.evaluacionJohan.evaluacion.entity.Ocupacion;

public interface OcupacionRepository extends JpaRepository<Ocupacion, Long> {
}
