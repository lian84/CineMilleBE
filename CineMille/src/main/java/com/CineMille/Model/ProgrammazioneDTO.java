package com.CineMille.Model;

import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

public class ProgrammazioneDTO {
    private Long idSalaCinema;
    private String titoloFilm;
    private List<String> dateInizioProFormatted;
    private List<String> dateFineProFormatted;
    private List<Integer> orariProiezione;
    private String locandina;

    //inizializziamo le liste vuote per non avere problemi di "null"
    public ProgrammazioneDTO() {
        this.dateInizioProFormatted = new ArrayList<>();
        this.dateFineProFormatted = new ArrayList<>();
        this.orariProiezione = new ArrayList<>();
    }

    public Long getIdSalaCinema() {
        return idSalaCinema;
    }

    public void setIdSalaCinema(Long idSalaCinema) {
        this.idSalaCinema = idSalaCinema;
    }

    public String getTitoloFilm() {
        return titoloFilm;
    }

    public void setTitoloFilm(String titoloFilm) {
        this.titoloFilm = titoloFilm;
    }

    public List<String> getDateInizioProFormatted() {
        return dateInizioProFormatted;
    }

    public void setDateInizioProFormatted(List<String> dateInizioProFormatted) {
        this.dateInizioProFormatted = dateInizioProFormatted;
    }

    public List<String> getDateFineProFormatted() {
        return dateFineProFormatted;
    }

    public void setDateFineProFormatted(List<String> dateFineProFormatted) {
        this.dateFineProFormatted = dateFineProFormatted;
    }

    public List<Integer> getOrariProiezione() {
        return orariProiezione;
    }

    public void setOrariProiezione(List<Integer> orariProiezione) {
        this.orariProiezione = orariProiezione;
    }

    public String getLocandina() {
        return locandina;
    }

    public void setLocandina(String locandina) {
        this.locandina = locandina;
    }
}