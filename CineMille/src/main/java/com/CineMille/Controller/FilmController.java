package com.CineMille.Controller;

import com.CineMille.Model.Film;
import com.CineMille.Model.GenereFilm;
import com.CineMille.Service.FilmService;
import com.CineMille.Service.GenereFilmService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.*;

import java.beans.PropertyEditorSupport;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.List;

@Controller
@RequestMapping("/film")
public class FilmController {

    @Autowired
    private FilmService filmService;
    @Autowired
    private GenereFilmService genereFilmService;

    @GetMapping("/films")   //Richiamiamo l'intera lista di film presenti nel database
    public String getFilmList(Model model) {
        List<Film> films = filmService.getFilmList();
        DateTimeFormatter inputFormatter = DateTimeFormatter.ofPattern("yyyy-MM-dd");
        DateTimeFormatter outputFormatter = DateTimeFormatter.ofPattern("dd/MM/yyyy");
        for (Film film : films) {
            LocalDate dataUscita = film.getDataUscita();
            String dataUscitaFormatted = dataUscita.format(outputFormatter);
            film.setDataUscitaFormatted(dataUscitaFormatted);
        }
        model.addAttribute("films", films);
        return "film-list";
    }

    @GetMapping("/detail/{id}") //Richiamiamo il film in base all'id
    public String getFilmDetail(@PathVariable Long id, Model model) {
        // Logica per ottenere i dettagli di un film specifico dal database
        Film film = filmService.getFilmById(id);
        // Passa i dettagli del film alla vista
        model.addAttribute("film", film);
        return "film-detail";
    }


    @GetMapping("/film-create")  //Richiama il form per creare un nuovo record nella tabella film
    public String showCreateForm(Model model) {
        //passo la lista dei generi dei film in modo da popolare la lista dei generi in modo dinamico
        List<GenereFilm> generiFilm = genereFilmService.getAllGeneriFilm();
        model.addAttribute("generiFilm", generiFilm);
        Film film = new Film(); // Crea un nuovo oggetto Film vuoto
        model.addAttribute("film", film); // Passa l'oggetto Film alla vista
        return "film-create";
    }

    @InitBinder //lo usiamo per ovviare al problema di formato data durante il salvataggio di un nuovo record nella tabella film
    public void initBinder(WebDataBinder binder) {
        DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd");
        binder.registerCustomEditor(LocalDate.class, new PropertyEditorSupport() {
            @Override
            public void setAsText(String text) throws IllegalArgumentException {
                setValue(LocalDate.parse(text, formatter));
            }
        });
    }

    @PostMapping("/save")  //Salviamo un nuovo record(film) nella tabella film
    public String saveFilm(@ModelAttribute Film film, @RequestParam("genere") Long genereId, @DateTimeFormat(pattern = "yyyy-MM-dd") LocalDate dataUscita) {
        GenereFilm genereFilm = genereFilmService.getGenereFilmById(genereId);
        film.setGenereFilm(genereFilm);
        film.setDataUscita(dataUscita);
        filmService.saveFilm(film);
        return "redirect:/film/films";
    }



    @DeleteMapping("/delete/{id}") //cancelliamo un film in base all'id
    public String deleteFilm(@PathVariable Long id) {
        boolean deleteSuccess = filmService.deleteFilmById(id);

        if (deleteSuccess) {
            // Operazione di cancellazione eseguita con successo e ritorna la lista film
            return "redirect:/film/films";
        } else {
            // Operazione di cancellazione fallita, carica una pagina di errore
            return "redirect:/film/error";
        }
    }

    @GetMapping("/cancellaFilm") //chiamiamo la pagina per selezionare il film da cancellare(passimo la lista film)
    public String showFilmDeletePage(Model model) {
        List<Film> films = filmService.getFilmList();
        model.addAttribute("films", films);
        return "film-delete";
    }
}
