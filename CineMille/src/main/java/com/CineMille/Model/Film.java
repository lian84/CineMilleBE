package com.CineMille.Model;

import com.fasterxml.jackson.annotation.JsonIgnore;

import javax.persistence.*;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

@Entity
@Table(name = "film")
public class Film {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private Long id;

    @Column(name = "titolo")
    private String titolo;

    @Column(name = "regista")
    private String regista;

    @ManyToOne
    @JoinColumn(name = "id_genere")
    private GenereFilm genereFilm;

    @Column(name = "durata")
    private int durata;

    @Column(name = "data_uscita")
    private LocalDate dataUscita;

    @Column(name = "descrizione")
    private String descrizione;

    @OneToMany(mappedBy = "film")
    @Column(name = "programmazioni")
    @JsonIgnore // Questa annotazione evita di serializzare la lista di programmazioni nel JSON di Film
    private List<Programmazione> programmazioni;

    @Column(name = "link_locandina")
    private String locandina;

    @Transient //per non mappare il valore nel database
    private String dataUscitaFormatted; //usato per la conversione dinamica della data


    // Costruttori
    public Film() {
    }

    public Film(String titolo, String regista, GenereFilm genereFilm, int durata, LocalDate dataUscita, String descrizione) {
        this.titolo = titolo;
        this.regista = regista;
        this.genereFilm = genereFilm;
        this.durata = durata;
        this.dataUscita = dataUscita;
        this.descrizione = descrizione;
    }

    // Metodi getter e setter
    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getTitolo() {
        return titolo;
    }

    public void setTitolo(String titolo) {
        this.titolo = titolo;
    }

    public String getRegista() {
        return regista;
    }

    public void setRegista(String regista) {
        this.regista = regista;
    }

    public GenereFilm getGenereFilm() {
        return genereFilm;
    }

    public void setGenereFilm(GenereFilm genereFilm) {
        this.genereFilm = genereFilm;
    }

    public int getDurata() {
        return durata;
    }

    public void setDurata(int durata) {
        this.durata = durata;
    }

    public LocalDate getDataUscita() {
        return dataUscita;
    }

    public void setDataUscita(LocalDate dataUscita) {
        this.dataUscita = dataUscita;
    }

    public String getDescrizione() {
        return descrizione;
    }

    public void setDescrizione(String descrizione) {
        this.descrizione = descrizione;
    }

    public void setDataUscitaFormatted(String dataUscitaFormatted) {
        this.dataUscitaFormatted = dataUscitaFormatted;
    }
    public String getDataUscitaFormatted() {
        return dataUscitaFormatted;
    }

    public List<Programmazione> getProgrammazioni() {

        if (programmazioni == null) {  //se vuoto inizializza la lista
            programmazioni = new ArrayList<>();
        }
        return programmazioni;
    }

    public void setProgrammazioni(List<Programmazione> programmazioni) {

        this.programmazioni = programmazioni;
    }

    public String getLocandina() {
        return locandina;
    }

    public void setLocandina(String locandina) {
        this.locandina = locandina;
    }
}
