# Ādams Ore: *Lettische Volkslieder / Latweeschu tautas dseesmas* (Riga [1890])

*Latviski:* Ādama Ores „Latviešu tautas dziesmas“ balsij un klavierēm, 16 dziesmas ar latviešu
un vācu tekstu. Notis, visas iespiestās zīmes un vārdi ir salīdzināti ar skenējumu. Notis ir
LilyPond failos (`songs/`); PDF un MIDI ir sadaļā „Releases“.

Sixteen Latvian folk songs arranged for voice and piano by Ādams Ore (Adam Ore, 1853–1927),
with the Latvian words and a German verse translation — songs of love and courtship, many of
orphans and grief, a midsummer song with the refrain *līgo* (No. 9), and one of the Moon, the
Sun's daughter and Pērkons (No. 16). Set for the singing at home of the late 19th century: full
chords, arpeggios, several changes of key.

| | |
|---|---|
| Title page | `LETTISCHE VOLKSLIEDER / LATWEEŞCHU TAUTAS DSEEŞMAS / für eine Singstimme mit Begleitung des Pianoforte / von Ad. Ore` (`transcription/p001.txt`) |
| Published | Riga: Carl Blosfeld, [1890] („Eigenthum des Verlegers Carl Blosfeld“); plate number B. 48. Censor's permit Moscow, 21 December 1888 (in Russian, p. 19). Date 1890 after Hofmeister's *Monatsbericht*, February 1890. |
| Printed | Engraved; „Stich & Druck von W. Grosse in Moskau“ (p. 2). |
| Contents | Nos. 1–16 on pp. 2–19; No. 9 runs over pp. 10–13, Nos. 10 and 11 share p. 14. German translations by F. Kolberg, Ulmann and others, signed under the songs. |
| Language | Latvian in the old orthography (roman type, with the stroked letters `ꞩ ꞥ ł ꞡ` and accents), German in italics. |
| Source | Internet Archive: <https://archive.org/details/OreLettVL1890> (holding library not named). `pages.tsv` names the image of each page in the item's `Ore_LettVL_1890_jp2.zip`. |

## What is here

- `songs/nr01.ly` … `nr16.ly` — each song complete in one file: voice, piano, dynamics, the
  first stanza under the voice (German above Latvian, as printed; No. 9 two stanzas each), the
  further stanzas below in two columns. Set with LilyPond 2.24 and the font Charis SIL:
  `lilypond nr01.ly` gives `nr01.pdf` and `nr01.midi`.
- `source/p002.ly` … `p019.ly` — the music of each printed page, one measure per line, as
  checked; `source/underlay.tsv` — the 11 underlay lines where a syllable lies on more notes than
  slurs, ties and beams say (with the reason, in German).
- `transcription/p001.txt` … `p019.txt` — every word of each page as printed; `anmerkungen.tsv`
  — notes on single places (in German).
- `editionsrichtlinien.md` — the editorial rules in full (in German); the main points below.

## How it was made and checked

1. **Words** read from the page images and confirmed by hand line by line against the scan, all
   740 lines (14 November 2026).
2. **Music**: a draft by Audiveris (optical music recognition), turned into LilyPond and corrected
   measure by measure against the scan; all 196 measures confirmed (15 November 2026). Audiveris
   got the structure right and about half the piano, but dropped many of the voice's eighths and
   misread keys; every measure was checked at the image.
3. **Whole songs** set and compared with the print and heard as MIDI; ten more measures corrected
   that the measure-by-measure check had passed.
4. **Signs**: every printed sign added — dynamics, hairpins, tempo words, fermatas, accents,
   slurs, double and repeat bars — and checked song by song.
5. **Words under the notes** from the transcription, checked song by song.

## Editorial notes

- **As printed.** Pitches, durations, beams, stems and signs follow the print; line breaks follow
  the printed systems (an extra break only where a printed system does not fit the page, No. 6).
- **Underlay as printed.** Where the print sets a word without a hyphen under two notes
  („Schaukle“, „Mägdlein“, „sahrtàs“ …) the word stays under the first note; no hyphen is added.
  Where the print is inconsistent with hyphens or leaves open which syllable belongs to which
  note, it is followed as it is. In No. 10 the German and the Latvian divide the same notes
  differently (mm. 2 and 6); each language follows its own underlay.
- **Corrected:** p. 17 m. 12, voice: the first note is printed without a flag (a quarter), set as
  an eighth, since the measure would be too long otherwise.
- **Not added:** where the print leaves a voice empty (p. 16 m. 10, left hand), it stays empty
  (an invisible spacer, no rest).
- **Tempo numbers are not in the print.** Only the word is printed (*Allegro.*, *Andante.*);
  the MIDI needs a number: Allegro ♩ = 120, Allegretto 108, Moderato 100, Andante 72,
  Maestoso 66, Largo 50, none given 80. They are in the source, hidden in the PDF.
- **Limits of the MIDI:** fermatas are not held, the repeats of No. 9 are not played, *rit.* and
  *cresc.* are text only, and the `8` under three bass notes (p. 9 m. 10) does not add the lower
  octave.

## Release

PDFs and MIDI files of all 16 songs: release
[`ore-1890-1`](https://github.com/just-a-book-archivist/latvian-music/releases/tag/ore-1890-1).
