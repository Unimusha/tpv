package com.tpv.service;

import java.text.ParseException;
import java.util.List;

import com.tpv.dto.MesaDTO;

public interface MesaService {

	public abstract List<MesaDTO> findAll();

	public abstract MesaDTO findById(Long id);

	public abstract MesaDTO save(MesaDTO mesaDto) throws ParseException;

	public abstract MesaDTO update(Long id, MesaDTO mesaDto);

	public abstract void deleteById(Long id);

//	public abstract MesaDTO borrado(Long id);

}