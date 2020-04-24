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
@ApiModel(description = "Este modelo representa a las Comandas")
@JsonInclude(JsonInclude.Include.NON_NULL)
public class ComandaDTO implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = -6177318315824995353L;

	@ApiModelProperty(required = false, position = 1, value = "99999")
	@JsonProperty("idComanda")
	private Long idComanda;

	@ApiModelProperty(required = true, position = 2, value = "99999")
	@JsonProperty("idMesa")
	private Long idMesa;

	@ApiModelProperty(required = false, position = 3, value = "false")
	@JsonProperty("completadoBarra")
	private Boolean completadoBarra;

	@ApiModelProperty(required = false, position = 4, value = "false")
	@JsonProperty("completadoCocina")
	private Boolean completadoCocina;

	@ApiModelProperty(required = false, position = 5, value = "false")
	@JsonProperty("pagado")
	private Boolean pagado;

	@ApiModelProperty(required = false, position = 6)
	@JsonProperty("borrado")
	private Boolean borrado;

	@ApiModelProperty(required = false, position = 7)
	@JsonProperty("mesas")
	@JsonBackReference
	private MesaDTO mesas;

	@ApiModelProperty(required = false, position = 8)
	@JsonProperty("comandasProductos")
	@JsonManagedReference
	@EqualsAndHashCode.Exclude
	@ToString.Exclude
	@Builder.Default
	private Set<ComandaProductoDTO> comandasProductos = new HashSet<>();

}