package com.tpv.service;

import java.text.ParseException;
import java.util.List;

import com.tpv.dto.ComandaDTO;

public interface ComandaService {

	public abstract List<ComandaDTO> findAll();

	public abstract ComandaDTO findById(Long id);

	public abstract ComandaDTO save(ComandaDTO comandaDto) throws ParseException;

	public abstract ComandaDTO update(Long id, ComandaDTO comandaDto);

	public abstract void deleteById(Long id);

//	public abstract ComandaDTO borrado(Long id);

	public abstract ComandaDTO completadoBarra(Long id);

	public abstract ComandaDTO completadoCocina(Long id);

	public abstract ComandaDTO pagado(Long id);

}