% Ad. Ore, Lettische Volkslieder / Latweeschu tautas dseesmas (Riga [1890]), No. 15, p. 18.
% Set it with LilyPond 2.24 and the font Charis SIL (SIL, OFL):  lilypond nr15.ly  -> PDF and MIDI.
% Assembled from the page sources checked against the print (noten/pNNN.ly); every measure
% ends with  % pNNN T<n>  = printed page and measure. Generated: correct the page sources.
\version "2.24.0"
\header {
  title = "Nr. 15"
  subtitle = "Ad. Ore, Lettische Volkslieder (Riga [1890]), S. 18"
  tagline = ##f
}
\paper {
  #(set-paper-size "a4")
  % systems stay at the top of the page
  ragged-bottom = ##t
  % no page numbers: one song per file
  print-page-number = ##f
  % Charis SIL has the stroked letters of the old Latvian orthography (ꞩ ꞥ ł ꞡ …), LilyPond's
  % default font does not. LilyPond 2.24 needs set-global-fonts (check the PDF with pdffonts).
  #(define fonts (set-global-fonts #:roman "Charis SIL" #:factor (/ staff-height pt 20)))
}

canto = {
  \key d \major \time 3/4 \tempo "Allegro." 4 = 120 d''4.\f a'8 d''8 e''8 |  % p018 T1
  fis''4 d''4 d''8 d''8 |  % p018 T2
  a'4. b'8 a'8 g'8 |  % p018 T3
  fis'4 d'4 d'4 |  % p018 T4
  \break b'4. ais'8 b'8 cis''8 |  % p018 T5
  d''4 cis''4 b'8 b'8 |  % p018 T6
  a'8.^\markup { \italic "rit." } a'16 b'8 a'8 b'8 cis''8 |  % p018 T7
  d''2 r4 \bar "|." |  % p018 T8
}

rechts = {
  \key d \major \time 3/4 <fis' d''>4.\f <fis' a'>8[ <fis' d''>8 <g' e''>8] |  % p018 T1
  <a' fis''>4 <fis' d''>4 <fis' d''>4 |  % p018 T2
  <e' a'>4. <g' b'>8[ <fis' a'>8 <e' g'>8] |  % p018 T3
  <d' fis'>4 <d' fis'>4 d'4 |  % p018 T4
  <d' b'>4. <cis' ais'>8[ <d' b'>8 <e' cis''>8] |  % p018 T5
  <fis' b' d''>4 <e' fis' ais' cis''>4 <d' fis' b'>4 |  % p018 T6
  <cis' g' a'!>4 <d' g' b'>4 <e' g' cis''>4 |  % p018 T7
  <d' fis' d''>2 r4 |  % p018 T8
}

links = {
  \key d \major \time 3/4 d4 d'4 a4 |  % p018 T1
  d8[ fis8 a8 g8 fis8 d8] |  % p018 T2
  cis4 a,4 b,8[ cis8] |  % p018 T3
  d8[ a8 d'8 cis'8 b8 a8] |  % p018 T4
  g4 g,4 <g, g>4 |  % p018 T5
  <b,, b,>4 <cis, cis>4 <d, d>4 |  % p018 T6
  <e, e>2 <a,, a,>4 |  % p018 T7
  <d, d>2 r4 |  % p018 T8
}

dynamik = { }
worteA = \lyricmode {
  \set stanza = "1." 
  "Müt" -- "ter" -- "chen," "wo" "sind" "die" "Töch" -- "ter?" "Leer" "die" "Stühl'" "im" "Stüb" -- "chen" "stehn!"  % p018 S1
  "Wo" "sind," "Tan" -- "ne," "dei" -- "ne" "Ae" -- "ste," "nur" "die" "Stüm" -- "pfe" "sind" "zu" "sehn?"  % p018 S2
}
worteB = \lyricmode {
  \set stanza = "1." 
  "Kur" "mah" -- "mi" -- "ꞥa," "ta" -- "was" "mei" -- "tas?" "Kreh" -- "ꞩli" "ween" "ir" "i" -- "sta" -- "bâ!"  % p018 S1
  "Kur" "pree" -- "di" -- "te," "ta" -- "wi" "sa" -- "ri?" "Zel" -- "mi" "ween" "pa" -- "li" -- "ku" -- "ꞩchi?"  % p018 S2
}

musik = <<
  \new Staff \with { midiInstrument = "choir aahs" instrumentName = "CANTO." } { \new Voice = "canto" { \clef treble \autoBeamOff \dynamicUp \canto } }
  \new Lyrics \with { \override LyricText.font-shape = #'italic } \lyricsto "canto" { \worteA }
  \new Lyrics \with { } \lyricsto "canto" { \worteB }
  \new PianoStaff \with { connectArpeggios = ##t instrumentName = "Piano." } <<
    \new Staff \with { midiInstrument = "acoustic grand" } { \clef treble \rechts }
    \new Dynamics { \dynamik }
    \new Staff \with { midiInstrument = "acoustic grand" } { \clef bass \links }
  >>
>>
% MIDI: a Dynamics context does not change the volume, so the dynamics go into both piano staves
musikMidi = <<
  \new Staff \with { midiInstrument = "choir aahs" } { \canto }
  \new Staff \with { midiInstrument = "acoustic grand" } << \rechts \dynamik >>
  \new Staff \with { midiInstrument = "acoustic grand" } << \links \dynamik >>
>>

% Tempo: only the word is printed (\tempo "Allegro." 4 = 120); the number is for the MIDI only
\score { \musik \layout { \context { \Score tempoHideNote = ##t } } }
\markup { \vspace #2 }
\markup { \fill-line { \italic \column { "2." "Mütterchen ruft ihre Töchter," "Ruft sie alle, gross und klein," "Kommt die Aeltste, kommt die Zweite," "Nur die Jüngste fehlt allein." "3." "Fortgelaufen ist die Jüngste" "Singend hin zum klaren Quell;" "Als sie Blumen pflückt am Ufer," "Fällt ihr Ring ins Wasser hell." "4." "Als sie nach dem Ring sich bücket," "Fällt auch ihre goldne Kron'," "Als sie nach der Krone langet," "Trägt der Bach ihr Tuch davon!" "5." "Als sie nach dem Tuche greifet," "Fällt sie selbst hinein im Nu," "Und es tragen Baches Wellen" "Nach dem weiten Meer sie zu." "6." "Meereswellen tragen sicher" "Sie zum festen Meerestrand," "Betten sie auf weichem Lager" "Unter weissen Meeressand." "7." "In neun Jahren auf dem Sande" "Eine Linde wohlbelaubt" "Streckte mit neun schönen Aesten" "In die Höhe stolz ihr Haupt." "8." "Nach neun Jahren fällt der Bruder" "Sich zur Zither diesen Baum;" "Spielend rühmt er: Solche Zither" "Findet man auf Erden kaum." "9." "Sagt die thränenreiche Mutter:" "Das ist meiner Jüngsten Sang," "Der vom Bach beim Blumenpflücken" "Oft zu mir herüberklang." "(Ulmann.)" } \column { "2." "Ꞩauz mahmiꞥa ꞩawas meitas," "Ꞩauzi leelo, sauzi masàs," "Attek leelà, attek masà," "Pastarite ne attek." "3." "Pastarite aistezeja" "Gar upiti dseedadàm'!" "Selta seedus laꞩidama" "Nokriht selta gredseniꞥsch." "4." "Gredsentiꞥu mekledamai" "Nokriht selta wainadsiꞥsch," "Wainadsiꞥu mekledamai," "Nokriht raiba wilainit'," "5." "Pehz wilaines ꞩneegdameeꞩi," "Eekriht pati upitê." "Upes wilꞥi tàs ne=nesa," "To ismeta juhriꞥâ." "6." "Juhras wilꞥi tàs ne=nesa," "To ismeta maliꞥâ," "To ismeta maliꞥâ" "Baltâ ꞩmilꞩchu kalniꞥâ." "7." "Dewitâ gadiꞥâi" "Tur usauga kupla leep'," "Isaug kupla leepiꞥa," "Dewiꞥàmi golotnem." "8." "Dewitâi gadiꞥâi" "Nahk brahlitis kokles zirst," "Ꞩak' brahlitis kokledamsi:" "„Tàs koklites gauꞩchi ꞩkan." "9." "Ꞩak mahmiꞥa raudadama:" "Tà dseed mana pastarit'," "Gar apiti tezedama," "Selta seedus laꞩidam'." } } }

\score { \unfoldRepeats \musikMidi \midi { \tempo 4 = 80 } }
