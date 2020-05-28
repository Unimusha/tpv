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
@ApiModel(description = "Este modelo representa a cada linea de una Comanda")
public class ComandaProductoDTO implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = -7243010060110977216L;

	@ApiModelProperty(required = false, position = 1, value = "99999")
	@JsonProperty("id_comanda_producto")
	private Long idComandaProducto;

	@ApiModelProperty(required = true, position = 2, value = "99999")
	@JsonProperty("id_comanda")
	private Long idComanda;

	@ApiModelProperty(required = true, position = 3, value = "99999")
	@JsonProperty("id_producto")
	private Long idProducto;

	@ApiModelProperty(required = true, position = 4, value = "0")
	@JsonProperty("unidades_producto")
	private Long unidadesProducto;

	@ApiModelProperty(required = true, position = 5, value = "Comentario sobre el producto")
	@JsonProperty("comentario")
	private String comentario;

	@ApiModelProperty(required = false, position = 6)
	@JsonProperty("borrado")
	private Boolean borrado;

	@ApiModelProperty(required = false, position = 7)
	@JsonProperty("comandas")
	@JsonBackReference
	private ComandaDTO comandas;

	@ApiModelProperty(required = false, position = 8)
	@JsonProperty("producto")
	private ProductoDTO producto;

}