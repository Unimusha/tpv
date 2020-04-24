package com.tpv.dto;

import java.io.Serializable;
import java.util.HashSet;
import java.util.Set;

import com.fasterxml.jackson.annotation.JsonBackReference;
import com.fasterxml.jackson.annotation.JsonInclude;
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
@ApiModel(description = "Este modelo representa a la Mesa")
@JsonInclude(JsonInclude.Include.NON_NULL)
public class MesaDTO implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = -8152966682787574768L;

	@ApiModelProperty(required = false, position = 1)
	@JsonProperty("idMesa")
	private Long idMesa;

	@ApiModelProperty(required = true, position = 2)
	@JsonProperty("idUsuario")
	private Long idUsuario;

	@ApiModelProperty(required = true, position = 3)
	@JsonProperty("numeroMesa")
	private Long numeroMesa;

	@ApiModelProperty(required = true, position = 4)
	@JsonProperty("numeroPersonas")
	private Long numeroPersonas;

	@ApiModelProperty(required = false, position = 5)
	@JsonProperty("borrado")
	private Boolean borrado;

	@ApiModelProperty(required = false, position = 6)
	@JsonProperty("usuario")
	@JsonBackReference
	private UsuarioDTO usuario;

	@ApiModelProperty(required = false, position = 7)
	@JsonProperty("comandas")
	@JsonManagedReference
	@EqualsAndHashCode.Exclude
	@ToString.Exclude
	@Builder.Default
	private Set<ComandaDTO> comandas = new HashSet<>();

}