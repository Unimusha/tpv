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
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Entity
@Data
@AllArgsConstructor
@NoArgsConstructor
@Builder
@SQLDelete(sql = "UPDATE mesas " + "SET borrado = true " + "WHERE id_mesa = ?")
@Where(clause = "borrado = false")
@Table(name = "mesas", schema = "tpv")
public class Mesa implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = -558980625118692256L;

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "id_mesa")
	private Long idMesa;

	@Column(name = "id_usuario", nullable = false)
	private Long idUsuario;

	@Column(name = "numero_mesa", nullable = false)
	private Long numeroMesa;

	@Column(name = "numero_personas", nullable = false)
	private Long numeroPersonas;

	@Column(name = "borrado")
	private Boolean borrado;

//	@ManyToOne(fetch = FetchType.LAZY, optional = false)
//	@JoinColumn(name = "id_usuario", nullable = false, insertable = false, updatable = false)
	@ManyToOne
	@JoinColumn(name = "id_usuario", nullable = false, insertable = false, updatable = false)
	private Usuario usuario;

//	@EqualsAndHashCode.Exclude
//	@ToString.Exclude
//	@Builder.Default
//	@OneToMany(mappedBy = "mesas", fetch = FetchType.LAZY, cascade = CascadeType.ALL, orphanRemoval = true)
//	private Set<Comanda> comandas = new HashSet<>();

}