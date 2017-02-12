# MMSfN - R Cheat Sheet


| Befehl | Bedeutung |
| --- | --- |
| <c r>a = etwas</c> | Speichert *etwas* unter dem Namen a |
| <c r>f(p1, p2, name=p3)</c> | Ruft die Funktion *f* mit den Parameter *p1*,*p2* und *p3* auf |
| <c r>function (x,y) {x+y}</c> | Definiert Funktion, die x und y addiert|
| <c r>?etwas</c> | Zeigt die Hilfe zu *etwas* an |
| <c r>ls()</c> | Zeigt alle gespeicherten Namen an |
| <c r>sin(x);cos(x);tan(x)</c> | Berechnet Sinus, Cosinus und Tangens von x |
| <c r>exp(x);log(x)</c> | Berechnet e<sup>x</sup> und den natürlichen Logarithmus von x |
| <c r>sqrt(x); x^(1/7)</c> | Berechnet 2. und 7. Wurzel von x|

### Graphik Funktionen

| Befehl | Bedeutung |
| --- | --- |
| <c r>curve(f, from=0, to=2)</c> | Plottet die Funktion *f* zwischen 0 und 2 |
| <c r>plot(obj); plot(x,y)</c> | Plottet beliebige R Objekte oder x auf y Werte |
| <c r>curve(..., add=TRUE); plot(..., add=TRUE)</c> | Der Parameter add fügt zur aktuellen Graphik hinzu |
| <c r>abline(t ,m)</c> | Zeichnet eine Gerade <math>y = mx +t</math> |

### Mehrdimensionale Daten

| Befehl | Bedeutung |
| --- | --- |
| <c r>1:10; seq(0.1, 1, 0.1)</c> | Erzeugt die Zahlen Folge 1-10 und 1-10 in 0.1 Schritten |
| <c r>c(a, b, c, ...)</c> | Fügt alle Parameter zu einem Vektor zusammen |
| <c r>matrix(v, nrow=n)</c> | Erzeugt aus dem Vektor v eine Matrix mit n Zeilen |
| <c r>read.table("Pfad/zu/Datei.csv", header=TRUE)</c> | Liest Daten aus CSV-Datei mit der ersten Zeile als Spaltenbezeichner |
| <c r>v[i]</c> | Greift auf das i-te Element im Vektor v zu |
| <c r>m[i, j]</c> | Greift auf das i,j-ten Element in der Matrix m zu |
| <c r>m[,j]; m[i,]</c> | Weglassen eines Index liefert alle Zeilen/Spalten |
| <c r>m$name</c> | Greift auf die Zeile/Spalte *name* zu |
| <c r>dim(obj)</c> | Liefert die Dimensionen eines Objekts |
| <c r>outer(v, w, "f")</c> | Berechnet das Kreuzprodukt von v, w und wendet die Funktion mit Namen *f* an |

### Statistische Funktionen

| Befehl | Bedeutung |
| --- | --- |
| <c r>summary(d)</c> | Berechnet Lagemaße von d 
| <c r>cor(d)</c> | Berechnet Korrelationskoeffizient(en) r für Daten d|
| <c r>var(d)</c> | Berechnet die Varianz für Daten d |
| <c r>lm(y~x)</c> | Berechnet die lineare Regression für y=mx + t |
| <c r>nls(d~SSmodel)</c> | Berechnet nichtlineares Modell mit SSmodel, wobei SSmodel ein von [SSlogis, SSbiexp, SSmicmen] ist|
| <c r>coef(m)</c> | Extrahiert Koeffizienten aus Modell m |

### Wahrscheinlichkeits Funktionen

| Befehl | Bedeutung |
| --- | --- |
| <c r>dbinom(n, N, p);pbinom(n, N, p)</c> | Berechnet P[X=n]/P[X<=n] für binomialverteilte Zufallsvariable |
| <c r>dnorm(n)</c> | Berechnet P[X=n] für normalverteilte Zufallsvariable |
| <c r>pnorm(n, mean, sd)</c> | Berechnet P[X<=n] für normalverteilte Zufallsvariable mit  Erwartungswert mean und Standardabweichung sd |
| <c r>dpois(n, lambda);ppois(n, lambda)</c> | Berechnet P[X=n]/P[x<=n] für poissonverteilte Zufallsvariable mit Parameter lambda |

### Tests

| Befehl | Bedeutung |
| --- | --- |
| <c r>binom.test(n, N, p)</c> | Testet Hypothese P[X=n] = p gegen die Alternativhypothese P[X=n] != p für binomialverteilte Zufallsvariable |
| <c r>binom.test(n, N, p, alternative="less")</c> | Testet Alternativhypothese P[X=n] < p / P[X=n] > p bei alternitive="greater" |
| <c r>chisq.test(v)</c> | Testet die Hypothese, dass alle Ereignisse in v gleich wahrscheinlich sind |
| <c r>chisq.test(v, p)</c> | Testet die Hypothese, dass die Ereignisse in v mit Wahrscheinlichkeit p eintreten |
| <c r>shapiro.test(x)</c> | Testet die Hypothese, dass die Variable x normalverteilt ist |
| <c r>t.test(x, conf.level=p)</c> | Liefert das Intervall in dem der Erwartungswert mit Wahrscheinlichkeit p liegt |
| <c r>t.test()</c> | **ACHTUNG** T-Tests können nur für normalverteilte Variablen interpretiert werden |
| <c r>t.test(x, mu=1)</c> | Testet ob der beobachtete Erwartungswert dem Theoretischen (mu) entspricht |
| <c r>t.test(x, y, paired=TRUE)</c> | Testet ob x und y den gleichen Erwartungswert haben ("less" und "greater" möglich) |

### Sequenz Alignment

| Befehl | Bedeutung |
| --- | --- |
| <c r>readAAStringSet("Pfad/zu/Datei.fasta")</c> | Liest Sequenz aus Datei |
| <c r>nchar(s)</c> | Liefert die Länge einer Sequenz |
| <c r>pairwiseAlignment(seq1,seq2,substitutionMatrix=BLOSUM62,gapOpening=3,gapExtension=1)</c> | Liefert ein globales Alignment für seq1 und seq2 |
| <c r>compareStrings(alignment)</c> | Stellt das Alignment graphisch dar |
| <c r>nchar(alignment)</c> | Liefert die Länge des optimalen Alignment |
<!--- damit pandoc syntax highlighting benutzt -->
```c++
```

