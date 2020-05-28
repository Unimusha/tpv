package com.tpv.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.tpv.entity.Mesa;

@Repository
public interface MesaRepository extends JpaRepository<Mesa, Long> {

}