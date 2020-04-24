package com.tpv.serviceimpl;

import java.text.ParseException;
import java.util.List;
import java.util.stream.Collectors;

import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import com.tpv.dto.UsuarioDTO;
import com.tpv.entity.Usuario;
import com.tpv.repository.UsuarioRepository;
import com.tpv.service.UsuarioService;

@Service
public class UsuarioServiceImpl implements UsuarioService {
	@Autowired
	private UsuarioRepository usuarioRepository;
	@Autowired
	ModelMapper modelMapper;

	@Override
	public List<UsuarioDTO> findAll() {
		List<Usuario> usuarios = usuarioRepository.findAll();
		return usuarios.stream().map(this::convertirToDto).collect(Collectors.toList());
	}

	@Override
	public UsuarioDTO findById(Long id) {
		return convertirToDto(usuarioRepository.findById(id).get());
	}

	@Override
	public UsuarioDTO save(UsuarioDTO usuarioDto) throws ParseException {
		if (usuarioDto.getBorrado() == null) {
			usuarioDto.setBorrado(false);
		}
		usuarioDto.setContrasenia(encriptarContrasenia(usuarioDto.getContrasenia()));
		return convertirToDto(usuarioRepository.save(convertirToEntidad(usuarioDto)));
	}

	@Override
	public UsuarioDTO update(Long id, UsuarioDTO usuarioDto) {
		Usuario usuarioToUpdate = usuarioRepository.findById(id).get();
		if (usuarioDto.getNombre() != null) {
			usuarioToUpdate.setNombre(usuarioDto.getNombre());
		}
		if (usuarioDto.getContrasenia() != null) {
			usuarioToUpdate.setContrasenia(encriptarContrasenia(usuarioDto.getContrasenia()));
		}
		if (usuarioDto.getRango() != null) {
			usuarioToUpdate.setRango(usuarioDto.getRango());
		}
		return convertirToDto(usuarioRepository.save(usuarioToUpdate));
	}

	@Override
	public void deleteById(Long id) {
		usuarioRepository.deleteById(id);
	}

//	@Override
//	public UsuarioDTO borrado(Long id) {
//		Usuario usuarioToUpdate = usuarioRepository.findById(id).get();
//		usuarioToUpdate.setBorrado(false);
//		return convertirToDto(usuarioRepository.save(usuarioToUpdate));
//	}

	@Override
	public String login(UsuarioDTO usuarioDto) {
		Usuario usuarioToCheck = usuarioRepository.findByNombre(usuarioDto.getNombre());
		if (usuarioToCheck != null) {
			BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder();
			if (passwordEncoder.matches(usuarioDto.getContrasenia(), usuarioToCheck.getContrasenia())) {
				return "Contraseña aceptada";
			} else {
				return "Contraseña erronea";
			}
		} else {
			return "Usuario no encontrado";
		}
	}

	@Override
	public String encriptarContrasenia(String contrasenia) {
		BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder();
		return passwordEncoder.encode(contrasenia);
	}

	private UsuarioDTO convertirToDto(Usuario usuario) {
		UsuarioDTO usuarioDto = modelMapper.map(usuario, UsuarioDTO.class);
		return usuarioDto;
	}

	private Usuario convertirToEntidad(UsuarioDTO usuarioDto) throws ParseException {
		Usuario usuario = modelMapper.map(usuarioDto, Usuario.class);
		return usuario;
	}

}
