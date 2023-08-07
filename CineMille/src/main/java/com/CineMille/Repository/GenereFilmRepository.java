package com.CineMille.Repository;

import com.CineMille.Model.GenereFilm;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface GenereFilmRepository extends JpaRepository<GenereFilm, Long> {
    // Puoi aggiungere metodi personalizzati qui se necessario
}
