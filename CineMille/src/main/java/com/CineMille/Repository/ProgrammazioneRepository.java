package com.CineMille.Repository;

import com.CineMille.Model.Film;
import com.CineMille.Model.Programmazione;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.time.LocalDate;
import java.util.List;

@Repository
public interface ProgrammazioneRepository extends JpaRepository<Programmazione, Long> {

    // Filtra le programmazioni in base all''id della sala
    List<Programmazione> findBySalaCinemaId(Long salaId);

    //Ottiene tutte le programmazioni associate al film
    List<Programmazione> findAllByFilm(Film film);

    //Ottiene la proprogrammazione dei film dove la programmazione é terminata prima di oggi
    List<Programmazione> findByDataFineProBefore(LocalDate date);

}