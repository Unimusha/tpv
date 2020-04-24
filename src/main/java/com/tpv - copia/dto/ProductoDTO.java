package com.tpv.dto;

import java.io.Serializable;

import com.fasterxml.jackson.annotation.JsonBackReference;
import com.fasterxml.jackson.annotation.JsonProperty;

import io.swagger.annotations.ApiModelProperty;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor

public class ProductoDTO implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = -7897657943315465623L;

	@ApiModelProperty(required = true, position = 1)
	@JsonProperty("idProducto")
	private Long idProducto;

	@ApiModelProperty(required = true, position = 2)
	@JsonProperty("idCategoria")
	private Long idCategoria;

	@ApiModelProperty(required = true, position = 3)
	@JsonProperty("idUsuario")
	private Long idUsuario;

	@ApiModelProperty(required = true, position = 4)
	@JsonProperty("nombre")
	private String nombre;

	@ApiModelProperty(required = false, position = 5)
	@JsonProperty("precio")
	private Double precio;

	@ApiModelProperty(required = false, position = 6)
	@JsonProperty("barra")
	private Boolean barra;

	@ApiModelProperty(required = false, position = 7)
	@JsonProperty("cocina")
	private Boolean cocina;

	@ApiModelProperty(required = false, position = 8)
	@JsonProperty("borrado")
	private Boolean borrado;

	@ApiModelProperty(required = false, position = 9)
	@JsonProperty("categoria")
	@JsonBackReference
	private CategoriaDTO categoria;

}