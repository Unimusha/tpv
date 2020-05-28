package com.tpv.dto;

import java.io.Serializable;
import java.util.HashSet;
import java.util.Set;

import com.fasterxml.jackson.annotation.JsonManagedReference;
import com.fasterxml.jackson.annotation.JsonProperty;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.NoArgsConstructor;
import lombok.ToString;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Builder
@ApiModel(description = "Este modelo representa a las Categorias")
public class CategoriaDTO implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 3759160293317794376L;

	@ApiModelProperty(required = false, position = 1, value = "99999")
	@JsonProperty("id_categoria")
	private Long idCategoria;

	@ApiModelProperty(required = true, position = 2, value = "nombreDeCategoria")
	@JsonProperty("nombre")
	private String nombre;

	@ApiModelProperty(required = false, position = 3)
	@JsonProperty("borrado")
	private Boolean borrado;

	@ApiModelProperty(required = false, position = 4)
	@JsonProperty("productos")
	@JsonManagedReference
	@EqualsAndHashCode.Exclude
	@ToString.Exclude
	@Builder.Default
	private Set<ProductoDTO> productos = new HashSet<>();
}