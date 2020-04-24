package com.tpv.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.tpv.entity.Comanda;

@Repository
public interface ComandaRepository extends JpaRepository<Comanda, Long> {
	List<Comanda> findBycompletadoBarraFalseAndPagadoFalseAndBorradoFalse();

	List<Comanda> findBycompletadoCocinaFalseAndPagadoFalseAndBorradoFalse();

}