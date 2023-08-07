package com.CineMille.Repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.CineMille.Model.Film;

@Repository
public interface FilmRepository extends JpaRepository<Film, Long> {

}