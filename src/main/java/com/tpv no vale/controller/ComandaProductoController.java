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

import com.tpv.dto.ComandaProductoDTO;
import com.tpv.service.ComandaProductoService;

@RestController
@RequestMapping("api/comandasProductos")

public class ComandaProductoController {

	@Autowired
	ComandaProductoService comandaProductoService;

	@GetMapping
	public ResponseEntity<List<ComandaProductoDTO>> findAll() {
		return ResponseEntity.ok(comandaProductoService.findAll());
	}

	@PostMapping
	public ResponseEntity<ComandaProductoDTO> create(@Valid @RequestBody ComandaProductoDTO comandaProductoDto)
			throws ParseException {
		return ResponseEntity.ok(comandaProductoService.save(comandaProductoDto));
	}

	@GetMapping("/{id}")
	public ResponseEntity<ComandaProductoDTO> findById(@PathVariable Long id) {
		return ResponseEntity.ok(comandaProductoService.findById(id));
	}

	@PutMapping("/{id}")
	public ResponseEntity<ComandaProductoDTO> update(@PathVariable Long id,
			@Valid @RequestBody ComandaProductoDTO comandaProductoDto) throws ParseException {
		return ResponseEntity.ok(comandaProductoService.update(id, comandaProductoDto));
	}

	@DeleteMapping("/{id}")
	public ResponseEntity<String> delete(@PathVariable Long id) {
		comandaProductoService.deleteById(id);
		return ResponseEntity.ok("ComandaProducto borrado correctamente");
	}

	@PatchMapping("/borrado/{id}")
	public ResponseEntity<ComandaProductoDTO> borrado(@PathVariable Long id) {
		return ResponseEntity.ok(comandaProductoService.borrado(id));
	}

}
