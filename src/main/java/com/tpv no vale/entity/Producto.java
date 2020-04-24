package com.tpv.entity;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
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
@SQLDelete(sql = "UPDATE productos " + "SET borrado = true " + "WHERE id_producto = ?")
@Where(clause = "borrado = false")
@Table(name = "productos", schema = "tpv")

public class Producto implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = -8848247708107177240L;

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "id_producto")
	private Long idProducto;

	@Column(name = "id_categoria", nullable = false)
	private Long idCategoria;

	@Column(name = "id_usuario", nullable = false)
	private Long idUsuario;

	@Column(name = "nombre", nullable = false)
	private String nombre;

	@Column(name = "precio")
	private Double precio;

	@Column(name = "barra", nullable = false)
	private Boolean barra;

	@Column(name = "cocina", nullable = false)
	private Boolean cocina;

	@Column(name = "borrado", nullable = false)
	private Boolean borrado;

	@ManyToOne(optional = false)
	@JoinColumn(name = "id_categoria", nullable = false, insertable = false, updatable = false)
	private Categoria categoria;

}