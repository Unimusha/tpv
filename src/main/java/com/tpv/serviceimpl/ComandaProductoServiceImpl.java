package com.tpv.serviceimpl;

import java.text.ParseException;
import java.util.List;
import java.util.stream.Collectors;

import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tpv.dto.ComandaProductoDTO;
import com.tpv.entity.ComandaProducto;
import com.tpv.repository.ComandaProductoRepository;
import com.tpv.service.ComandaProductoService;

@Service
public class ComandaProductoServiceImpl implements ComandaProductoService {
	@Autowired
	private ComandaProductoRepository comandaProductoRepository;
	@Autowired
	ModelMapper modelMapper;

	@Override
	public List<ComandaProductoDTO> findAll() {
		List<ComandaProducto> comandaProductos = comandaProductoRepository.findAll();
		return comandaProductos.stream().map(this::convertirToDto).collect(Collectors.toList());
	}

	@Override
	public ComandaProductoDTO findById(Long id) {
		return convertirToDto(comandaProductoRepository.findById(id).get());
	}

	@Override
	public ComandaProductoDTO save(ComandaProductoDTO comandaProductoDto) throws ParseException {
		if (comandaProductoDto.getBorrado() == null) {
			comandaProductoDto.setBorrado(false);
		}
		return convertirToDto(comandaProductoRepository.save(convertirToEntidad(comandaProductoDto)));
	}

	@Override
	public List<ComandaProductoDTO> saveList(List<ComandaProductoDTO> listaComandaProductoDto) throws ParseException {

		List<ComandaProducto> listaComandaProducto;

		listaComandaProducto = listaComandaProductoDto.stream().map(t -> {
			try {
				return convertirToEntidad(t);
			} catch (ParseException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			return null;
		}).collect(Collectors.toList());

		listaComandaProducto = comandaProductoRepository.saveAll(listaComandaProducto);

		listaComandaProductoDto = listaComandaProducto.stream().map(this::convertirToDto).collect(Collectors.toList());

		return listaComandaProductoDto;
	}

	@Override
	public ComandaProductoDTO update(Long id, ComandaProductoDTO comandaProductoDto) {
		ComandaProducto comandaProductoToUpdate = comandaProductoRepository.findById(id).get();
		if (comandaProductoDto.getIdComanda() != null) {
			comandaProductoToUpdate.setIdComanda(comandaProductoDto.getIdComanda());
		}
		if (comandaProductoDto.getIdProducto() != null) {
			comandaProductoToUpdate.setIdProducto(comandaProductoDto.getIdProducto());
		}
		if (comandaProductoDto.getUnidadesProducto() != null) {
			comandaProductoToUpdate.setUnidadesProducto(comandaProductoDto.getUnidadesProducto());
		}
		if (comandaProductoDto.getComentario() != null) {
			comandaProductoToUpdate.setComentario(comandaProductoDto.getComentario());
		}

		return convertirToDto(comandaProductoRepository.save(comandaProductoToUpdate));
	}

	@Override
	public void deleteById(Long id) {
		comandaProductoRepository.deleteById(id);
	}

//	@Override
//	public ComandaProductoDTO borrado(Long id) {
//		ComandaProducto comandaProductoToUpdate = comandaProductoRepository.findById(id).get();
//		comandaProductoToUpdate.setBorrado(false);
//		return convertirToDto(comandaProductoRepository.save(comandaProductoToUpdate));
//	}

	private ComandaProductoDTO convertirToDto(ComandaProducto comandaProducto) {
		ComandaProductoDTO comandaProductoDto = modelMapper.map(comandaProducto, ComandaProductoDTO.class);
		return comandaProductoDto;
	}

	private ComandaProducto convertirToEntidad(ComandaProductoDTO comandaProductoDto) throws ParseException {
		ComandaProducto comandaProducto = modelMapper.map(comandaProductoDto, ComandaProducto.class);
		return comandaProducto;
	}

}
