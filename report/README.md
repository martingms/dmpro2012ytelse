# Rapportskriving 101

Denne README-fila vil være en kombinasjon av tutorial samt en slags standard for
hvordan ting skal skrives og formateres i rapporten.

## Installasjon og oppsett

For å kunne lage PDF-en må en ha følgende pakker og programmer tilgjengelig:
`pdflatex`, `bibtex` og `make`.

I tillegg må man ha følgende latex-pakker installert eller tilgjengelig for å
lage selve pdf'en: classicthesis og scrextend (KOMA-script), graphicx, listings,
inputenc, hyperref, appendix, amsmath og amssymb.

For ubuntu og debian-baserte systemer, installering av følgende pakker skal
gjøre biffen:

```bash
sudo apt-get install texlive-latex-recommended texlive-publishers
# Om det ikke holder, prøv i tillegg dette, basert på hvilken feilmelding du får
sudo apt-get install texlive-latex-extra
sudo apt-get install texlive-pictures
sudo apt-get install texlive-font-utils
sudo apt-get install texlive-extra-utils
sudo apt-get install texlive-fonts-extra # For eulermathfont-tingen
# Evt. følgende, om du bestemmer deg for å gi litt blanke
sudo apt-get install texlive-full
```

Navnene på pakkene skal være relativt like, så for Arch og andre distroer kan
man søke på dette og få opp et nogenlunde korrekt svar. For de som benytter
Windows og Mac, legg gjerne inn en tutorial om dere har fått til å kompilere
PDFen.

JN har følgende pakker på Debian Wheezy:
```
texlive-base texlive-binaries texlive-common texlive-doc-base
texlive-extra-utils texlive-font-utils texlive-fonts-recommended
texlive-fonts-recommended-doc texlive-generic-recommended texlive-humanities
texlive-humanities-doc texlive-latex-base texlive-latex-base-doc
texlive-latex-extra texlive-latex-extra-doc texlive-latex-recommended
texlive-latex-recommended-doc texlive-pictures texlive-pictures-doc
texlive-pstricks texlive-pstricks-doc texlive-publishers texlive-publishers-doc
texlive-xetex
```

## Først og fremst

Det smarteste for å vite hva vi burde ha med i rapporten er å se på tidligere
rapporter. *Festina Lente* og *Igor* er to prosjekter som jeg anbefaler sterkt å
se på, da disse to har gode rapporter og/eller har relevant informasjon man kan
sammenligne med. I tillegg ser de bra ut, og vi kan stjele mye layoutmessig fra
dem.

## Grafer

For raske mockups av grafer, benytt [yEd][] og inkluder graphml-fila du får
ut. JN kan endre til litt penere grafer senere.

[yed]: http://www.yworks.com/en/products_yed_about.html "yEd diagramming tool"

## Rapportstruktur

Rapporten er delt opp i flere forskjellige deler: sammendrag (abstrakt),
kapitler og seksjoner innad i kapitlene, figurer og grafikk, kode og algoritmer,
samt bibliografi. Hver enkelt av disse enhetene ligger i forskjellige mapper,
med følgende struktur:

	core -> report.tex
	layout -> config.tex
	front/back -> fb/*
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
filer i mappa, kan du evt. plassere en symlink til mappa i
`figs/kapittelnavn/`. Husk på å gjøre symlinken relativ, for å unngå diverse
krøll.

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

### Generering av figurer on-demand

Vanlig prosedyre for å unngå at repositorier blir unødvendig store er å ha
filene som generer bildene i mappene i stedet. Da vi har brutt dette
eksepsjonelt mye fra før av, tror jeg det blir mer ork enn verdi i å gjøre om
på dette. Om det likevel skulle være ønske, fyr løs og ta kontakt: Å sette opp
make-scripts tar ikke lang tid.

### Kvalitet på rastergrafikk (bilder: png/jpg)

Først og fremst: Om du kan unngå png/jpg/bmp eller lignende, unngå det. Vi er
glade i vektorgrafikk, og alt fra ai-, ps-, eps-, svg- og pdf-filer mottas med
stor glede. Kun pdf-filer kan inkluderes, men å konvertere over kan JN hjelpe
deg med eller gjøre for deg.

Om det er et bilde eller screenshot, eller annet som gjør at det må være
rastergrafikk, sørg for at kvaliteten er høy! Få det mest høyoppløselige bildet,
og legg det inn med skalering. Vi kan nedskalere senere med tanke på størrelsen
på pdfen, men det er viktig å få kvalitet på bildene. Legg helst bilder med stor
størrelse (over 1 MB) på
[downloads-siden på github](https://github.com/martingamm/dmpro2012ytelse/downloads),
og putt filen i `.gitignore` i den mappa den faktisk skal ligge i.

### Tabeller

Tabeller skal også plasseres i `figs/kapittelnavn/`, på formen
`figs/kapittelnavn/tabellnavn.tex`. Plassér helst tabellen direkte inn i
tex-fila, da tabeller generelt sett er lette å lese og ikke krever like mye
plass som e.g. TikZ-bilder.

Alle tabeller burde ha følgende utseende:
```tex
\begin{table}[h]
  \centering
  \begin{tabular}{ x  ...  x} \toprule
    \thx{attr} & ... & \thx{attr}\\ \midrule
    val & ... & val \\ \midrule
	...
	val & ... & val \\ \bottomrule
  \end{tabular}
  \caption{tabelltekst}
  \label{tab:tabellabel}
\end{table}
```

Malen for `[h]`, caption og label gjelder som med figurer.

Alle x'ene i `x  ...  x` må byttes ut med enten *c* (for *center*), *l*
(for *left*) eller *r* (for *right*). Velg det som ser best ut, men foretrekk om
*c* det er liten eller ingen praksis forskjell. Dette gjøres for å få en viss
konsistens i hele rapporten.

Separer elementer med `&` og slutt hver linje med `\\ \toprule`.Alle elementene
i headeren må innkapsles i `\thx{}` eller `\thxc` - f.eks. hvis man har
attributtnavnet `attr`, må headeren ha `\thx{attr}`. Forskjellen mellom `\thx`
og `\thxc` er at `\thxc` sentrerer headeren, mens `\thx` ikke gjør det.

Eksempel med tabell som benytter seg av identifikatorer:

```tex
\begin{table}[h]
  \centering
  \begin{tabular}{c r c} \toprule
    \thx{Name} & \thx{Score} & \thx{Born}\\ \midrule
    Rich & 100 & 1958 \\ \midrule
	Paul &  54 & 1975 \\ \midrule
	Fred &  76 & 1967 \\ \bottomrule
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

All kode og pseudokode skal plasseres i `code/kapittelnavn/kodenavn.tex`,
eventuelt også i `code/kapittelnavn/kodenavn.[suffiks]` om en egen kodefil er
nødvendig. Som med figurer, kan disse symlinkes for å slippe redundans i
repoet. Som med tidligere symlinker, pass på at disse er relative.

Et eksempel på en kodesnutt som vises følger:

```tex
\begin{lstlisting}[float=h,language=VHDL,
                   caption={ALU component in VHDL},label={lst:vhdl}]
component alu is
port (
    num_A:  in std_logic_vector(15 downto 0);
    num_B:  in std_logic_vector(15 downto 0);
	jpsign: in std_logic;
	ALUs:   in std_logic_vector(1 downto 0);
	ALUz:   out std_logic;
	ALUout: out std_logic_vector(15 downto 0)
);
end component;
\end{lstlisting}
```

Her er float det samme som `[h]`-argumentet tidligere. `caption` og `label` er
det samme som sine backslasha venner i figurer og tabeller. Vær litt påpasselig
på å legge inn riktig språk: Se [manualen for listings][listings] for en liste
over støttede språk. Andre argumenter som f.eks. `numbers`, `firstnumbers` og
venner kan gjerne benyttes om det faller naturlig, men helst ikke endre på
layouten til listingen.

For kodesnutter eller kode fra andre filer, benytt deg av følgende:

```tex
\lstinputlisting[float=h,firstline=a,lastline=b,numbers=left,
                 caption={Listingbeskrivelse},label={lst:listinglabel}]
				 {inputfil.suffix}
```

Legg denne inn i en egen `tex`-fil, da det kan være ønskelig å få konsistent
layout på koden. Det er lettere om vi har all kode på samme område.

`firstline` og `lastline` kan unngås om hele filen skal puttes inn. Hvis ikke,
velger man hvilke linjer man skal importere inn.

For inline kode, benytt dere av `\lstinline[language=lang]|kode|`. For lengre
inline kode, benytt dere av
`\begin[nolol=true,language=lang]{lstlisting}...\end{lstlisting}` direkte i
tex-koden, uten floats, captions eller labels.

For mer informasjon, se pdf-manualen for [listings][].

### Algoritmer

Algoritmeseksjon kommer om det blir behov for det. Ellers ligger den på is.

[listings]: http://mirror.hmc.edu/ctan/macros/latex/contrib/listings/listings.pdf "listings LaTeX manual"
[algorithmicx]: http://mirrors.cicku.me/CTAN/macros/latex/contrib/algorithmicx/algorithmicx.pdf "algorithmicx LaTeX manual"

## Matematikk

Inline matematikk gjøres ved å plassere matten mellom dollartegn, slik som
følgende: `Pythagoras tells us that $a^2 + b^2 = c^2$ ...`. Sentrerte ligninger
på egen linje kan skrives på følgende måte:

```tex
\[
    \rho\left( \partial_t \vec{u} + \vec{u} \cdot \nabla\vec{u} \right)
	= - \nabla p + \mu \nabla^2 \vec{u}
\]
```

Om man skal referere til ligninger, må man benytte seg av `equations`-settingen,
slik som dette:

```tex
\begin{equation} \label{eq:ising}
	E = -J \sum_{i=1}^N s_i s_{i+1}
\end{equation}
Equation~\eqref{eq:ising} expresses the energy of a configuration
of spins in the Ising model.
```

Merk at en equation ikke er en float, så den plasseres direkte der du sier at
den skal stå. For mer info om matematikk i LaTeX, sjekk ut wikibooks-siden til
[matematikk i LaTeX][math-tutor]. [Mathurl.com](http://www.mathurl.com) er også
en praktisk side som burde benyttes for å raskt sjekke om matteligningen man
skriver ser korrekt ut.

[math-tutor]: http://en.wikibooks.org/wiki/LaTeX/Mathematics "LaTeX Mathematics"

## Referering og sitering

Man burde referere til tabeller, figurer, kode, pseudokode og ligninger om denne
enheten er relevant for diskusjonen. Referering gjøres veldig lett ved å skrive
`\ref{type:labelname}`, der type:labelname er det du har puttet inn i
`\label`-kommandoen for den spesifikke enheten. For eksempel vil referering til
det tidligere tabelleksempelet gjøres på følgende måte:

```tex
The scores seemed to have a negative correlation with birthyear, as implied from
table \ref{tab:pscore}. A reasonable assumption is that older players have more
experience [...]
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
skrive `equation \eqref{eq:pythagoras} tells us that` for å fortelle hva man
snakker om.

### Siteringer

Siteringer gjøres ved å benytte seg av `\cite`, som
f.eks. `\cite{potter1985mpp}`. Referanser legges til i `bibliography.bib`, snakk
gjerne med JN for å få det på formatet det skal være på.
