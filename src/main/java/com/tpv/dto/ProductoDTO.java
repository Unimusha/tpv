package com.tpv.dto;

import java.io.Serializable;

import com.fasterxml.jackson.annotation.JsonBackReference;
import com.fasterxml.jackson.annotation.JsonProperty;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
@ApiModel(description = "Este modelo representa a los Productos")

public class ProductoDTO implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = -7897657943315465623L;

	@ApiModelProperty(required = false, position = 1, value = "99999")
	@JsonProperty("id_producto")
	private Long idProducto;

	@ApiModelProperty(required = true, position = 2, value = "99999")
	@JsonProperty("id_categoria")
	private Long idCategoria;

	@ApiModelProperty(required = true, position = 3, value = "99999")
	@JsonProperty("nombre")
	private String nombre;

	@ApiModelProperty(required = false, position = 4, value = "0.0")
	@JsonProperty("precio")
	private Double precio;

	@ApiModelProperty(required = true, position = 5, value = "false")
	@JsonProperty("barra")
	private Boolean barra;

	@ApiModelProperty(required = true, position = 6, value = "false")
	@JsonProperty("cocina")
	private Boolean cocina;

	@ApiModelProperty(required = false, position = 7)
	@JsonProperty("borrado")
	private Boolean borrado;

	@ApiModelProperty(required = false, position = 9)
	@JsonProperty("categoria")
	@JsonBackReference
	private CategoriaDTO categoria;

}