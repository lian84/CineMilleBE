package com.CineMille.Controller;

import com.CineMille.Model.FilmProgrammazioneDTO;
import com.CineMille.Model.Programmazione;
import com.CineMille.Model.ProgrammazioneDTO;
import com.CineMille.Service.FilmService;
import com.CineMille.Service.ProgrammazioneService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import org.springframework.format.annotation.DateTimeFormat;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;

import java.util.List;

@RestController
@CrossOrigin(origins = "http://localhost:4200")
@RequestMapping("/api")
public class ApiControllerRest {

    @Autowired
    private ProgrammazioneService programmazioneService;
    @Autowired
    private FilmService filmService;

    //Mostra la tutti gli eventi di programmazione(ogni programmazione é un record della tabella)
    @GetMapping("/programmazione/all")
    public List<ProgrammazioneDTO> getAllProgrammationWithFilm() {
        return filmService.getAllProgrammationWithFilm();
    }

    //Ricerca le programmazioni in base alla sala impostando un itervallo di tempo dataInizioIntervallo, dataFineIntervallo
    @GetMapping("/programmazione/search")
    public List<Programmazione> searchProgrammazione(@RequestParam(name = "sala") Long salaId,
                                                     @RequestParam(name = "dataInizioInt") @DateTimeFormat(iso = DateTimeFormat.ISO.DATE) LocalDate dataInizioInt,
                                                     @RequestParam(name = "dataFineInt") @DateTimeFormat(iso = DateTimeFormat.ISO.DATE) LocalDate dataFineInt) {

        List<Programmazione> programmazioni = programmazioneService.getProgrammazioniBySalaAndDateInterval(salaId, dataInizioInt, dataFineInt);
        for (Programmazione programmazione : programmazioni) {
            // Converti le date nel formato desiderato (giorno/mese/anno)
            String dataInizioProFormatted = programmazione.getDataInizioPro().format(DateTimeFormatter.ofPattern("dd/MM/yyyy"));
            String dataFineProFormatted = programmazione.getDataFinePro().format(DateTimeFormatter.ofPattern("dd/MM/yyyy"));
            programmazione.setDataInizioProFormatted(dataInizioProFormatted);
            programmazione.setDataFineProFormatted(dataFineProFormatted);
        }

        return programmazioni;
    }

    //Ricerca le programmazioni in in tutte le sale impostando un itervallo di tempo dataInizioIntervallo, dataFineIntervallo
    @GetMapping("/programmazione/search-all")
    public List<Programmazione> searchProgrammazione(@RequestParam(name = "dataInizioInt") @DateTimeFormat(iso = DateTimeFormat.ISO.DATE) LocalDate dataInizioInt,
                                                     @RequestParam(name = "dataFineInt") @DateTimeFormat(iso = DateTimeFormat.ISO.DATE) LocalDate dataFineInt) {

        List<Programmazione> programmazioni = programmazioneService.getProgrammazioniByDateInterval(dataInizioInt, dataFineInt);
        for (Programmazione programmazione : programmazioni) {
            // Converti le date nel formato desiderato (giorno/mese/anno)
            String dataInizioProFormatted = programmazione.getDataInizioPro().format(DateTimeFormatter.ofPattern("dd/MM/yyyy"));
            String dataFineProFormatted = programmazione.getDataFinePro().format(DateTimeFormatter.ofPattern("dd/MM/yyyy"));
            programmazione.setDataInizioProFormatted(dataInizioProFormatted);
            programmazione.setDataFineProFormatted(dataFineProFormatted);
        }

        return programmazioni;
    }

    //Mostra tutte le volte che il film é in programmazione: sala, data Inizio e Fine programmazione, orario programmazione
    @GetMapping("/films")
    public List<FilmProgrammazioneDTO> getAllFilmsWithProgrammazioni() {
        return filmService.getAllFilmsWithProgrammazioni();
    }

    //Mostra tutta la programmazione passata (prima della data odierna)
    @GetMapping("/programmazione-passata")
    public List<ProgrammazioneDTO> getTerminatedProgrammazioni() {
        return filmService.getTerminatedProgrammazioniWithFilms();
    }
}
