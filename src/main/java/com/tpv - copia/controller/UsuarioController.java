package com.tpv.controller;

import java.text.ParseException;
import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PatchMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.tpv.dto.UsuarioDTO;
import com.tpv.service.UsuarioService;

@RestController
@RequestMapping("api/usuarios")

public class UsuarioController {

	@Autowired
	UsuarioService usuarioService;

	@GetMapping
	public ResponseEntity<List<UsuarioDTO>> findAll() {
		return ResponseEntity.ok(usuarioService.findAll());
	}

	@PostMapping
	public ResponseEntity<UsuarioDTO> create(@Valid @RequestBody UsuarioDTO usuarioDto) throws ParseException {
		return ResponseEntity.ok(usuarioService.save(usuarioDto));
	}

	@GetMapping("/{id}")
	public ResponseEntity<UsuarioDTO> findById(@PathVariable Long id) {
		return ResponseEntity.ok(usuarioService.findById(id));
	}

	@PutMapping("/{id}")
	public ResponseEntity<UsuarioDTO> update(@PathVariable Long id, @Valid @RequestBody UsuarioDTO usuarioDto) {
		return ResponseEntity.ok(usuarioService.update(id, usuarioDto));
	}

	@DeleteMapping("/{id}")
	public ResponseEntity<String> delete(@PathVariable Long id) {
		usuarioService.deleteById(id);
		return ResponseEntity.ok("Usuario borrado correctamente");
	}

	@PatchMapping("/borrado/{id}")
	public ResponseEntity<UsuarioDTO> borrado(@PathVariable Long id) {
		return ResponseEntity.ok(usuarioService.borrado(id));
	}

	@PatchMapping("/jefe/{id}")
	public ResponseEntity<UsuarioDTO> jefe(@PathVariable Long id) {
		return ResponseEntity.ok(usuarioService.jefe(id));
	}

	@PostMapping("/login")
	public ResponseEntity<String> login(@Valid @RequestBody UsuarioDTO usuarioDto) {
		return ResponseEntity.ok(usuarioService.login(usuarioDto));
	}

}
