package com.tpv.controller;

import java.text.ParseException;
import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.tpv.dto.ComandaProductoDTO;
import com.tpv.service.ComandaProductoService;

import io.swagger.annotations.ApiOperation;

@RestController
@RequestMapping("api/comandasProductos")
@CrossOrigin(origins = "*")

public class ComandaProductoController {

	@Autowired
	ComandaProductoService comandaProductoService;

	@ApiOperation(value = "Busca todas las comandaProductos")
	@GetMapping
	public ResponseEntity<List<ComandaProductoDTO>> findAll() {
		return ResponseEntity.ok(comandaProductoService.findAll());
	}

//	@ApiOperation(value = "Crea una comandaProducto dando un array, Req.Mínimo: 'id_comanda', 'id_producto' y 'unidades_producto'")
//	@PostMapping
//	public ResponseEntity<ComandaProductoDTO> create(@Valid @RequestBody ComandaProductoDTO comandaProductoDto)
//			throws ParseException {
//		return ResponseEntity.ok(comandaProductoService.save(comandaProductoDto));
//	}

	@ApiOperation(value = "Crea un lista de comandaProducto dando un array, Req.Mínimo: 'id_comanda', 'id_producto' y 'unidades_producto'")
	@PostMapping
	public ResponseEntity<List<ComandaProductoDTO>> createList(
			@Valid @RequestBody List<ComandaProductoDTO> listaComandaProductoDto) throws ParseException {
		return ResponseEntity.ok(comandaProductoService.saveList(listaComandaProductoDto));
	}

	@ApiOperation(value = "Busca una comandaProducto")
	@GetMapping("/{id}")
	public ResponseEntity<ComandaProductoDTO> findById(@PathVariable Long id) {
		return ResponseEntity.ok(comandaProductoService.findById(id));
	}

	@ApiOperation(value = "Edita una comandaProducto dando un array, Opciones: 'id_comanda' o 'id_producto' o 'unidades_producto' o 'comentario'")
	@PutMapping("/{id}")
	public ResponseEntity<ComandaProductoDTO> update(@PathVariable Long id,
			@Valid @RequestBody ComandaProductoDTO comandaProductoDto) throws ParseException {
		return ResponseEntity.ok(comandaProductoService.update(id, comandaProductoDto));
	}

	@ApiOperation(value = "Borra de manera lógica una comandaProducto")
	@DeleteMapping("/{id}")
	public ResponseEntity<String> delete(@PathVariable Long id) {
		comandaProductoService.deleteById(id);
		return ResponseEntity.ok("ComandaProducto borrado correctamente");
	}

//	@ApiOperation(value = "Recupera una comandaProducto que haya sido borrado de manera lógica")
//	@PatchMapping("/borrado/{id}")
//	public ResponseEntity<ComandaProductoDTO> borrado(@PathVariable Long id) {
//		return ResponseEntity.ok(comandaProductoService.borrado(id));
//	}

}
