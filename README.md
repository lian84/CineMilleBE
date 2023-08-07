# CineMille -> Challenge - Developer

Il cinema “*CineMille*” è un esercizio storico dell’area fiorentina, nonché uno dei più grandi presenti in Toscana. Dispone di 12 sale di proiezione, di cui 2 in tecnologia IMAX. Le sale hanno una capienza differente, con le più grandi che dispongono di 250 posti ciascuna fino alle più piccole da circa 50 posti a sedere.

Attualmente la programmazione delle proiezioni nelle sale viene aggiornata con cadenza settimanale: tali informazioni sono gestite mediante scambio di dati contenuti in file Excel. Ciascun film può rimanere in sala per un massimo di tre settimane e per un minimo di una, a partire dalla data di uscita dello stesso.

La società che gestisce il cinema vuole dotarsi di uno strumento per la programmazione e la gestione dei film di un multisala al fine di ottimizzare a pianificare la loro permanenza in sala. L’applicazione dovrà permettere la visualizzazione della lista dei film messi in programmazione nel multisala, al fine di organizzare anche uno storico consultabile dai gestori. Tale applicativo sarà utilizzato anche come fonte dati per visualizzare i film attualmente in sala sul sito web del cinema a beneficio del pubblico.

## Installazione

1. Assicurati di avere i seguenti requisiti installati nel tuo sistema:
    - Java (versione 17)
    - Spring Boot (versione 2.5.3)
    - Maven (versione 4.0.0)
    - MySQL Server (versione 10.4.28-MariaDB )

2. Clona il repository della web app sul tuo computer:
   ```
   git clone <URL_DEL_REPOSITORY>
   ```

3. Apri il progetto nella tua IDE preferita.

4. Configura il database MySQL:
    - Crea un database vuoto chiamato "cinemille".
    - Modifica le impostazioni di connessione al database nel file `application.properties` nella directory `src/main/resources`.
   ```
      spring.jpa.hibernate.ddl-auto=update
      spring.datasource.url=jdbc:mysql://localhost:3306/cinemille
      spring.datasource.username=root
      spring.datasource.driver-class-name =com.mysql.cj.jdbc.Driver
      spring.jpa.show-sql=true
      spring.thymeleaf.prefix=classpath:/templates/
      spring.thymeleaf.suffix=.html
   ```
- Importa il file cinemille.sql nel database

5. Fai il Run dell'applicazione

## Utilizzo

1. Run CineMilleApplication.

2. Accedi all'applicazione utilizzando il tuo browser preferito e vai all'URL: `http://localhost:8080` da qui potrai consultare le pagine:
   1. http://localhost:8080/film/films -> sará possibile vedere la lista di tutti i film presenti a catalogo(tutti i record presenti nella tabella film)
   2. http://localhost:8080/film/detail/{id} -> inserendo al posto del parametro {id} un numero che va da 1 a 26(al momento) sará possibile vedere i dettagli del film
   3. http://localhost:8080/film/film-create -> é presente un form dove inserire i dati per un nuovo film
   4. http://localhost:8080/programmazione/list -> la lista di tutte le programmazioni
   5. http://localhost:8080/programmazione/search-programmazione -> dove inserire la sala, la data di inizio intevallo e la data di fine intervallo
   6. DELETE http://localhost:8080/film/delete/{idFilm} -> in {idFilm} inserire l'id del film da cancellare
----------------      
   - RestApi(puoi utilizzare anche il file per PostMan presente nella repository)
   1. GET http://localhost:8080/api/programmazione/search?sala=1&dataInizioInt=2023-08-01&dataFineInt=2023-08-03 -> é possibile fare una ricerca per sala e per date
   2. GET http://localhost:8080/api/programmazione/search-all?dataInizioInt=2023-07-01&dataFineInt=2023-08-02 -> ricerca in tutte le sale per un intervallo scelto
   3. GET http://localhost:8080/api/programmazione/all -> tutta la programmazione
   4. GET http://localhost:8080/api/films -> programmazione di ogni Film(contiene tutte le volte che il film é stato in programmazione
   5. GET http://localhost:8080/api/programmazione-passata -> tutta la programmazione passata fino alla data di oggi(dinamica)

É presente anche un altra repository CineMilleFE per il front page in Angular che sfutta le RestApi.
Nella repository é presente anche un file da importare su PostMan per testare RestApi.

## Struttura del Progetto

Breve descrizione della struttura del progetto, evidenziando le directory principali e i loro scopi.

```
progetto
├── src/
│   ├── main/
│   │   ├── java/
│   │   │   └── com.CineMille/                  # Directory principale del codice sorgente
│   │   │       ├── controller/                 # Controller della web app
│   │   │       ├── model/                      # Modelli dei dati
│   │   │       ├── service/                    # Servizi e logica di business
|   |   |       ├── repository/                 # Repository del progetto
│   │   │       └── CineMilleApplication        # Classe di avvio dell'applicazione
│   │   └── resources/
│   │       └── application.properties          # File di configurazione dell'applicazione
│   └── test/                                   # Directory per i test
├── pom.xml                                     # File di configurazione di Maven
└── README.md                                   # Questo file README
```

## Dipendenze

Elenco delle principali dipendenze utilizzate nella web app:

- Spring Boot (versione 2.5.3)
- Maven (versione 4.0.0)
- Hibernate Entity Manager(versione 5.2.3.Final)
- Hibernate Core (versione 5.6.10.Final)
- MySQL Connector
- Thymeleaf
