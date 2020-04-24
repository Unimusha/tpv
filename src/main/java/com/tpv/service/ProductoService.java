package com.tpv.service;

import java.text.ParseException;
import java.util.List;

import com.tpv.dto.ProductoDTO;

public interface ProductoService {

	public abstract List<ProductoDTO> findAll();

	public abstract ProductoDTO findById(Long id);

	public abstract ProductoDTO save(ProductoDTO productoDto) throws ParseException;

	public abstract ProductoDTO update(Long id, ProductoDTO productoDto);

	public abstract void deleteById(Long id);

//	public abstract ProductoDTO borrado(Long id);

	public abstract ProductoDTO barra(Long id);

	public abstract ProductoDTO cocina(Long id);

}