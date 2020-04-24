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

public class ComandaProductoDTO implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = -7243010060110977216L;

	@ApiModelProperty(required = false, position = 1)
	@JsonProperty("idComandaProducto")
	private Long idComandaProducto;

	@ApiModelProperty(required = false, position = 2)
	@JsonProperty("idComanda")
	private Long idComanda;

	@ApiModelProperty(required = false, position = 3)
	@JsonProperty("idProducto")
	private Long idProducto;

	@ApiModelProperty(required = false, position = 4)
	@JsonProperty("unidadesProducto")
	private Long unidadesProducto;

	@ApiModelProperty(required = false, position = 5)
	@JsonProperty("borrado")
	private Boolean borrado;

	@ApiModelProperty(required = false, position = 6)
	@JsonProperty("mesas")
	@JsonBackReference
	private MesaDTO mesas;

	@ApiModelProperty(required = false, position = 7)
	@JsonProperty("producto")
	private ProductoDTO producto;

}