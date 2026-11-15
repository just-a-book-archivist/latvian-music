# Latvian music — songs from old prints, notes and words

*Latviski:* šeit ir vecu nošu izdevumu ar latviešu tekstu atveidojumi: notis un vārdi, kā tie
iespiesti, vecajā rakstībā. Katra nots un katrs vārds ir salīdzināts ar skenējumu. Notis ir
LilyPond failos; PDF un MIDI ir sadaļā „Releases“.

This repository holds editions of printed music with Latvian words. Each piece is transcribed
from scans of the print — every note, every printed sign and every word under the notes — and
checked against them. The words keep the print's old orthography (stroked letters, `w`, `ee`,
`h` for length) and are not normalised toward modern Latvian.

## The pieces

| Folder | Piece | State |
|---|---|---|
| [`1890-ore-latviesu-tautas-dziesmas`](1890-ore-latviesu-tautas-dziesmas/) | Ādams Ore, *Lettische Volkslieder. Latweeschu tautas dseesmas*, for voice and piano. Riga: Carl Blosfeld, [1890]. 16 folk songs, Latvian and German words. | complete: words, notes, signs and underlay checked; PDFs and MIDI in the release [`ore-1890-1`](https://github.com/just-a-book-archivist/latvian-music/releases/tag/ore-1890-1) |

Each folder has a `README.md` with the piece's details, its source, what was done and how.

## What is in a folder

- `songs/nrNN.ly` — **one complete song per file**: voice, piano, dynamics, the words under the
  voice and the further stanzas. Each file stands alone: set it with
  [LilyPond](https://lilypond.org) 2.24 and the font [Charis SIL](https://software.sil.org/charis/)
  installed, `lilypond nr01.ly`, and you get the PDF and the MIDI. Change it as you like —
  transpose it, keep only the voice, choose other fonts.
- `source/pNNN.ly` — the music of each printed page, one measure per line, as it was checked
  against the print; the songs are assembled from these. `source/underlay.tsv` lists the lines
  where a syllable lies on more notes than slurs and beams say.
- `transcription/pNNN.txt` — every word of each printed page (headings, the underlay, the
  stanzas, imprint lines), line by line as printed; `anmerkungen.tsv` notes on single places.
- `pages.tsv` — which image of the source scans is which printed page.

## How the editions are made

1. **Scans** from the Internet Archive.
2. **Music:** a draft by optical music recognition (Audiveris), turned into LilyPond text and
   corrected **measure by measure against the scan**; then every song read and heard as a whole
   and compared with the print once more; then every printed sign added (dynamics, hairpins,
   tempo words, fermatas, accents, slurs, repeat bars) and checked song by song.
3. **Words:** read from the images (no OCR model reads this type with the stroked letters) and
   checked line by line against the scan; put under the notes from that transcription and
   checked song by song.
4. **As printed:** where the print is inconsistent (hyphens, strokes) or leaves open which
   syllable belongs to which note, the edition follows the print. Everything that departs from
   it is listed in the piece's README and in its notes.

## Licence

[CC BY-SA 4.0](LICENSE). The prints themselves are in the public domain. If you use these
editions, please cite them (see `CITATION.cff`, or GitHub's „Cite this repository“).
