# Problema III
### Cerința [în original](../tema_de_proiect.pdf) (paginile 3-4)

Problema ne cere să calculăm parametrul `theta` a mai multor densități/funcții de masă grupate cu un eșantion prin metode de estimare, o dată pe hârtie, iar altă dată în R, scriind o funcție care returnează estimările făcute.

S-au folosit cunoștințele predate și la curs, și la seminar, despre metodele de estimare a parametrilor, acestea fiind Metoda Verosimilități Maxime, și Metoda Momentelor.

Nu a fost nevoie de cunoștințe care depășesc cursul, și nici de reprezentări grafice sau pachete software[^mutare]; cel puțin nu de unele care nu le oferă deja R (și RStudio) standard.
[^mutare]: rezolvarea a fost mutată dintr-un fișier .R în .ipynb după completarea cerințelor pentru a permite vizualizarea atât a codului cât și a grafurilor în interfața web din GitHub (- Pojoga Dragoș-Florin)

---

Despre soluție, subpunctul e) este singurul în care valoarea estimată de Metoda Momentelor diferă de valoarea estimată de Metoda Verosimilități Maxime. Nu știu exact de ce, dar probabil e din cauza felului în care depinde densitatea de parametrul alpha (pentru alpha=1, distribuția devine una exponențială).

Diferențele dintre valoarea dată de Metoda Verosimilității Maxime și de cea numerică încep să apară doar de la a 3-a sau a 4-a zecimală, deci, diferențele reies probabil din imprecizia funcției `optimize` din R, și din intervalul ales în R în cazul intervalelor deschise.

Soluția pe hârtie s-a folosit de R pentru a calcula rezultatele finale (n-o să calculăm media a 100+ de valori manual).

---

Despre cod, în variabila x se pune eșantionul, și, se folosesc și variabile pentru parametri extra dacă există.  
Funcția `estimations` este cea care returnează cele două valori estimate, luând ca parametri eșantionul și posibilul parametru extra.  
În `nCalc` se pune mărimea eșantionului, în `xbarCalc` media calculată pentru el, iar în `constCalc` constanta care nu depind de `theta` în funcția `logVerosim`.  
`logVersoim` este funcția R corespunzătoare cei teoretice (care ia valoarea calculată pe hârtie), care are ca parametri echivalenții variabilelor descrise anterior.  
`fOptim` este specializarea lui `logVerosim` cu valorile calculate, depinzând doar de `theta`. Ea este optimizată peste un interval potrivit valorii `theta` (de obicei minimul și maximul eșantionului, înmulțit cu o constantă); valoarea stocată în `verRes`.

Exemplele date la seminar cu Metoda Momentelor folosesc un număr mare de eșantioane generate aleatoriu bazate pe o distribuție, ce nu se aplică la problema noastră, întrucât noi avem un singur eșantion specific; deci am pus direct valoarea calculată pe hârtie într-o variabilă.

Funcția mai creează și un plot a funcției `logVerosim`, împreună cu valorile calculate de funcție, și valoarea teoretică.

Funcțiilor cerute și variabilelor exterioare funcțiilor i s-au pus un sufix cu literă mare corespunzătoare subpunctului.

Pentru fiecare subpunct s-au obținut valorile:[^performance]
[^performance]: subpunctul `d)` rulează mai încet din cauza rezoluției folosite pentru plot
```
    verRes      momRes      teoretic
a)	4.970008    4.970000    4.97
b)	0.2014445   0.2014286   0.2014286
c)	1.993280    1.993285    1.993285
d)	25.85001    25.85000    25.85
e)	3.3724484   0.5722134   3.372459
```

# Rezolvări:

# [folosind R](./rezolvare.ipynb)

# scrise de mână:

![](./1.jpg)

![](./2.jpg)


Dificultate reiese din ce exact ne-ați cerut pentru implementarea Metoda Momentelor în R, detaliat mai mult anterior.

Posibile probleme rămase deschise ar fi cum s-ar calcula aceste estimări automat pentru o distribuție/funcție de masă și un eșantion în R, fără a mai trebui să se calculeze manual funcția `logVerosim` și celelalte.
