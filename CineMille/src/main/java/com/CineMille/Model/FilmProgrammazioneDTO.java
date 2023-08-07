package com.CineMille.Model;

import java.util.ArrayList;
import java.util.List;

public class FilmProgrammazioneDTO {
    private Long id;
    private String titolo;
    private String descrizione;
    private List<ProgrammazioneDTO> programmazioni;

    public FilmProgrammazioneDTO() {
    }

    public FilmProgrammazioneDTO(Long id) {
        this.id = id;
        this.titolo = titolo;
        this.programmazioni = new ArrayList<>();
    }

    //inizializziamo la lista delle programmazioni
    public void addProgrammazione(ProgrammazioneDTO programmazioneDTO) {
        this.programmazioni.add(programmazioneDTO);
    }

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

    public String getDescrizione() {
        return descrizione;
    }

    public void setDescrizione(String descrizione) {
        this.descrizione = descrizione;
    }

    public List<ProgrammazioneDTO> getProgrammazioni() {
        return programmazioni;
    }

    public void setProgrammazioni(List<ProgrammazioneDTO> programmazioni) {
        this.programmazioni = programmazioni;
    }
}
