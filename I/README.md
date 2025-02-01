# Problema I
### Cerința [în original](../tema_de_proiect.pdf) (paginile 1-2)

Se considera o activitate formata din n etape parcurse secvential, fiecare avand un timp de finalizare modelat printr-o variabila aleatoare exponentiala. Dupa finalizarea unei etape, exista o probabilitate alpha_i de a continua si o probabilitate  1 - alpha_i  de a opri activitatea. Se cere simularea timpului total necesar pentru finalizarea activitatii, determinarea valorii medii a acestuia si analiza probabilitatilor asociate diferitelor scenarii.

# Rezolvarea, [folosind R](./rezolvare.ipynb)

Pentru implementarea acestei probleme nu a fost necesara utilizarea unor concepte sau metode care sa depaseasca nivelul cursului si laboratorului. Rezolvarea s-a bazat pe utilizarea functiilor standard din R pentru generarea de variabile aleatoare, calculul mediei si al probabilitatilor.

#### Functionalitati
• Simulare a timpului total de finalizare a activitatii
• Generarea a 10^6 valori pentru variabila T  folosind distributia exponentiala.
	• Estimarea valorii medii a timpului total  E(T) 
• Calcularea mediei empirice pe baza valorilor simulate.
• Compararea cu valoarea exacta obtinuta analitic.
	• Analiza probabilistica a finalizarii activitatii
• Estimarea probabilitatii ca activitatea sa fie finalizata.
• Determinarea probabilitatii ca activitatea sa fie finalizata in mai putin de un timp  anume
	• Identificarea limitelor timpului de finalizare
• Determinarea timpului minim si maxim de finalizare in cadrul simularilor.
• Reprezentare grafica a distributiei timpilor de finalizare.
	• Estimarea punctului de oprire a activitatii
• Calcularea probabilitatii ca activitatea sa se opreasca inainte de etapa  k .
• Afisarea graficului corespunzator pentru vizualizarea distributiei.
	• Vizualizare si interpretare
• Compararea rezultatelor obtinute prin simulare cu valorile teoretice.

#### Descriere
Problema se poate imparti in mai multe subprobleme

1. Simularea timpului total petrecut pentru finalizarea unei activitati
Aceasta presupune generarea unui numar mare de valori pentru variabila aleatoare  T , care reprezinta timpul total necesar pentru ca o persoana sa finalizeze o activitate secventiala cu mai multe etape. Fiecare etapa are un timp de finalizare modelat printr-o distributie exponentiala si o probabilitate de a continua la urmatoarea etapa. Modul de functionare al acestei simulari poate fi descris, pe scurt, astfel:
   - Se initializeaza parametrii pentru simulare: numarul de etape si ratele de tranzitie.
   - Se genereaza valori exponentiale pentru fiecare etapa.
   - Se parcurg etapele, acumuland timpul total si verificand daca activitatea continua sau se opreste.
   - Se salveaza rezultatele pentru analiza ulterioara.
   - Se vizualizeaza distributia valorilor simulate folosind grafice.
   - Se calculeaza media empirica si se compara cu valoarea teoretica.

1. Calcularea valorii exacte a lui  E(T)  si compararea cu rezultatele siumlate
Pentru a valida acuratetea simularii, se determina analitic valoarea exacta a mediei timpului total si se compara cu rezultatele obtinute prin simulare. Acest proces asigura ca simularea reflecta corect proprietatile statistice ale problemei.

1. Estimarea probabilitatii ca activitatea sa fie finalizata
Folosind setul de date generat, se determina frecventa cazurilor in care activitatea este finalizata complet si se calculeaza o estimare a acestei probabilitati.

1. Estimarea probabilitatii ca activitatea sa fie finalizata intr-un timp mai mic decat un prag dat
Se analizeaza distributia timpilor de finalizare si se esimeaza probabilitatea ca durata totala sa fie sub un anumit prag prestabilit.

1. Determinarea timpului minim si maxim de finalizare
Se identifica cele mai mici si cele mai mari valori ale timpului de finalizare observate in cadrul simularii si se analizeaza distributia acestora.

1. Estimarea probabilitatii ca activitatea sa se opreasca inainte de etapa k 
Se determina, pe baza simularii, frecventa opririi activitatii inainte de atingerea unui anumit numar de etape si se vizualizeaza aceasta distributie.


#### Concluzii
In urma acestui proiect am inteles mult mai bine cum functionerza modelarea unui proces secvential in care fiecare etapa are o probabilitate de continuare. Am explorat utilizarea distributiei exponentiale pentru simularea timpilor de proces si metodele de estimare a valorilor medii si a probabilitatilor asociate. 
