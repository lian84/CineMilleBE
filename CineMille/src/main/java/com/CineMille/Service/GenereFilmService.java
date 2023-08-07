package com.CineMille.Service;

import com.CineMille.Model.GenereFilm;
import com.CineMille.Repository.GenereFilmRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class GenereFilmService {

    @Autowired
    private GenereFilmRepository genereFilmRepository;


    public List<GenereFilm> getAllGeneriFilm() {
        return genereFilmRepository.findAll();
    }

    public GenereFilm getGenereFilmById(Long id) {
        return genereFilmRepository.findById(id).orElse(null);
    }

}
