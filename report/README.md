# Rapportskriving 101

Denne README-fila vil være en kombinasjon av tutorial samt en slags standard for
hvordan ting skal skrives og formateres i rapporten.

## Først og fremst

Det smarteste for å vite hva vi burde ha med i rapporten er å se på tidligere
rapporter. *Festina Lente* og *Igor* er to prosjekter som jeg anbefaler sterkt å
se på, da disse to har gode rapporter og/eller har relevant informasjon man kan
sammenligne med. I tillegg ser de bra ut, og vi kan stjele mye layoutmessig fra
dem.

## Rapportstruktur

Rapporten er delt opp i flere forskjellige deler: sammendrag (abstrakt),
kapitler og seksjoner innad i kapitlene, figurer og grafikk, kode og algoritmer,
samt bibliografi. Hver enkelt av disse enhetene ligger i forskjellige mapper,
med følgende struktur:

	layout og core -> report.tex
	abstract -> abstract.tex
	kapitler -> ch/kapittelnavn.tex
	seksjon -> ch/kapittelnavn/seksjonsnavn.tex
	figurer og grafikk -> figs/kapittelnavn/figurnavn.tex
	'bildefiler' -> figs/kapittelnavn/figurnavn.[pdf|ps]
	kode og algoritmer -> code/kapittelnavn/kodenavn.tex
	kildekode -> code/kapittelnavn/kodenavn.[filextension]

Grunnen til å ha det såpass byråkratisk og "tungt" er for å gjøre rapporten
lettere å skrive. På denne formen kan man lett teste at forskjellige deler av
rapporten skrives, og man skal i teorien få null merge conflicts i git. I
tillegg blir det lettere å søke seg frem til evt. feil osv.

### Inkludere filer i rapporten.

For å inkludere et nytt element i rapporten, benytt deg av `\input`-kommandoen
i tex. Eksempler på hvordan denne benyttes vises under.

```tex
\input{abstract.tex} % For å plassere inn sammendrag
\input{ch/intro.tex} % For å plassere inn intro-kapittelet
\input{ch/intro/foobar.tex} % For å plassere inn seksjonen foobar fra intro
\input{figs/intro/introfig.tex} % For å plassere inn en introfigur
\input{code/intro/introcode.tex} % For å plassere inn en introkode
```

For mer informasjon om hvordan de forskjellige delene skal se ut, se i de
følgende underseksjonene.

**NB**: **IKKE** bruk `\include`, denne kan ikke nøstes og tvinger frem en page
  break.

## Kapitler

Kapitler skal plasseres inne i `ch`-mappa, og burde ha et kort og deskriptivt
navn (Kapittelet `Introduction` kan f.eks. hete `intro.text`). Kapitler skal
begynne med en `\chapter{Kapittelnavn}`. Deretter skal kapittelet ha en
*preable* på en-to relativt korte avsnitt, og til slutt input-kommandoer til
seksjoner.

Om kapittelet er veldig kort og ikke har naturlige seksjoner, må du tenke om
kapittelet passer inn i et annet kapittel som en seksjon

Et eksempel på et `kapittel.tex`-fil vises under:

```tex
\chapter{Introduction}

This is the preamble to introduction.

\input{ch/intro/structure.tex} % Structure of this report
\input{ch/intro/assignment.tex}
\input{ch/intro/specs.tex} % Requirements and specifications
\input{ch/intro/terms.tex} % Terminology, names and conventions
\input{ch/intro/philosophy.tex}
```

### Seksjoner

Seksjoner skal plasseres inne i `ch/kapittelnavn`-mappa. Om seksjonene er veldig
korte eller naturlig henger sammen, kan de ligge i samme `tex`-fil. Seksjoner
blir lagt til gjennom `\input`-kommandoen i kapittel-mappa.

Seksjoner kan også ha underseksjoner, om dette er naturlig. Disse behøver ikke
ligge i forskjellige `tex`-filer.

## Figurer og grafikk

Figurer skal plasseres inn i `figs/kapittelnavn/`, og skal hete
`figs/kapittelnavn/figurnavn.tex`. Dette må du gjøre selv om du ikke har figuren
din implementert i TikZ, PGF eller andre `.tex`-alternativer.

For ikke-tex-baserte figurer må du i tillegg plassere grafikkfilen i
`figs/kapittelnavn/`. Om den allerede eksisterer i repoet kan du godt bare
symlinke, men vær forsiktig med tanke på at filen kan endres. Hvis du har mange
filer i mappa, kan du evt. plassere en symlink til mappa i `figs/kapittelnavn/`.

For tex-baserte figurer kan man legge selve tex-koden direkte inn i
`figs/kapittelnavn/figurnavn.tex`. Hvis tex-koden er stor, kan det være
fordelaktig å legge den i en egen tex-fil, som kan f.eks. hete
`figs/kapittelnavn/figurnavn-code.tex`. 

`figs/kapittelnavn/figurnavn.tex` må, for "ikke-tex"-figurer, ha følgende
oppsett:

```tex
\begin{figure}[h]
  \centering
  \includegraphics[width=\textwidth]{figs/kapittelnavn/figurnavn.[pdf|jpg|png]}
  \caption{figurtekst}
  \label{fig:figurlabel}
\end{figure}
```

For tex-figurer, bytt ut `\includegraphics`-kallet med koden som generer
figuren, eller `\input{figs/kapittelnavn/figurnavn-code.tex}` om du har plassert
koden i en annen fil.

`[h]` kan byttes ut med `[b]` for å plassere figuren på bunnen av siden, eller
`[t]` for å plasseres på toppen av siden. Om det er essensielt at figuren
plasseres akkurat der du har satt den, bytt ut `[h]` med `[H]`.

`width`-parameteren til `\includegraphics`-kallet kan byttes ut med noe mer
egnet om figuren er veldig høy. Man kan f.eks. benytte seg av
`[width=0.8\textwidth]` for å få den til å være 80% av tekstbredden.

Figurteksten burde bare være en beskrivelse av figuren: F.eks. "The SIMD-node
architecture.". Ingenting skal forklares i figurteksten, dette skal skje i selve
rapporten.

Label-kallet gjør at vi kan referere til figuren. Dette kan gjerne være en
forkortelse, som f.eks. `fig:dev-phases`. Bare sørg for at disse er unike:
`fig:layout` er et dårlig navn som vil kunne kollidere med andre figurer (da vi
har mange forskjellige layouts av mange forskjellige deler av systemet). For
referering til figurer, se *Referanser og siteringer*.

### Tabeller

Tabeller skal også plasseres i `figs/kapittelnavn/`, på formen
`figs/kapittelnavn/tabellnavn.tex`. Plassér helst tabellen direkte inn i
tex-fila, da tabeller generelt sett er lette å lese og ikke krever like mye
plass som e.g. TikZ-bilder.

Alle tabeller burde ha følgende utseende:
```tex
\begin{table}[h]
  \centering
  \begin{tabular}{| x | ... | x |} \hline
    {\sc attr} & ... & {\sc attr}\\ \hline \hline
    val & ... & val \\ \hline
	...
	val & ... & val \\ \hline
  \end{tabular}
  \caption{tabelltekst}
  \label{tab:tabellabel}
\end{table}
```

Malen for `[h]`, caption og label gjelder som med figurer.

Alle x'ene i `| x | ... | x |` må byttes ut med enten *c* (for *center*), *l*
(for *left*) eller *r* (for *right*). Velg det som ser best ut, men foretrekk om
*c* det er liten eller ingen praksis forskjell. Dette gjøres for å få en viss
konsistens i hele rapporten. Om tabellen er en 2d-tabell eller første element i
tabellen er en identifikator (f.eks. navn, produktnavn...), må dette separeres
med en dobbel pipe. Dette gjøres enkelt og greit ved å starte med 
`| x || x | ... | x |` i stedet.

Separer elementer med `&` og slutt hver linje med `\\ \hline`. Hvis tabellen har
en header, skal denne slutte med `\\ \hline \hline`. Alle elementene i headeren
må innkapsles i `{\sc }` - f.eks. hvis man har attributtnavnet `attr`, må
headeren ha `{\sc attr}`. Om første element i tabellen er en identifikator,
burde man benytte seg av `{\sc name}` eller `{\bf name}`. Her er jeg usikker på
om vi skal gå for `\sc` eller `\bf`, så om noen har noen preferanser er det
flott om de blir uttalt!

Eksempel med tabell som benytter seg av identifikatorer:

```tex
\begin{table}[h]
  \centering
  \begin{tabular}{| c | | r | c |} \hline
    {\sc Name} & {\sc Score} & {\sc Born}\\ \hline \hline
    {\bf Rich} & 100 & 1958  \\ \hline
	{\bf Paul} & 54  & 1975  \\ \hline
	{\bf Fred} & 76  & 1967  \\ \hline
  \end{tabular}
  \caption{List of players, scores and their birthyear}
  \label{tab:pscores}
\end{table}
```

Her er kolonne 1 og 3 sentrert, mens 2 er høyrejustert (tall er lettere å
sammenligne med høyrejustering).

For mer informasjon rundt tabellgenerering, ta en titt på
[Wikibook-siden om tabeller i LaTeX][wikitable]. Der står det mye bra.

[wikitable]: http://en.wikibooks.org/wiki/LaTeX/Tables "LaTeX: Tables."

## Kode og pseudokode

TODO

## Matematikk

TODO

## Referering og sitering

Man burde referere til tabeller, figurer, kode, pseudokode og ligninger om denne
enheten er relevant for diskusjonen. Referering gjøres veldig lett ved å skrive
`\ref{type:labelname}`, der type:labelname er det du har puttet inn i
`\label`-kommandoen for den spesifikke enheten. For eksempel vil referering til
det tidligere tabelleksempelet gjøres på følgende måte:

```tex
The scores seemed to have a negative correlation with birthyear, as implied from
table \ref{tab:pscore}. A reasonable assumption is that older players have more
experience. [...]
```

Noter at man alltid skriver typen foran referering, da forskjellige elementtyper
har uavhengig nummerering. F.eks. vil referering til en figur alltid starte med
`figure \ref{fig:figname}`, og referering av kode vil alltid starte med
`listing \ref{lst:lstname}`. Gjør dette konsekvent, med mindre du tidligere har
referert til elementet og det ikke er noen tvil hva du snakker om.

**Aldri** referer til tabeller, figurer, matteformler eller lignende
relativt. Eksempel: `Figuren over viser at ...` må byttes ut med en faktisk
referanse, som `Figuren \ref{fig:figurnavn} viser at...`.

### Referering av ligninger

Referering av ligninger er helt likt som referering av andre elementer, så
standard praksis skal fremdeles overholdes. Den eneste forskjellen er at man
ikke benytter seg av `\ref`, men bruker `\eqref` i stedet. Man må fremdeles
skrive `equation \eqref{eq:pythagoras}` for å fortelle hva man snakker om.

### Siteringer

... TODO!
