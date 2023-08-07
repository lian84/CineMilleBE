package com.CineMille.Repository;

import com.CineMille.Model.SalaCinema;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface SalaCinemaRepository extends JpaRepository<SalaCinema, Long> {
}