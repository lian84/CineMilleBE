package com.CineMille.Service;
import java.util.List;

import com.CineMille.Model.SalaCinema;
import com.CineMille.Repository.SalaCinemaRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class SalaCinemaService {

    @Autowired
    private SalaCinemaRepository salaCinemaRepository;

    public List<SalaCinema> getAllSaleCinema() {
        return salaCinemaRepository.findAll();
    }

}

