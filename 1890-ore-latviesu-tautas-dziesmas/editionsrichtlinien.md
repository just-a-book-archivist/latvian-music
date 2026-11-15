# Editionsrichtlinien: Ore, Lettische Volkslieder (Riga [1890])

Für den Liedtext (deutsch und lettisch) und die Noten (`noten/pNNN.ly`). Angelegt 14.11.2026,
Noten seit 15.11.2026.
Grundsatz wie bei allen Bänden: so nah am Druck wie möglich, diplomatisch; jede Abweichung
steht hier oder einzeln in `transcription/anmerkungen.tsv`.

## Was transkribiert wird (Entscheidung des Nutzers, 14.11.2026)

Alles Gedruckte, was Wort ist: Überschriften, Liednummer (`№ 1.`), Komponistenzeile
(`A. ORE.`), Unterlegung, Strophen mit Nummern, Name des Nachdichters (`(F. Kolberg)`),
Druckvermerke am Fuß, Zensurvermerk (S. 19), Titelblatt. **Nicht:** Tempo und Dynamik (gehören
zur Musik), `CANTO.`/`Piano.`, Seitenzahlen, Bibliotheksstempel, die Plattennummer `B. 48` am
Fuß jeder Seite. Eine Datei je gedruckter Seite (`transcription/pNNN.txt`), Deutsch und
Lettisch in Druckreihenfolge: Überschriften, je System die Unterlegung (deutsch über
lettisch), dann die Strophen, linke Spalte (deutsch) vor rechter Spalte (lettisch).

## Zeichen

- Antiqua, kein langes `ſ`; Strichbuchstaben wie in den Skalbe-Bänden (`ꞩ Ꞩ ꞥ ł ꞣ ꞡ`), Akzente
  `à â ê î ô`. Das Deutsche ist kursiv gedruckt; die Kursive wird nicht ausgezeichnet.
- Wie gedruckt, auch wo der Druck schwankt (`pazelschu`/`pazelꞩchu`, `sahrtàs`/`ꞩahrtàs`).
- Silbentrennung der Unterlegung wie gedruckt, der Strich als ` - ` (`Lih - go lai - wa`).
  Zwei Striche, wo der Druck zwei setzt (`lih - - go!`, gedehnte Silbe).
- **Entschieden vom Nutzer (14.11.2026), alles wie gedruckt:** der lange Strich nach einer Silbe
  über mehrere Noten (Melisma, S. 14) als `___` (`Herz ___,`, `il ___ gi`); der Doppelbindestrich
  in `ne=nesa` (S. 18) als `=`; auf dem Titelblatt `Ş` (S mit Haken darunter, Zierschrift), nicht
  `Ꞩ`.

## Normalisiert

- **Wortabstand.** Der Satz ist oft sehr eng; wo zwei Wörter ohne sichtbaren Abstand stehen
  (`nebijalakstigala`, `mansbruhnos`) oder nach einem Satzzeichen das Leerzeichen fehlt
  (`Rosen,wo`, `Sag',sie`), steht in der Transkription ein Leerzeichen. Die Stellen, an denen
  Wörter zusammenlaufen, einzeln in `anmerkungen.tsv` (`art = abstand`).

## Berichtigt

- S. 17 T12, Singstimme: Viertel (ohne Fähnchen) als Achtel, siehe „Noten“.

## Noten

- Tonhöhen, Dauern, Balken und Stimmen wie gedruckt (alle 196 Takte S. 2–19 vom Nutzer am Scan
  geprüft, 15.11.2026). Tonhöhen absolut; Vorzeichen der Tonart ausgeschrieben (`cis`), gedruckte
  Warnvorzeichen als `!`.
- **Zeichen (Entscheidung des Nutzers, 15.11.2026): alles Gedruckte** — Dynamik, Tempo,
  Fermaten, Arpeggien, Akzente, Oktavzeichen, Wiederholungszeichen, nicht nur was man zum Singen
  und Spielen braucht. Noch nicht gesetzt (eigener Durchgang); bisher drin: Arpeggien S. 8 T7–8,
  S. 17 T3.
- Wo der Druck eine Stimme nicht füllt, steht ein unsichtbarer Platzhalter (`s`), keine Pause.
- **Tempo:** gedruckt wird nur das Wort (`Allegro.`). Fürs MIDI braucht es eine Zahl; sie ist
  ergänzt und erscheint nicht im Satz: Allegro ♩ = 120, Allegretto ♩ = 108, Moderato ♩ = 100,
  Andante ♩ = 72, Maestoso ♩ = 66, Largo ♩ = 50. Ohne gedruckte Angabe (Nr. 3) ♩ = 80.
- **„8“ unter einzelnen Bassnoten** (S. 9 T10): wie gedruckt als Text unter die Note gesetzt.
  Gemeint ist wohl, die tiefere Oktave mitzuspielen; das MIDI spielt sie nicht (Deutung, nicht
  im Satz ausgeschrieben).
- **Wiederholungszeichen** (Nr. 9, S. 10 T12, S. 11 T14, S. 12 T12) als Taktstrich `:|.` gesetzt; das
  MIDI spielt die Wiederholungen nicht.
- **Dynamik der Singstimme** über dem System wie im Druck; die des Klaviers zwischen den
  Systemen, wo der Druck sie über die rechte Hand setzt, darüber (`^\f`).

### Stellen

- **S. 16 T10, linke Hand:** die ersten zwei Viertel sind leer, nichts gedruckt. Gesetzt als
  `s2` (unsichtbar), keine Pause ergänzt.
- **S. 17 T12, Singstimme:** die erste Note (`c''`) ist ohne Fähnchen gedruckt, also wie eine
  Viertel. Gesetzt als Achtel, weil der Takt sonst zu lang wäre (2/4; die Klavierstimmen haben an
  dieser Stelle eine Achtel). Berichtigt.

## Worte unter den Noten (15.11.2026)

- Unter der Singstimme steht, was der Druck dort hat: Strophe 1 deutsch (kursiv) über lettisch,
  bei Nr. 9 zwei Strophen je Sprache. Die weiteren Strophen stehen unter dem Lied in zwei Spalten
  (deutsch links, lettisch rechts), mit Nummern und Übersetzernamen wie gedruckt; die
  Druckvermerke am Fuß der Seite nicht.
- Der Text ist die Transkription, unverändert. Wo der Druck ein Wort ohne Trennstrich unter zwei
  Noten setzt („Schaukle“, „Mägdlein“, „sahrtàs“ …), steht das Wort unter der ersten Note, die
  zweite bleibt ohne Silbe — kein Trennstrich ergänzt. Welche Zeilen das sind und warum:
  `noten/unterlegung.tsv`.
- Der lange Strich nach einer Silbe (`___`) wird als Haltelinie gesetzt; der doppelte Bindestrich
  (`lih - - go!`) als ein Trennstrich (die Silbe liegt auf einer langen Note, nicht auf zweien).
- **Entschieden vom Nutzer (15.11.2026):** Wo der Druck nicht eindeutig zeigt, welche Silbe zu
  welcher Note gehört, oder Trennstriche uneinheitlich setzt (mal mit, mal ohne), bleibt es wie
  gedruckt; die Unterlegung wird nicht nachträglich vereinheitlicht oder Takt für Takt neu gebaut.
- Wo Deutsch und Lettisch dieselben Noten verschieden aufteilen (Nr. 10, T2 und T6), folgt jede
  Sprache ihrer Unterlegung im Druck.
