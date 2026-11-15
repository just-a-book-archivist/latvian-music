% Ad. Ore, Lettische Volkslieder / Latweeschu tautas dseesmas (Riga [1890]), No. 4, p. 5.
% Set it with LilyPond 2.24 and the font Charis SIL (SIL, OFL):  lilypond nr04.ly  -> PDF and MIDI.
% Assembled from the page sources checked against the print (noten/pNNN.ly); every measure
% ends with  % pNNN T<n>  = printed page and measure. Generated: correct the page sources.
\version "2.24.0"
\header {
  title = "Nr. 4"
  subtitle = "Ad. Ore, Lettische Volkslieder (Riga [1890]), S. 5"
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
  \key g \major \time 4/4 \tempo "Largo." 4 = 50 e'4\pp fis'4 g'4\< g'4 |  % p005 T1
  a'4 a'4 a'4\! a'4^\markup { \italic "cresc." } |  % p005 T2
  b'4 b'4 e''4 e''4 |  % p005 T3
  d''4\f d''8[ c''8] b'4 r4 |  % p005 T4
  \break b'4\mf a'4\< g'4 g'4 |  % p005 T5
  a'4\> a'4 e'4 fis'4\! |  % p005 T6
  g'4\p g'4 fis'4 fis'4\> |  % p005 T7
  e'4\!^\markup { \italic "rit." } e'4 e'2\fermata \bar "|." |  % p005 T8
}

rechts = {
  \key g \major \time 4/4 << { <g b e'>4 <a c' fis'>4 g'2 } \\ { s2\pp <b e'>8[ fis'8 e'8 d'8] } >> |  % p005 T1
  << { a'2 <d' fis' a'>2 } \\ { <c' g'>4 <cis' g'>4 s2 } >> |  % p005 T2
  << { b'2 s2 } \\ { <d' g'>4_\markup { \italic "cresc." } <dis' fis'>4 <e' b' e''>4 <g' c'' e''>4 } >> |  % p005 T3
  << { <a' d''>4. c''8 <d' g' b'>4 } \\ { d'2\f s4 } \\ { s4 fis'4 s4 } >> r4 |  % p005 T4
  <d' g' b'>4\mf <c' fis' a'>4 <b fis' g'>4\< <b e' g'>4\! |  % p005 T5
  << { <e' a'>4 <d' a'>4 e'4 fis'4 } \\ { a2\> c'2\! } >> |  % p005 T6
  <b g'>4\p <b e' g'>4 << { fis'2 } \\ { <c' e'>4\> <b dis'>4\! } >> |  % p005 T7
  << { e'!2 s2 } \\ { <b d'>4_\markup { \italic "rit." } <a c'>4 <gis b e'>2 } >> |  % p005 T8
}

links = {
  \key g \major \time 4/4 <e, e>2 <e, e>2 |  % p005 T1
  << { <e, e>4 <ees, ees>4 d8[ e8 d8 c8] } \\ { s2 d,4 s4 } >> |  % p005 T2
  b,4 <a, a>4 <g, g>8 <fis, fis>8 <e, e>4 |  % p005 T3
  <fis, fis>4 <d, d>4 <g, g>4 r4 |  % p005 T4
  << { d4 dis4 e4 g4 } \\ { g,2. e8 d8 } >> |  % p005 T5
  << { e2 e2 } \\ { c4 b,4 a,2 } >> |  % p005 T6
  <b, e>8 [e,8 fis,8 g,8] <a, a,,>4 <b,, b,>8[ <a,, a,>8] |  % p005 T7
  <gis,, gis,>4 <a,, a,>4 <e, e>2 |  % p005 T8
}

dynamik = { }
worteA = \lyricmode {
  \set stanza = "1." 
  "Hab'" "es" "nicht" "als" "Kind" "ge" -- "se" -- "hen," "als" "das" "Müt" -- "ter" -- "lein" "mir" "starb,"  % p005 S1
  "jetzt" "nach" "lan" -- "gem" "Su" -- "chen" "fand" "ich" "mei" -- "ner" "lie" -- "ben" "Mut" -- "ter" "Grab."  % p005 S2
}
worteB = \lyricmode {
  \set stanza = "1." 
  "Ma" -- "sa" "bi" -- "ju" "ne" -- "re" "dse" -- "ju," "kad" "no" -- "mi" -- "ra" "mah" -- "mi" -- "ꞥa,"  % p005 S1
  "nu" "us" -- "gah" -- "ju" "ga" -- "ni" -- "da" -- "ma," "kur" "gu" -- "le" -- "ja" "mah" -- "mi" -- "ꞥa."  % p005 S2
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
\markup { \fill-line { \italic \column { "2." "Auf dem weissen sand'gen Hügel," "Unter grünem Rasenschmuck," "Unter jenem grünen Rasen" "Ruht mein liebes Mütterlein." "3." "Ach erwache, theure Mutter," "Rasen wälz' ich dir vom Haupt," "Höre, was die fremde Mutter" "Deiner Waise Leides thut." "(K. Kalniꞥ)" } \column { "2." "Baltâ ꞩmilꞩchu kalninâi" "Apakꞩch sałàm welenàm." "Zelees augꞩchâ tu mahmiꞥa," "Es pazelschu weleniꞥ'." "3." "Zelees augꞩchâ tu mahmiꞥa," "Es pazelꞩchu weleniꞥ'," "Es tew teikꞩchu mahmuliꞥa" "Ko man dara ꞩweꞩcha maht'." } } }

\score { \unfoldRepeats \musikMidi \midi { \tempo 4 = 80 } }
