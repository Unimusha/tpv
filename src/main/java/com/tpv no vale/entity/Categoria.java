package com.tpv.entity;

import java.io.Serializable;
import java.util.HashSet;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
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
@SQLDelete(sql = "UPDATE categorias " + "SET borrado = true " + "WHERE id_categoria = ?")
@Where(clause = "borrado = false")
@Table(name = "categorias", schema = "tpv")
public class Categoria implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 5897214457488274951L;

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "id_categoria")
	private Long idCategoria;

	@Column(name = "nombre", nullable = false)
	private String nombre;

	@Column(name = "borrado", nullable = false)
	private Boolean borrado;

	@EqualsAndHashCode.Exclude
	@ToString.Exclude
	@Builder.Default
	@OneToMany(mappedBy = "categoria", cascade = CascadeType.ALL, orphanRemoval = true)
	private Set<Producto> productos = new HashSet<>();

}