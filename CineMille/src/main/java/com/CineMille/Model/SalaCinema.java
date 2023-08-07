package com.CineMille.Model;

import javax.persistence.*;

@Entity
@Table(name = "sala_cinema")
public class SalaCinema {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(name= "nome")
    private String nome;

    @Column(name= "posti_sedere")
    private int postiASedere;

    @Column(name= "imax")
    private boolean imax;

    // Costruttori
    public SalaCinema() {
    }

    public SalaCinema(String nome, int postiASedere, boolean imax) {
        this.nome = nome;
        this.postiASedere = postiASedere;
        this.imax = imax;
    }

    // Getter e setter
    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public int getPostiASedere() {
        return postiASedere;
    }

    public void setPostiASedere(int postiASedere) {
        this.postiASedere = postiASedere;
    }

    public boolean isImax() {
        return imax;
    }

    public void setImax(boolean imax) {
        this.imax = imax;
    }
}
