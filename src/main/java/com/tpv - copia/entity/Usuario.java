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
@SQLDelete(sql = "UPDATE usuarios " + "SET borrado = true " + "WHERE id_usuario = ?")
@Where(clause = "borrado = false")
@Table(name = "usuarios", schema = "tpv")

public class Usuario implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 4360267777380254668L;

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "id_usuario")
	private Long idUsuario;

	@Column(name = "nombre", nullable = false, unique = true)
	private String nombre;

	@Column(name = "contrasenia", nullable = false)
	private String contrasenia;

	@Column(name = "es_jefe")
	private Boolean esJefe;

	@Column(name = "borrado")
	private Boolean borrado;

	@EqualsAndHashCode.Exclude
	@ToString.Exclude
	@Builder.Default
//	@OneToMany(mappedBy = "usuario", fetch = FetchType.LAZY, cascade = CascadeType.ALL, orphanRemoval = true)
	@OneToMany(mappedBy = "usuario", cascade = CascadeType.ALL, orphanRemoval = true)
	private Set<Mesa> mesas = new HashSet<>();

}