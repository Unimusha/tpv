package com.tpv.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.tpv.entity.ComandaProducto;

@Repository
public interface ComandaProductoRepository extends JpaRepository<ComandaProducto, Long> {

}