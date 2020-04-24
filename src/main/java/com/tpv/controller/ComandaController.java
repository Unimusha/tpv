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

import io.swagger.annotations.ApiOperation;

@RestController
@RequestMapping("api/comandas")

public class ComandaController {

	@Autowired
	ComandaService comandaService;

	@ApiOperation(value = "Busca todas las comandas")
	@GetMapping
	public ResponseEntity<List<ComandaDTO>> findAll() {
		return ResponseEntity.ok(comandaService.findAll());
	}

	@ApiOperation(value = "Crea una comanda dando un array, Req.Mínimo: 'id_mesa'")
	@PostMapping
	public ResponseEntity<ComandaDTO> create(@Valid @RequestBody ComandaDTO comandaDto) throws ParseException {
		return ResponseEntity.ok(comandaService.save(comandaDto));
	}

	@ApiOperation(value = "Busca una comanda")
	@GetMapping("/{id}")
	public ResponseEntity<ComandaDTO> findById(@PathVariable Long id) {
		return ResponseEntity.ok(comandaService.findById(id));
	}

	@ApiOperation(value = "Edita una comanda dando un array, Opciones: 'id_mesa' o 'completado_barra' o 'completado_cocina' o 'pagado'")
	@PutMapping("/{id}")
	public ResponseEntity<ComandaDTO> update(@PathVariable Long id, @Valid @RequestBody ComandaDTO comandaDto)
			throws ParseException {
		return ResponseEntity.ok(comandaService.update(id, comandaDto));
	}

	@ApiOperation(value = "Borra de manera lógica una comanda")
	@DeleteMapping("/{id}")
	public ResponseEntity<String> delete(@PathVariable Long id) {
		comandaService.deleteById(id);
		return ResponseEntity.ok("Comanda borrada correctamente");
	}

//	@ApiOperation(value = "Recupera una comanda que haya sido borrado de manera lógica")
//	@PatchMapping("/borrado/{id}")
//	public ResponseEntity<ComandaDTO> borrado(@PathVariable Long id) {
//		return ResponseEntity.ok(comandaService.borrado(id));
//	}

	@ApiOperation(value = "Cambia a true el estado de 'completado_barra' de una comanda")
	@PatchMapping("/completadoBarra/{id}")
	public ResponseEntity<ComandaDTO> completadoBarra(@PathVariable Long id) {
		return ResponseEntity.ok(comandaService.completadoBarra(id));
	}

	@ApiOperation(value = "Cambia a true el estado de 'completado_cocina' de una comanda")
	@PatchMapping("/completadoCocina/{id}")
	public ResponseEntity<ComandaDTO> completadoCocina(@PathVariable Long id) {

		return ResponseEntity.ok(comandaService.completadoBarra(id));
	}

	@ApiOperation(value = "Cambia a true el estado de 'pagado' de una comanda")
	@PatchMapping("/pagado/{id}")
	public ResponseEntity<ComandaDTO> pagado(@PathVariable Long id) {
		return ResponseEntity.ok(comandaService.completadoBarra(id));
	}

}
