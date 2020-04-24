package com.tpv.service;

import java.text.ParseException;
import java.util.List;

import com.tpv.dto.UsuarioDTO;

public interface UsuarioService {

	public abstract List<UsuarioDTO> findAll();

	public abstract UsuarioDTO findById(Long id);

	public abstract UsuarioDTO save(UsuarioDTO usuarioDto) throws ParseException;

	public abstract UsuarioDTO update(Long id, UsuarioDTO usuarioDto);

	public abstract void deleteById(Long id);

	public abstract UsuarioDTO borrado(Long id);

	public abstract UsuarioDTO jefe(Long id);

	public abstract String login(UsuarioDTO usuarioDto);

	public abstract String encriptarContrasenia(String contrasenia);

}