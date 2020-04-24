package com.tpv.serviceimpl;

import java.text.ParseException;
import java.util.List;
import java.util.stream.Collectors;

import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tpv.dto.MesaDTO;
import com.tpv.entity.Mesa;
import com.tpv.repository.MesaRepository;
import com.tpv.service.MesaService;

@Service
public class MesaServiceImpl implements MesaService {
	@Autowired
	private MesaRepository mesaRepository;
	@Autowired
	ModelMapper modelMapper;

	@Override
	public List<MesaDTO> findAll() {
		List<Mesa> mesas = mesaRepository.findAll();
		return mesas.stream().map(this::convertirToDto).collect(Collectors.toList());
	}

	@Override
	public MesaDTO findById(Long id) {
		return convertirToDto(mesaRepository.findById(id).get());
	}

	@Override
	public MesaDTO save(MesaDTO mesaDto) throws ParseException {
		if (mesaDto.getBorrado() == null) {
			mesaDto.setBorrado(false);
		}
		return convertirToDto(mesaRepository.save(convertirToEntidad(mesaDto)));
	}

	@Override
	public MesaDTO update(Long id, MesaDTO mesaDto) {
		Mesa mesaToUpdate = mesaRepository.findById(id).get();
		if (mesaDto.getIdUsuario() != null) {
			mesaToUpdate.setIdUsuario(mesaDto.getIdUsuario());
		}
		if (mesaDto.getNumeroMesa() != null) {
			mesaToUpdate.setNumeroMesa(mesaDto.getNumeroMesa());
		}
		if (mesaDto.getNumeroPersonas() != null) {
			mesaToUpdate.setNumeroPersonas(mesaDto.getNumeroPersonas());
		}

		return convertirToDto(mesaRepository.save(mesaToUpdate));
	}

	@Override
	public void deleteById(Long id) {
		mesaRepository.deleteById(id);
	}

//	@Override
//	public MesaDTO borrado(Long id) {
//		Mesa mesaToUpdate = mesaRepository.findById(id).get();
//		mesaToUpdate.setBorrado(false);
//		return convertirToDto(mesaRepository.save(mesaToUpdate));
//	}

	private MesaDTO convertirToDto(Mesa mesa) {
		MesaDTO mesaDto = modelMapper.map(mesa, MesaDTO.class);
		return mesaDto;
	}

	private Mesa convertirToEntidad(MesaDTO mesaDto) throws ParseException {
		Mesa mesa = modelMapper.map(mesaDto, Mesa.class);
		return mesa;
	}

}
