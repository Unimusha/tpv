package com.tpv.entity;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import org.hibernate.annotations.SQLDelete;
import org.hibernate.annotations.Where;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Entity
@Data
@AllArgsConstructor
@NoArgsConstructor
@SQLDelete(sql = "UPDATE comandasproductos " + "SET borrado = true " + "WHERE id_comanda_producto = ?")
@Where(clause = "borrado = false")
@Table(name = "comandasproductos", schema = "tpv")
public class ComandaProducto implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = -3784234935761654942L;

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "id_comanda_producto")
	private Long idComandaProducto;

	@Column(name = "id_comanda", nullable = false)
	private Long idComanda;

	@Column(name = "id_producto", nullable = false)
	private Long idProducto;

	@Column(name = "unidades_producto", nullable = false)
	private Long unidadesProducto;

	@Column(name = "borrado", nullable = false)
	private Boolean borrado;

	@ManyToOne(fetch = FetchType.LAZY, optional = false)
	@JoinColumn(name = "id_comanda", nullable = false, insertable = false, updatable = false)
	private Comanda comandas;

	@ManyToOne
	@JoinColumn(name = "id_producto", nullable = false, insertable = false, updatable = false)
	private Producto producto;

}