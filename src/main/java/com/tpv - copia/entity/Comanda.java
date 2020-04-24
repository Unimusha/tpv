package com.tpv.entity;

import java.io.Serializable;
import java.util.HashSet;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import org.hibernate.annotations.SQLDelete;
import org.hibernate.annotations.Where;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.NoArgsConstructor;
import lombok.ToString;

@Entity
@Data
@AllArgsConstructor
@NoArgsConstructor
@Builder
@SQLDelete(sql = "UPDATE comandas " + "SET borrado = true " + "WHERE id_comanda = ?")
@Where(clause = "borrado = false")
@Table(name = "comandas", schema = "tpv")
public class Comanda implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = -2424438554763352529L;

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "id_comanda")
	private Long idComanda;

	@Column(name = "id_mesa", nullable = false)
	private Long idMesa;

	@Column(name = "completado_barra", nullable = false)
	private Boolean completadoBarra;

	@Column(name = "completado_cocina", nullable = false)
	private Boolean completadoCocina;

	@Column(name = "pagado", nullable = false)
	private Boolean pagado;

	@Column(name = "borrado", nullable = false)
	private Boolean borrado;

	@ManyToOne(fetch = FetchType.LAZY, optional = false)
	@JoinColumn(name = "id_mesa", nullable = false, insertable = false, updatable = false)
	private Mesa mesas;

	@EqualsAndHashCode.Exclude
	@ToString.Exclude
	@Builder.Default
	@OneToMany(mappedBy = "comandas", fetch = FetchType.LAZY, cascade = CascadeType.ALL, orphanRemoval = true)
	private Set<ComandaProducto> comandasProductos = new HashSet<>();

}