package com.CineMille.Service;

import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.List;

import com.CineMille.Model.*;
import com.CineMille.Repository.ProgrammazioneRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.CineMille.Repository.FilmRepository;

@Service
public class FilmService {

    @Autowired
    private FilmRepository filmRepository;
    @Autowired
    private ProgrammazioneRepository programmazioneRepository;

    //Tutta la lista dei film
    public List<Film> getFilmList() {
        return filmRepository.findAll();
    }

    public Film getFilmById(Long id) {
        return filmRepository.findById(id).orElse(null);
    }

    public void saveFilm(Film film) {
        filmRepository.save(film);
    }

    //Vero cancellazione riuscita, falso->Exception
    public boolean deleteFilmById(Long id) {
        try {
            filmRepository.deleteById(id);
            return true; // Cancellazione riuscita
        } catch (Exception e) {
            return false; // Cancellazione fallita
        }
    }

    //Logica per mostrare tutte le programmazioni di ogni film
    public List<FilmProgrammazioneDTO> getAllFilmsWithProgrammazioni() {
        List<Film> films = filmRepository.findAll();
        List<FilmProgrammazioneDTO> filmProgrammazioniDTO = new ArrayList<>();

        for (Film film : films) {
            FilmProgrammazioneDTO filmProgrammazioneDTO = new FilmProgrammazioneDTO(film.getId());
            filmProgrammazioneDTO.setTitolo(film.getTitolo());
            filmProgrammazioneDTO.setDescrizione(film.getDescrizione());

            // Questa è la lista delle programmazioni del film
            List<Programmazione> programmazioni = film.getProgrammazioni();
            for (Programmazione programmazione : programmazioni) {
                ProgrammazioneDTO programmazioneDTO = new ProgrammazioneDTO();
                programmazioneDTO.setTitoloFilm(film.getTitolo());
                programmazioneDTO.setLocandina(film.getLocandina());
                programmazioneDTO.setIdSalaCinema(programmazione.getSalaCinema().getId());
                programmazioneDTO.getDateInizioProFormatted().add(programmazione.getDataInizioPro().format(DateTimeFormatter.ofPattern("dd/MM/yyyy")));
                programmazioneDTO.getDateFineProFormatted().add(programmazione.getDataFinePro().format(DateTimeFormatter.ofPattern("dd/MM/yyyy")));
                programmazioneDTO.getOrariProiezione().add(programmazione.getOrarioProiezione());

                filmProgrammazioneDTO.addProgrammazione(programmazioneDTO);
            }

            filmProgrammazioniDTO.add(filmProgrammazioneDTO);
        }

        return filmProgrammazioniDTO;
    }

    //Logica per mostrare tutte le programmazioni presenti nel database
    public List<ProgrammazioneDTO> getAllProgrammationWithFilm() {
        List<Programmazione> programmazioni = programmazioneRepository.findAll();
        List<ProgrammazioneDTO> programmazioniDTO = new ArrayList<>();

        for (Programmazione programmazione : programmazioni) {
            ProgrammazioneDTO programmazioneDTO = new ProgrammazioneDTO();
            programmazioneDTO.setTitoloFilm(programmazione.getFilm().getTitolo());
            programmazioneDTO.setIdSalaCinema(programmazione.getSalaCinema().getId());
            programmazioneDTO.setLocandina(programmazione.getFilm().getLocandina());

            // Aggiungi le date e l'orario formattato alle liste
            programmazioneDTO.getDateInizioProFormatted().add(programmazione.getDataInizioPro().format(DateTimeFormatter.ofPattern("dd/MM/yyyy")));
            programmazioneDTO.getDateFineProFormatted().add(programmazione.getDataFinePro().format(DateTimeFormatter.ofPattern("dd/MM/yyyy")));
            programmazioneDTO.getOrariProiezione().add(programmazione.getOrarioProiezione());

            programmazioniDTO.add(programmazioneDTO);
        }

        return programmazioniDTO;
    }

    //Logica per mostrare tutte le programmazioni concluse
    public List<ProgrammazioneDTO> getTerminatedProgrammazioniWithFilms() {
        LocalDate today = LocalDate.now();
        List<Programmazione> programmazioni = programmazioneRepository.findByDataFineProBefore(today);
        List<ProgrammazioneDTO> programmazioniDTO = new ArrayList<>();

        for (Programmazione programmazione : programmazioni) {
            ProgrammazioneDTO programmazioneDTO = new ProgrammazioneDTO();
            programmazioneDTO.setTitoloFilm(programmazione.getFilm().getTitolo());
            programmazioneDTO.setIdSalaCinema(programmazione.getSalaCinema().getId());
            programmazioneDTO.getDateInizioProFormatted().add(programmazione.getDataInizioPro().format(DateTimeFormatter.ofPattern("dd/MM/yyyy")));
            programmazioneDTO.getDateFineProFormatted().add(programmazione.getDataFinePro().format(DateTimeFormatter.ofPattern("dd/MM/yyyy")));
            programmazioneDTO.getOrariProiezione().add(programmazione.getOrarioProiezione());

            programmazioniDTO.add(programmazioneDTO);
        }

        return programmazioniDTO;
    }

}