package com.tpv.serviceimpl;

import java.text.ParseException;
import java.util.List;
import java.util.stream.Collectors;

import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tpv.dto.ComandaDTO;
import com.tpv.entity.Comanda;
import com.tpv.repository.ComandaRepository;
import com.tpv.service.ComandaService;

@Service
public class ComandaServiceImpl implements ComandaService {
	@Autowired
	private ComandaRepository comandaRepository;
	@Autowired
	ModelMapper modelMapper;

	@Override
	public List<ComandaDTO> findAll() {
		List<Comanda> comandas = comandaRepository.findAll();
		return comandas.stream().map(this::convertirToDto).collect(Collectors.toList());
	}

	@Override
	public ComandaDTO findById(Long id) {
		return convertirToDto(comandaRepository.findById(id).get());
	}

	@Override
	public ComandaDTO save(ComandaDTO comandaDto) throws ParseException {
		if (comandaDto.getBorrado() == null) {
			comandaDto.setBorrado(false);
		}
		return convertirToDto(comandaRepository.save(convertirToEntidad(comandaDto)));
	}

	@Override
	public ComandaDTO update(Long id, ComandaDTO comandaDto) {
		Comanda comandaToUpdate = comandaRepository.findById(id).get();
		if (comandaDto.getIdMesa() != null) {
			comandaToUpdate.setIdMesa(comandaDto.getIdMesa());
		}
		if (comandaDto.getCompletadoBarra() != null) {
			comandaToUpdate.setCompletadoBarra(comandaDto.getCompletadoBarra());
		}
		if (comandaDto.getCompletadoCocina() != null) {
			comandaToUpdate.setCompletadoCocina(comandaDto.getCompletadoCocina());
		}
		if (comandaDto.getPagado() != null) {
			comandaToUpdate.setPagado(comandaDto.getPagado());
		}

		return convertirToDto(comandaRepository.save(comandaToUpdate));
	}

	@Override
	public void deleteById(Long id) {
		comandaRepository.deleteById(id);
	}

//	@Override
//	public ComandaDTO borrado(Long id) {
//		Comanda comandaToUpdate = comandaRepository.findById(id).get();
//		comandaToUpdate.setBorrado(false);
//		return convertirToDto(comandaRepository.save(comandaToUpdate));
//	}

	@Override
	public ComandaDTO completadoBarra(Long id) {
		Comanda comandaToUpdate = comandaRepository.findById(id).get();
		comandaToUpdate.setCompletadoBarra(true);
		return convertirToDto(comandaRepository.save(comandaToUpdate));
	}

	@Override
	public ComandaDTO completadoCocina(Long id) {
		Comanda comandaToUpdate = comandaRepository.findById(id).get();
		comandaToUpdate.setCompletadoCocina(true);
		return convertirToDto(comandaRepository.save(comandaToUpdate));
	}

	@Override
	public ComandaDTO pagado(Long id) {
		Comanda comandaToUpdate = comandaRepository.findById(id).get();
		comandaToUpdate.setPagado(true);
		return convertirToDto(comandaRepository.save(comandaToUpdate));
	}

	private ComandaDTO convertirToDto(Comanda comanda) {
		ComandaDTO comandaDto = modelMapper.map(comanda, ComandaDTO.class);
		return comandaDto;
	}

	private Comanda convertirToEntidad(ComandaDTO comandaDto) throws ParseException {
		Comanda comanda = modelMapper.map(comandaDto, Comanda.class);
		return comanda;
	}

}
