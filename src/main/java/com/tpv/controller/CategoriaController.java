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

import com.tpv.dto.CategoriaDTO;
import com.tpv.service.CategoriaService;

import io.swagger.annotations.ApiOperation;

@RestController
@RequestMapping("api/categorias")
@CrossOrigin(origins = "*")

public class CategoriaController {

	@Autowired
	CategoriaService categoriaService;

	@ApiOperation(value = "Busca todas las categorías")
	@GetMapping
	public ResponseEntity<List<CategoriaDTO>> findAll() {
		return ResponseEntity.ok(categoriaService.findAll());
	}

	@ApiOperation(value = "Crea una categoría dando un array, Req.Mínimo: 'nombre'")
	@PostMapping
	public ResponseEntity<CategoriaDTO> create(@Valid @RequestBody CategoriaDTO categoriaDto) throws ParseException {
		return ResponseEntity.ok(categoriaService.save(categoriaDto));
	}

	@ApiOperation(value = "Busca una categoría")
	@GetMapping("/{id}")
	public ResponseEntity<CategoriaDTO> findById(@PathVariable Long id) {
		return ResponseEntity.ok(categoriaService.findById(id));
	}

	@ApiOperation(value = "Edita una categoría dando un array, Opciones: 'nombre'")
	@PatchMapping("/{id}")
	public ResponseEntity<CategoriaDTO> update(@PathVariable Long id, @Valid @RequestBody CategoriaDTO categoriaDto)
			throws ParseException {
		return ResponseEntity.ok(categoriaService.update(id, (categoriaDto)));
	}

	@ApiOperation(value = "Borra de manera lógica una categoría")
	@DeleteMapping("/{id}")
	public ResponseEntity<String> delete(@PathVariable Long id) {
		categoriaService.deleteById(id);
		return ResponseEntity.ok("Categoria borrada correctamente");
	}

//	@ApiOperation(value = "Recupera una categoría que haya sido borrado de manera lógica")
//	@PatchMapping("/borrado/{id}")
//	public ResponseEntity<CategoriaDTO> borrado(@PathVariable Long id) {
//		return ResponseEntity.ok(categoriaService.borrado(id));
//	}

}
