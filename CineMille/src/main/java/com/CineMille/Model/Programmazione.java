package com.CineMille.Model;

import com.fasterxml.jackson.annotation.JsonBackReference;

import javax.persistence.*;
import java.time.LocalDate;

@Entity
public class Programmazione {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private Long id;

    @ManyToOne
    @JoinColumn(name = "id_sala")
    private SalaCinema salaCinema;

    @ManyToOne
    @JoinColumn(name = "id_film")
    private Film film;

    @Column(name = "data_inizio")
    private LocalDate dataInizioPro;

    @Column(name = "data_fine")
    private LocalDate dataFinePro;

    @Column(name = "orario_proiezione")
    private int orarioProiezione;
    //puó avere 3 valori:
    // 1- se il film viene proiettato nella fascia 18:00-20:00;
    // 2-se il film viene proiettato nella fascia 20:00-22:00;
    // 3- se il film viene proiettato nella fascia 22:00-24:00

    @Transient //per non mappare il valore nel database
    private String dataInizioProFormatted; //usato per la conversione dinamica della data

    @Transient //per non mappare il valore nel database
    private String dataFineProFormatted; //usato per la conversione dinamica della data

    @Transient //per non mappare il valore nel database
    private int giorniTotali; //giorni in cui il film rimane in programmazione

    // Costruttori
    public Programmazione() {
    }

    public Programmazione(Long idSala, Long idFilm, LocalDate dataInizioPro, LocalDate dataFinePro, int orarioProiezione) {
        this.salaCinema = salaCinema;
        this.film = film;
        this.dataInizioPro = dataInizioPro;
        this.dataFinePro = dataFinePro;
        this.orarioProiezione = orarioProiezione;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public SalaCinema getSalaCinema() {
        return salaCinema;
    }

    public void setSalaCinema(SalaCinema salaCinema) {
        this.salaCinema = salaCinema;
    }

    public Film getFilm() {
        return film;
    }

    public void setFilm(Film film) {
        this.film = film;
    }

    public LocalDate getDataInizioPro() {
        return dataInizioPro;
    }

    public void setDataInizioPro(LocalDate dataInizioPro) {
        this.dataInizioPro = dataInizioPro;
    }

    public LocalDate getDataFinePro() {
        return dataFinePro;
    }

    public void setDataFinePro(LocalDate dataFinePro) {
        this.dataFinePro = dataFinePro;
    }

    public int getOrarioProiezione() {
        return orarioProiezione;
    }

    public void setOrarioProiezione(int orarioProiezione) {
        this.orarioProiezione = orarioProiezione;
    }

    public String getDataInizioProFormatted() {
        return dataInizioProFormatted;
    }

    public void setDataInizioProFormatted(String dataInizioProFormatted) {
        this.dataInizioProFormatted = dataInizioProFormatted;
    }

    public String getDataFineProFormatted() {
        return dataFineProFormatted;
    }

    public void setDataFineProFormatted(String dataFineProFormatted) {
        this.dataFineProFormatted = dataFineProFormatted;
    }

    public int getGiorniTotali() {
        return giorniTotali;
    }

    public void setGiorniTotali(int giorniTotali) {
        this.giorniTotali = giorniTotali;
    }
}
