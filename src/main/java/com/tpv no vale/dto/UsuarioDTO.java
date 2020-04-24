package com.tpv.dto;

import java.io.Serializable;
import java.util.HashSet;
import java.util.Set;

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
@ApiModel(description = "Este modelo representa al Usuario")
@JsonInclude(JsonInclude.Include.NON_NULL)

public class UsuarioDTO implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1811780179407257852L;

	@ApiModelProperty(required = false, position = 1, value = "idUsuarioEjemplo")
	@JsonProperty("idUsuario")
	private Long idUsuario;

	@ApiModelProperty(required = true, position = 2, example = "nombreDeEjemplo")
	@JsonProperty("nombre")
	private String nombre;

	@ApiModelProperty(required = true, position = 3, example = "contraseniaDeEjemplo")
	@JsonProperty("contrasenia")
	private String contrasenia;

	@ApiModelProperty(required = false, position = 4, example = "false")
	@JsonProperty("esJefe")
	private Boolean esJefe;

	@ApiModelProperty(required = false, position = 5, example = "false")
	@JsonProperty("borrado")
	private Boolean borrado;

	@ApiModelProperty(required = false, position = 6)
	@JsonProperty("mesas")
	@JsonManagedReference
	@EqualsAndHashCode.Exclude
	@ToString.Exclude
	@Builder.Default
	private Set<MesaDTO> mesas = new HashSet<>();
}