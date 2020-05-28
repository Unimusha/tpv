package com.tpv.service;

import java.text.ParseException;
import java.util.List;

import com.tpv.dto.ComandaProductoDTO;

public interface ComandaProductoService {

	public abstract List<ComandaProductoDTO> findAll();

	public abstract ComandaProductoDTO findById(Long id);

	public abstract ComandaProductoDTO save(ComandaProductoDTO comandaProductoDto) throws ParseException;

	public abstract List<ComandaProductoDTO> saveList(List<ComandaProductoDTO> listaComandaProductoDto)
			throws ParseException;

	public abstract ComandaProductoDTO update(Long id, ComandaProductoDTO comandaProductoDto);

	public abstract void deleteById(Long id);

//	public abstract ComandaProductoDTO borrado(Long id);

}