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

import com.tpv.dto.ProductoDTO;
import com.tpv.service.ProductoService;

import io.swagger.annotations.ApiOperation;

@RestController
@RequestMapping("api/productos")

public class ProductoController {

	@Autowired
	ProductoService productoService;

	@ApiOperation(value = "Busca todos los productos")
	@GetMapping
	public ResponseEntity<List<ProductoDTO>> findAll() {
		return ResponseEntity.ok(productoService.findAll());
	}

	@ApiOperation(value = "Crea un producto dando un array, Req.Mínimo: 'id_categoria', 'nombre', 'barra' y 'cocina' ")
	@PostMapping
	public ResponseEntity<ProductoDTO> create(@Valid @RequestBody ProductoDTO productoDto) throws ParseException {
		return ResponseEntity.ok(productoService.save(productoDto));
	}

	@ApiOperation(value = "Busca un producto")
	@GetMapping("/{id}")
	public ResponseEntity<ProductoDTO> findById(@PathVariable Long id) {
		return ResponseEntity.ok(productoService.findById(id));
	}

	@ApiOperation(value = "Edita un producto dando un array, Opciones: 'id_categoria' o 'nombre' o 'precio' o 'barra' o 'cocina'")
	@PatchMapping("/{id}")
	public ResponseEntity<ProductoDTO> update(@PathVariable Long id, @Valid @RequestBody ProductoDTO productoDto)
			throws ParseException {
		return ResponseEntity.ok(productoService.update(id, productoDto));
	}

	@ApiOperation(value = "Borra de manera lógica un producto")
	@DeleteMapping("/{id}")
	public ResponseEntity<String> delete(@PathVariable Long id) {
		productoService.deleteById(id);
		return ResponseEntity.ok("Producto borrado correctamente");
	}

//	@ApiOperation(value = "Recupera un usuario que haya sido borrado de manera lógica")
//	@PatchMapping("/borrado/{id}")
//	public ResponseEntity<ProductoDTO> borrado(@PathVariable Long id) {
//		return ResponseEntity.ok(productoService.borrado(id));
//	}

	@ApiOperation(value = "Cambia el estado 'barra' de un producto a true")
	@PatchMapping("/barra/{id}")
	public ResponseEntity<ProductoDTO> barra(@PathVariable Long id) {
		return ResponseEntity.ok(productoService.barra(id));
	}

	@ApiOperation(value = "Cambia el estado 'cocina' de un producto a true")
	@PatchMapping("/cocina/{id}")
	public ResponseEntity<ProductoDTO> cocina(@PathVariable Long id) {
		return ResponseEntity.ok(productoService.cocina(id));
	}

}
