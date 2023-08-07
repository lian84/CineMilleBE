package com.CineMille.Service;

import com.CineMille.Model.Programmazione;
import com.CineMille.Repository.ProgrammazioneRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.time.LocalDate;
import java.util.List;
import java.util.stream.Collectors;

@Service
public class ProgrammazioneService {

    @Autowired
    private ProgrammazioneRepository programmazioneRepository;

    public List<Programmazione> getProgrammazioniBySalaAndDateInterval(Long salaId, LocalDate dataInizioInt, LocalDate dataFineInt) {
        if (salaId == null || dataInizioInt == null || dataFineInt == null || dataFineInt.isBefore(dataInizioInt)) {
            throw new IllegalArgumentException("Parametri non validi per la ricerca.");
        }

        List<Programmazione> programmazioni = programmazioneRepository.findBySalaCinemaId(salaId);

        // Filtra le programmazioni che si sovrappongono all'intervallo specificato
        programmazioni = programmazioni.stream()
                .filter(p -> p.getDataInizioPro().isBefore(dataFineInt) && p.getDataFinePro().isAfter(dataInizioInt))
                .collect(Collectors.toList());

        return programmazioni;
    }

    public List<Programmazione> getProgrammazioniByDateInterval(LocalDate dataInizioInt, LocalDate dataFineInt) {
        if (dataInizioInt == null || dataFineInt == null || dataFineInt.isBefore(dataInizioInt)) {
            throw new IllegalArgumentException("Parametri non validi per la ricerca.");
        }

        List<Programmazione> programmazioni = programmazioneRepository.findAll();

        programmazioni = programmazioni.stream()
                .filter(p -> p.getDataInizioPro().isBefore(dataFineInt) && p.getDataFinePro().isAfter(dataInizioInt))
                .collect(Collectors.toList());

        return programmazioni;
    }

    public List<Programmazione> getAllProgrammazioni() {
        return programmazioneRepository.findAll();
    }

}
