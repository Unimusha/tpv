package com.tpv.service;

import java.text.ParseException;
import java.util.List;

import com.tpv.dto.CategoriaDTO;

public interface CategoriaService {

	public abstract List<CategoriaDTO> findAll();

	public abstract CategoriaDTO findById(Long id);

	public abstract CategoriaDTO save(CategoriaDTO categoriaDto) throws ParseException;

	public abstract CategoriaDTO update(Long id, CategoriaDTO categoriaDto);

	public abstract void deleteById(Long id);

	public abstract CategoriaDTO borrado(Long id);

}