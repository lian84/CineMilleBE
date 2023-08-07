package com.CineMille.Controller;

import com.CineMille.Model.Programmazione;
import com.CineMille.Model.SalaCinema;
import com.CineMille.Service.ProgrammazioneService;
import com.CineMille.Service.SalaCinemaService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.time.temporal.ChronoUnit;
import java.util.List;

@Controller
@RequestMapping("/programmazione")
public class ProgrammazioneController {

    @Autowired
    private ProgrammazioneService programmazioneService;
    @Autowired
    private SalaCinemaService salaCinemaService;

    //Elenco completo di tutte le programmazioni
    @GetMapping("/list")
    public String listProgrammazioni(Model model) {
        List<Programmazione> programmazioni = programmazioneService.getAllProgrammazioni();
        DateTimeFormatter inputFormatter = DateTimeFormatter.ofPattern("yyyy-MM-dd");
        DateTimeFormatter outputFormatter = DateTimeFormatter.ofPattern("dd/MM/yyyy");
        for (Programmazione programmazione : programmazioni) {
            LocalDate dataInizioPro = programmazione.getDataInizioPro();
            LocalDate dataFinePro = programmazione.getDataFinePro();
            String dataInizioFormatted = dataInizioPro.format(outputFormatter);
            String dataFineFormatted = dataFinePro.format(outputFormatter);
            programmazione.setDataInizioProFormatted(dataInizioFormatted);
            programmazione.setDataFineProFormatted(dataFineFormatted);
            //conto quanti giorni ci sono tra la data di inizio e fine programmazione
            int giorniTotali = (int) dataInizioPro.until(dataFinePro, ChronoUnit.DAYS) + 1;
            programmazione.setGiorniTotali(giorniTotali);
        }
        model.addAttribute("programmazioni", programmazioni);
        return "programmazione-list";
    }

    @GetMapping("/search")
    public String searchProgrammazione(@RequestParam(name = "sala") Long salaId,
                                       @RequestParam(name = "dataInizioInt") @DateTimeFormat(iso = DateTimeFormat.ISO.DATE) LocalDate dataInizioInt,
                                       @RequestParam(name = "dataFineInt") @DateTimeFormat(iso = DateTimeFormat.ISO.DATE) LocalDate dataFineInt,
                                       Model model) {

        List<Programmazione> programmazioni = programmazioneService.getProgrammazioniBySalaAndDateInterval(salaId, dataInizioInt, dataFineInt);
        for (Programmazione programmazione : programmazioni) {
            // Converti le date nel formato desiderato (giorno/mese/anno)
            String dataInizioFormatted = programmazione.getDataInizioPro().format(DateTimeFormatter.ofPattern("dd/MM/yyyy"));
            String dataFineFormatted = programmazione.getDataFinePro().format(DateTimeFormatter.ofPattern("dd/MM/yyyy"));
            programmazione.setDataInizioProFormatted(dataInizioFormatted);
            programmazione.setDataFineProFormatted(dataFineFormatted);
        }
        model.addAttribute("programmazioni", programmazioni);
        //inserisco anche questi due model per avere l'intervallo di date riportate anche nella pagina dei risultati
        // Converti le date nel formato desiderato (giorno/mese/anno)
        String dataInizioIntFormatted = dataInizioInt.format(DateTimeFormatter.ofPattern("dd/MM/yyyy"));
        String dataFineIntFormatted = dataFineInt.format(DateTimeFormatter.ofPattern("dd/MM/yyyy"));
        model.addAttribute("dataInizioIntFormatted", dataInizioIntFormatted);
        model.addAttribute("dataFineIntFormatted", dataFineIntFormatted);

        return "programmazione-search-result";
    }


    @GetMapping("/search-programmazione")
    public String searchProgrammazione(Model model) {
        List<SalaCinema> saleCinema = salaCinemaService.getAllSaleCinema();
        model.addAttribute("saleCinema", saleCinema);

        return "search-programmazione";
    }

}
