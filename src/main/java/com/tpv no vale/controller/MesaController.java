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

import com.tpv.dto.MesaDTO;
import com.tpv.service.MesaService;

@RestController
@RequestMapping("api/mesas")

public class MesaController {

	@Autowired
	MesaService mesaService;

	@GetMapping
	public ResponseEntity<List<MesaDTO>> findAll() {
		return ResponseEntity.ok(mesaService.findAll());
	}

	@PostMapping
	public ResponseEntity<MesaDTO> create(@Valid @RequestBody MesaDTO mesaDto) throws ParseException {
		return ResponseEntity.ok(mesaService.save(mesaDto));
	}

	@GetMapping("/{id}")
	public ResponseEntity<MesaDTO> findById(@PathVariable Long id) {
		return ResponseEntity.ok(mesaService.findById(id));
	}

	@PutMapping("/{id}")
	public ResponseEntity<MesaDTO> update(@PathVariable Long id, @Valid @RequestBody MesaDTO mesaDto)
			throws ParseException {
		return ResponseEntity.ok(mesaService.update(id, mesaDto));
	}

	@DeleteMapping("/{id}")
	public ResponseEntity<String> delete(@PathVariable Long id) {
		mesaService.deleteById(id);
		return ResponseEntity.ok("Mesa borrada correctamente");
	}

	@PatchMapping("/borrado/{id}")
	public ResponseEntity<MesaDTO> borrado(@PathVariable Long id) {
		return ResponseEntity.ok(mesaService.borrado(id));
	}

}
