% Ad. Ore, Lettische Volkslieder / Latweeschu tautas dseesmas (Riga [1890]), No. 14, p. 17.
% Set it with LilyPond 2.24 and the font Charis SIL (SIL, OFL):  lilypond nr14.ly  -> PDF and MIDI.
% Assembled from the page sources checked against the print (noten/pNNN.ly); every measure
% ends with  % pNNN T<n>  = printed page and measure. Generated: correct the page sources.
\version "2.24.0"
\header {
  title = "Nr. 14"
  subtitle = "Ad. Ore, Lettische Volkslieder (Riga [1890]), S. 17"
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
  \key bes \major \time 2/4 \tempo "Andante." 4 = 72 bes'8\p d''8 bes'8 d''8 |  % p017 T1
  d''8 c''16[ bes'16] c''8 c''8 |  % p017 T2
  bes'8 d''8 bes'8 d''8 |  % p017 T3
  d''8 c''16[ bes'16] c''4 |  % p017 T4
  \break c''8. d''16 ees''8 ees''8 |  % p017 T5
  d''8 c''8 bes'8 bes'8 |  % p017 T6
  c''8 c''8 bes'8 a'8 |  % p017 T7
  bes'8. c''16 d''4 |  % p017 T8
  \break c''8. d''16 ees''8 ees''8 |  % p017 T9
  d''8 c''8 bes'8 bes'8 |  % p017 T10
  c''8 g''8 f''8 d''8 |  % p017 T11
  c''8 d''16[ c''16] bes'4 \bar "|." |  % p017 T12
}

rechts = {
  \key bes \major \time 2/4 <d' bes'>8\p[ <f' d''>8] <d' bes'>8[ <f' d''>8] |  % p017 T1
  << { d''8[ c''16 bes'16] <ees' c''>8[ <ees' c''>8] } \\ { ees'4 s4 } >> |  % p017 T2
  << { bes'8[ d''8] bes'8[ d''8] } \\ { <d' g'>4 <d' g'>4 } >> |  % p017 T3
  << { d''8[ c''16 bes'16] } \\ { <e' g'>4 } >> <ees' a' c''>4 |  % p017 T4
  <ees' g' c''>8.[ <f' b' d''>16] <g' c'' ees''>8[ <g' c'' ees''>8] |  % p017 T5
  <f' bes'! d''>8[ <ees' a' c''>8] <d' g' bes'>8[ <d' g' bes'>8] |  % p017 T6
  <c' g' c''>8[ <c' g' c''>8] <d' f' bes'>8[ <c' f' a'>8] |  % p017 T7
  <d' f' bes'>8.[ <ees' g' c''>16] <f' bes' d''>4 |  % p017 T8
  <ees' g' c''>8.[ <f' b' d''>16] <g' c'' ees''>8[ <g' c'' ees''>8] |  % p017 T9
  <f' bes'! d''>8[ <ees' a' c''>8] <d' g' bes'>8[ <d' g' bes'>8] |  % p017 T10
  <ees' g' c''>8[ <g' c'' ees''>8] <f' bes' d''>8[ <d' f' bes'>8] |  % p017 T11
  <ees' a' c''>8[ <ees' a' c''>8] <d' f' bes'>4 |  % p017 T12
}

links = {
  \key bes \major \time 2/4 << { bes8[ f8] bes8[ f8] } \\ { bes,4 bes,4 } >> |  % p017 T1
  << { a8[ f8] a8[ f8] } \\ { f,4 f,4 } >> |  % p017 T2
  <g, d bes>4\arpeggio << { bes4\arpeggio } \\ { <g, d>8\arpeggio[ bes,8] } >> |  % p017 T3
  << { g16[ bes16 a16 g16] } \\ { c4 } >> f16[ a16 g16 f16] |  % p017 T4
  <ees, ees>8[ <d, d>8] <c, c>8[ <ees, ees>8] |  % p017 T5
  <f, f>8[ <fis, fis>8] <g, g>8[ <f, f>8] |  % p017 T6
  <ees, ees>8[ <e, e>8] <f, f>8.[ <e, e>16] |  % p017 T7
  <d, d>16[ <ees, ees>16 <d, d>16 <c, c>16] <bes,, bes,>16[ <d, d>16 <g, g>16 <f, f>16] |  % p017 T8
  <ees, ees>8[ <d, d>8] <c, c>8[ <ees, ees>8] |  % p017 T9
  <f, f>8[ <f, f>8] <g, g>8[ <f, f>8] |  % p017 T10
  <ees, ees>16[ <c, c>16 <d, d>16 <ees, ees>16] <f, f>16[ <bes, bes>16 <a, a>16 <g, g>16] |  % p017 T11
  <f, f>8[ <f,, f,>8] <bes,, bes,>4 |  % p017 T12
}

dynamik = { }
worteA = \lyricmode {
  \set stanza = "1." 
  "Zwei" "sind's," "zwei," "wer" "sind" "die" "zwei" -- "e" "die" "nicht" "schlie" -- "fen" "in" "der" "Nacht?"  % p017 S1
  "Nim" -- "mer" "schlief" "der" "jun" -- "ge" "Bur" -- "sche," "dach" -- "te" "an" "sein" "Mäd" -- "chen" "stets;"  % p017 S2
  "nim" -- "mer" "schlief" "der" "jun" -- "ge" "Bur" -- "sche," "dach" -- "te" "an" "sein" "Mäd" -- "chen" "stets."  % p017 S3
}
worteB = \lyricmode {
  \set stanza = "1." 
  "Di" -- "wi," "di" -- "wi," "kas" "tee" "di" -- "wi," "kas" "mee" "dsi" -- "ꞥu" "ne" -- "gu" -- "lej'"  % p017 S1
  "pui" -- "ꞩits" "mee" -- "ga" "ne" -- "gu" -- "le" -- "ja," "us" "mei" -- "ti" -- "ꞥu" "do" -- "ma" -- "dams,"  % p017 S2
  "pui" -- "ꞩits" "mee" -- "ga" "ne" -- "gu" -- "le" -- "ja," "us" "mei" -- "ti" -- "ꞥu" "do" -- "ma" -- "dams."  % p017 S3
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
\markup { \fill-line { \italic \column { "2." "Zwei sind's, zwei, wer sind die zweie," "Die nicht schliefen in der Nacht?" "Nimmer schlief das junge Mädchen," "Strickte an dem Handschuhpaar." "3." "Nimmer schlief der junge Bursche," "Dachte an sein Mädchen stets:" "Holdes Mädchen ist mein Bräutchen," "Und ein Schimmel ist mein Ross." "(Ulmann)" } \column { "2." "Diwi, diwi, kas tee diwi," "Kas meedsiꞥu negulej'" "Meita meegu neguleja," "Puiꞩim zimdus adidama." "3." "Puiꞩits meega neguleja," "Us meitiꞥu domadams," "Mihła mana lihgawiꞥa" "Labas mahtes lolojums." } } }

\score { \unfoldRepeats \musikMidi \midi { \tempo 4 = 80 } }
