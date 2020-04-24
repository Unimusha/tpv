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

import com.tpv.dto.ProductoDTO;
import com.tpv.service.ProductoService;

@RestController
@RequestMapping("api/productos")

public class ProductoController {

	@Autowired
	ProductoService productoService;

	@GetMapping
	public ResponseEntity<List<ProductoDTO>> findAll() {
		return ResponseEntity.ok(productoService.findAll());
	}

	@PostMapping
	public ResponseEntity<ProductoDTO> create(@Valid @RequestBody ProductoDTO productoDto) throws ParseException {
		return ResponseEntity.ok(productoService.save(productoDto));
	}

	@GetMapping("/{id}")
	public ResponseEntity<ProductoDTO> findById(@PathVariable Long id) {
		return ResponseEntity.ok(productoService.findById(id));
	}

	@PutMapping("/{id}")
	public ResponseEntity<ProductoDTO> update(@PathVariable Long id, @Valid @RequestBody ProductoDTO productoDto)
			throws ParseException {
		return ResponseEntity.ok(productoService.update(id, productoDto));
	}

	@DeleteMapping("/{id}")
	public ResponseEntity<String> delete(@PathVariable Long id) {
		productoService.deleteById(id);
		return ResponseEntity.ok("Producto borrado correctamente");
	}

	@PatchMapping("/borrado/{id}")
	public ResponseEntity<ProductoDTO> borrado(@PathVariable Long id) {
		return ResponseEntity.ok(productoService.borrado(id));
	}

	@PatchMapping("/barra/{id}")
	public ResponseEntity<ProductoDTO> barra(@PathVariable Long id) {
		return ResponseEntity.ok(productoService.barra(id));
	}

	@PatchMapping("/cocina/{id}")
	public ResponseEntity<ProductoDTO> cocina(@PathVariable Long id) {
		return ResponseEntity.ok(productoService.cocina(id));
	}

}
