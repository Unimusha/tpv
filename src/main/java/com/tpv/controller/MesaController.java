package com.tpv.controller;

import java.text.ParseException;
import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PatchMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.tpv.dto.MesaDTO;
import com.tpv.service.MesaService;

import io.swagger.annotations.ApiOperation;

@RestController
@RequestMapping("api/mesas")
@CrossOrigin(origins = "*")

public class MesaController {

	@Autowired
	MesaService mesaService;

	@ApiOperation(value = "Busca todas las mesas")
	@GetMapping
	public ResponseEntity<List<MesaDTO>> findAll() {
		return ResponseEntity.ok(mesaService.findAll());
	}

	@ApiOperation(value = "Crea una mesa dando un array, Req.Mínimo: 'id_usuario', 'numero_mesa' y 'numero_personas'")
	@PostMapping
	public ResponseEntity<MesaDTO> create(@Valid @RequestBody MesaDTO mesaDto) throws ParseException {
		return ResponseEntity.ok(mesaService.save(mesaDto));
	}

	@ApiOperation(value = "Busca una mesa")
	@GetMapping("/{id}")
	public ResponseEntity<MesaDTO> findById(@PathVariable Long id) {
		return ResponseEntity.ok(mesaService.findById(id));
	}

	@ApiOperation(value = "Edita una mesa dando un array, Opciones: 'id_usuario' o 'numero_mesa' o 'numero_personas'")
	@PatchMapping("/{id}")
	public ResponseEntity<MesaDTO> update(@PathVariable Long id, @Valid @RequestBody MesaDTO mesaDto)
			throws ParseException {
		return ResponseEntity.ok(mesaService.update(id, mesaDto));
	}

	@ApiOperation(value = "Borra de manera lógica una mesa")
	@DeleteMapping("/{id}")
	public ResponseEntity<String> delete(@PathVariable Long id) {
		mesaService.deleteById(id);
		return ResponseEntity.ok("Mesa borrada correctamente");
	}

//	@ApiOperation(value = "Recupera una mesa que haya sido borrado de manera lógica")
//	@PatchMapping("/borrado/{id}")
//	public ResponseEntity<MesaDTO> borrado(@PathVariable Long id) {
//		return ResponseEntity.ok(mesaService.borrado(id));
//	}

}
