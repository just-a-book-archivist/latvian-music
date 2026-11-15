% Ad. Ore, Lettische Volkslieder / Latweeschu tautas dseesmas (Riga [1890]), No. 5, p. 6.
% Set it with LilyPond 2.24 and the font Charis SIL (SIL, OFL):  lilypond nr05.ly  -> PDF and MIDI.
% Assembled from the page sources checked against the print (noten/pNNN.ly); every measure
% ends with  % pNNN T<n>  = printed page and measure. Generated: correct the page sources.
\version "2.24.0"
\header {
  title = "Nr. 5"
  subtitle = "Ad. Ore, Lettische Volkslieder (Riga [1890]), S. 6"
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
  \key aes \major \time 3/4 \tempo "Moderato." 4 = 100 aes'8\p bes'8 c''4 c''4 |  % p006 T1
  bes'8\< c''8 des''4\! bes'4\> |  % p006 T2
  c''8\mf des''8\< ees''4 ees''4 |  % p006 T3
  des''8\> c''8 bes'4\! r4 |  % p006 T4
  \break c''8\f ees''8 aes''4 aes''4 |  % p006 T5
  aes''8 ees''8 c''4 c''4 |  % p006 T6
  f''8 ees''8 des''4 bes'4\> |  % p006 T7
  c''8 bes'8\! aes'2 \bar "|." |  % p006 T8
}

rechts = {
  \key aes \major \time 3/4 << { <ees' aes'>8[ <ees' bes'>8] } \\ { c'4 } >> <c' ees' c''>4 <c' ees' c''>4 |  % p006 T1
  << { bes'8[ c''8] des''4 bes'4 } \\ { ees'4 <ees' g'>4 ees'4 } >> |  % p006 T2
  << { <aes' c''>8[ <g' des''>8] } \\ { ees'4 } >> <ees' aes' ees''>4 <ees' aes' ees''>4 |  % p006 T3
  << { <bes' des''>8[ <aes' c''>8] <g' bes'>2 } \\ { ees'2. } >> |  % p006 T4
  <ees' aes' c''>8[ <ees' bes' ees''>8] <aes' c'' aes''>4 <aes' f'' aes''>4 |  % p006 T5
  <aes' ees'' aes''>8[ <aes' c'' ees''>8] <ees' aes' c''>4 <ees' aes' c''>4 |  % p006 T6
  <f' aes' f''>8[ <ges' c'' ees''>8] <f' bes' des''>4 <des' f' bes'>4 |  % p006 T7
  << { g'4 <c' ees' aes'>2 } \\ { <des' c''>8[ <des' bes'>8] s2 } >> |  % p006 T8
}

links = {
  \key aes \major \time 3/4 << { aes8[ ees8] aes8[ ees8] aes8[ ees8] } \\ { aes,4 aes,4 aes,4 } >> |  % p006 T1
  << { g8[ aes8] bes4 } \\ { des8[ c8] bes,8[ ees8] } >> <g bes>4 |  % p006 T2
  << { aes8[ bes8] <aes c'>4 <aes c'>4 } \\ { ees4 aes8[ ees8] aes8[ ees8] } >> |  % p006 T3
  << { g8[ aes8] bes8[ g8 ees8 bes,8] } \\ { ees4 s2 } >> |  % p006 T4
  <aes, aes>8[ <g, g>8] <f, f>8[ <ees, ees>8] <des, des>4 |  % p006 T5
  <c, c>8[ <ees, ees>8 <aes, aes>8 <g, g>8 <ges, ges>8 <ees, ees>8] |  % p006 T6
  <des, des>4~ <des, des>8[ bes,8 c8 des8] |  % p006 T7
  ees8[ ees,8] <aes,, aes,>2 |  % p006 T8
}

dynamik = {
  s4\p s2 |  % p006 T1
  s8\< s8 s4\> s4 |  % p006 T2
  s8\mf s8\< s4 s4 |  % p006 T3
  s4\> s4\! s4 |  % p006 T4
  s4\f s2 |  % p006 T5
  s2. |  % p006 T6
  s2 s4\> |  % p006 T7
  s4\! s2 |  % p006 T8
}

worteA = \lyricmode {
  \set stanza = "1." 
  "Son" -- "ne" "eilt" "am" "Him" -- "mel" "dro" -- "ben," "lässt" "im" "Schat" -- "ten" "mich" "al" -- "lein;"  % p006 S1
  "nim" -- "mer" "scheint" "mir" "warm" "die" "Son" -- "ne," "hab'" "ich" "doch" "kein" "Müt" -- "ter" -- "lein!"  % p006 S2
}
worteB = \lyricmode {
  \set stanza = "1." 
  "Ꞩau" -- "lit'" "te" -- "zej" "te" -- "ze" -- "da" -- "ma," "eꞩ" "pa" -- "li" -- "ku" "pa" -- "weh" -- "nî,"  % p006 S1
  "na" -- "wa" "ꞩa" -- "was" "mah" -- "mu" -- "łi" -- "ꞥas," "kas" "ee" -- "zeh" -- "la" "ꞩau" -- "li" -- "tê."  % p006 S2
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
\markup { \fill-line { \italic \column { "2." "Warte doch, du liebe Sonne," "Hör mir nur ein Weilchen zu," "Mütterchen am Abend rufe" "Tausend, tausend Grüsse du!" "3." "Nieder, nieder geht die Sonne;" "Ferne, fern das Mütterlein!" "Ob ich eile, ob ich laufe." "Nimmer holt mein Rūf es hin!" "(F. Kolberg)" } \column { "2." "Tez' ꞩaulite pagaid' manis," "Ko es tewim paꞩaziꞩch':" "„Aisnes manai mahmułiꞥai" "Labu, labu wakaru!“" "3." "Jau ꞩaulite semu, semu," "Mahmułiꞥa tahłu, tahł'!" "Teku, teku nepanahku," "Ꞩauzu, sauzu neꞩaꞩauz'!" } } }

\score { \unfoldRepeats \musikMidi \midi { \tempo 4 = 80 } }
