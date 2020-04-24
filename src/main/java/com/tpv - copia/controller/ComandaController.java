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

import com.tpv.dto.ComandaDTO;
import com.tpv.service.ComandaService;

@RestController
@RequestMapping("api/comandas")

public class ComandaController {

	@Autowired
	ComandaService comandaService;

//	@GetMapping
//	public ResponseEntity<List<ComandaDTO>> findAll() {
//		return ResponseEntity.ok(comandaService.findAll());
//	}

	@GetMapping
	public ResponseEntity<List<ComandaDTO>> findAll() {
		return ResponseEntity.ok(comandaService.probando());
	}

	@PostMapping
	public ResponseEntity<ComandaDTO> create(@Valid @RequestBody ComandaDTO comandaDto) throws ParseException {
		return ResponseEntity.ok(comandaService.save(comandaDto));
	}

	@GetMapping("/{id}")
	public ResponseEntity<ComandaDTO> findById(@PathVariable Long id) {
		return ResponseEntity.ok(comandaService.findById(id));
	}

	@PutMapping("/{id}")
	public ResponseEntity<ComandaDTO> update(@PathVariable Long id, @Valid @RequestBody ComandaDTO comandaDto)
			throws ParseException {
		return ResponseEntity.ok(comandaService.update(id, comandaDto));
	}

	@DeleteMapping("/{id}")
	public ResponseEntity<String> delete(@PathVariable Long id) {
		comandaService.deleteById(id);
		return ResponseEntity.ok("Comanda borrada correctamente");
	}

	@PatchMapping("/borrado/{id}")
	public ResponseEntity<ComandaDTO> borrado(@PathVariable Long id) {
		return ResponseEntity.ok(comandaService.borrado(id));
	}

	@PatchMapping("/completadoBarra/{id}")
	public ResponseEntity<ComandaDTO> completadoBarra(@PathVariable Long id) {
		return ResponseEntity.ok(comandaService.completadoBarra(id));
	}

	@PatchMapping("/completadoCocina/{id}")
	public ResponseEntity<ComandaDTO> completadoCocina(@PathVariable Long id) {

		return ResponseEntity.ok(comandaService.completadoBarra(id));
	}

	@PatchMapping("/pagado/{id}")
	public ResponseEntity<ComandaDTO> pagado(@PathVariable Long id) {
		return ResponseEntity.ok(comandaService.completadoBarra(id));
	}

}
