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
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.tpv.dto.UsuarioDTO;
import com.tpv.service.UsuarioService;

import io.swagger.annotations.ApiOperation;

@RestController
@RequestMapping("api/usuarios")

public class UsuarioController {

	@Autowired
	UsuarioService usuarioService;

	@ApiOperation(value = "Busca todos los usuarios")
	@GetMapping
	public ResponseEntity<List<UsuarioDTO>> findAll() {
		return ResponseEntity.ok(usuarioService.findAll());
	}

	@ApiOperation(value = "Crea un usuario dando un array, Req.Mínimo: 'nombre', 'contrasenia' y 'rango'")
	@PostMapping
	public ResponseEntity<UsuarioDTO> create(@Valid @RequestBody UsuarioDTO usuarioDto) throws ParseException {
		return ResponseEntity.ok(usuarioService.save(usuarioDto));
	}

	@ApiOperation(value = "Busca un usuario")
	@GetMapping("/{id}")
	public ResponseEntity<UsuarioDTO> findById(@PathVariable Long id) {
		return ResponseEntity.ok(usuarioService.findById(id));
	}

	@ApiOperation(value = "Edita un usuario dando un array. Opciones: 'nombre' o 'contrasenia' o 'rango'")
	@PatchMapping("/{id}")
	public ResponseEntity<UsuarioDTO> update(@PathVariable Long id, @Valid @RequestBody UsuarioDTO usuarioDto) {
		return ResponseEntity.ok(usuarioService.update(id, usuarioDto));
	}

	@ApiOperation(value = "Borra de manera lógica un usuario")
	@DeleteMapping("/{id}")
	public ResponseEntity<String> delete(@PathVariable Long id) {
		usuarioService.deleteById(id);
		return ResponseEntity.ok("Usuario borrado correctamente");
	}

//	@ApiOperation(value = "Recupera un usuario que haya sido borrado de manera lógica")
//	@PatchMapping("/borrado/{id}")
//	public ResponseEntity<UsuarioDTO> borrado(@PathVariable Long id) {
//		return ResponseEntity.ok(usuarioService.borrado(id));
//	}

	@ApiOperation(value = "Comprueba si la contraseña del usuario es igual dando un array de 'nombre' y contraseña")
	@PostMapping("/login")
	public ResponseEntity<String> login(@Valid @RequestBody UsuarioDTO usuarioDto) {
		return ResponseEntity.ok(usuarioService.login(usuarioDto));
	}

}
