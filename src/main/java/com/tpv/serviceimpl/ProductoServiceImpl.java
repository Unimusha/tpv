package com.tpv.serviceimpl;

import java.text.ParseException;
import java.util.List;
import java.util.stream.Collectors;

import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tpv.dto.ProductoDTO;
import com.tpv.entity.Producto;
import com.tpv.repository.ProductoRepository;
import com.tpv.service.ProductoService;

@Service
public class ProductoServiceImpl implements ProductoService {
	@Autowired
	private ProductoRepository productoRepository;
	@Autowired
	ModelMapper modelMapper;

	@Override
	public List<ProductoDTO> findAll() {
		List<Producto> producto = productoRepository.findAll();
		return producto.stream().map(this::convertirToDto).collect(Collectors.toList());
	}

	@Override
	public ProductoDTO findById(Long id) {
		return convertirToDto(productoRepository.findById(id).get());
	}

	@Override
	public ProductoDTO save(ProductoDTO productoDto) throws ParseException {
		if (productoDto.getBorrado() == null) {
			productoDto.setBorrado(false);
		}
		return convertirToDto(productoRepository.save(convertirToEntidad(productoDto)));
	}

	@Override
	public ProductoDTO update(Long id, ProductoDTO productoDto) {
		Producto productoToUpdate = productoRepository.findById(id).get();
		if (productoDto.getIdCategoria() != null) {
			productoToUpdate.setIdCategoria(productoDto.getIdCategoria());
		}
		if (productoDto.getNombre() != null) {
			productoToUpdate.setNombre(productoDto.getNombre());
		}
		if (productoDto.getPrecio() != null) {
			productoToUpdate.setPrecio(productoDto.getPrecio());
		}
		if (productoDto.getBarra() != null) {
			productoToUpdate.setBarra(productoDto.getBarra());
		}
		if (productoDto.getCocina() != null) {
			productoToUpdate.setCocina(productoDto.getCocina());
		}

		return convertirToDto(productoRepository.save(productoToUpdate));
	}

	@Override
	public void deleteById(Long id) {
		productoRepository.deleteById(id);
	}

//	@Override
//	public ProductoDTO borrado(Long id) {
//		Producto productoToUpdate = productoRepository.findById(id).get();
//		productoToUpdate.setBorrado(false);
//		return convertirToDto(productoRepository.save(productoToUpdate));
//	}

	@Override
	public ProductoDTO barra(Long id) {
		Producto productoToUpdate = productoRepository.findById(id).get();
		productoToUpdate.setBarra(true);
		return convertirToDto(productoRepository.save(productoToUpdate));
	}

	@Override
	public ProductoDTO cocina(Long id) {
		Producto productoToUpdate = productoRepository.findById(id).get();
		productoToUpdate.setCocina(true);
		return convertirToDto(productoRepository.save(productoToUpdate));
	}

	private ProductoDTO convertirToDto(Producto producto) {
		ProductoDTO productoDto = modelMapper.map(producto, ProductoDTO.class);
		return productoDto;
	}

	private Producto convertirToEntidad(ProductoDTO productoDto) throws ParseException {
		Producto producto = modelMapper.map(productoDto, Producto.class);
		return producto;
	}

}
