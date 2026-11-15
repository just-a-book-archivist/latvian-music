% Ad. Ore, Lettische Volkslieder / Latweeschu tautas dseesmas (Riga [1890]), No. 16, p. 19.
% Set it with LilyPond 2.24 and the font Charis SIL (SIL, OFL):  lilypond nr16.ly  -> PDF and MIDI.
% Assembled from the page sources checked against the print (noten/pNNN.ly); every measure
% ends with  % pNNN T<n>  = printed page and measure. Generated: correct the page sources.
\version "2.24.0"
\header {
  title = "Nr. 16"
  subtitle = "Ad. Ore, Lettische Volkslieder (Riga [1890]), S. 19"
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
  \key bes \major \time 2/4 \tempo "Maestoso." 4 = 66 f'4\f c''4 |  % p019 T1
  c''8 c''8 c''8 ees''8 |  % p019 T2
  d''8.[ ees''16] f''4 |  % p019 T3
  g''4-> f''4 |  % p019 T4
  f''8 f''8 f''8 f''8 |  % p019 T5
  \break g''4-> d''4 |  % p019 T6
  ees''4-> d''4 |  % p019 T7
  c''8 bes'8 c''8 c''8 |  % p019 T8
  f'8.[ g'16] f'4 |  % p019 T9
  ees''4-> d''4 |  % p019 T10
  c''8 bes'8 d''8 c''8 |  % p019 T11
  bes'4 r4 \bar "|." |  % p019 T12
}

rechts = {
  \key bes \major \time 2/4 <bes d' f'>4\f <c' f' a' c''>4 |  % p019 T1
  <ees' g' c''>4 <ees' g' c''>8[ <g' c'' ees''>8] |  % p019 T2
  <f' bes' d''>8.[ <g' bes' ees''>16] <f' bes' d'' f''>4 |  % p019 T3
  <g' bes' e'' g''>4 <a' c'' f''>4 |  % p019 T4
  <f' a' c'' f''>4 <f' a' c'' f''>8[ <a' c'' f''>8] |  % p019 T5
  <g' b' d'' g''>4 <f' b' d''>4 |  % p019 T6
  <ees' g' c'' ees''>4 <f' b' d''>4 |  % p019 T7
  <ees' g' c''>4 <c' g' c''>8[ <c' g' c''>8] |  % p019 T8
  <c' f' a'>8.[ <bes e' g'>16] << { <c' f'>4 } \\ { ees'8[ <bes d'>8] } >> |  % p019 T9
  <ees' bes' ees''>4 <f' bes' d''>4 |  % p019 T10
  <c' g' c''>4 <f' bes' d''>8[ <ees' a' c''>8] |  % p019 T11
  <d' f' bes'>4 r4 |  % p019 T12
}

links = {
  \key bes \major \time 2/4 <bes, bes>8[ <a, a>8 <g, g>8 <f, f>8] |  % p019 T1
  <ees, ees>8[ <d, d>8] <c, c>4 |  % p019 T2
  <f, f>8.[ <ees, ees>16] <d, d>4 |  % p019 T3
  <c, c>4 <f, f>4 |  % p019 T4
  <a, a>8[ <g, g>8 <f, f>8 <ees, ees>8] |  % p019 T5
  <d, d>8[ <g,, g,>8 <a,, a,>8 <b,, b,>8] |  % p019 T6
  <c, c>4 <d, d>4 |  % p019 T7
  <ees, ees>8[ <d, d>8 <ees, ees>8 <e, e>8] |  % p019 T8
  <f, f>8.[ <g, g>16] <a, a>8[ <aes, aes>8] |  % p019 T9
  <g, g>4 <f, f>4 |  % p019 T10
  <ees, ees>8[ <e, e>8] <f, f>8[ <f,, f,>8] |  % p019 T11
  <bes,, bes,>4 r4 |  % p019 T12
}

dynamik = { }
worteA = \lyricmode {
  \set stanza = "1." 
  "Mond" "führt" "heim" "die" "Son" -- "nen" -- "toch" -- "ter," "Per" -- "kon" "folgt" "im" "Hochzeits" -- _  % p019 S1
  "zu" -- "ge," "durch" "die" "off" -- "ne" "Pfor" -- "te" "spren" -- "gend" "spal" -- "tet" "er" "den" "Ei" -- "chen" -- "baum."  % p019 S2
}
worteB = \lyricmode {
  \set stanza = "1." 
  "Meh" -- "neꞩs" "ꞥeh" -- "ma" "ꞩau" -- "les" "mei" -- "tu," "Per" -- "kons" "jah" -- "ja" "pa" -- "nahk" --  % p019 S1
  "ꞩꞥo" -- "si," "pa" "wahr" -- "tee" -- "mi" "ee" -- "jah" -- "jo" -- "ti," "no" -- "ꞩper" "sel" "ta" "o" -- "so" -- "liꞥ'."  % p019 S2
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
\markup { \fill-line { \italic \column { "2." "Meinen braunen Rock besprenget" "Hoch aufspritzend Blut der Eiche," "Weinend liest die Sonnentochter" "In drei Jahren auf die Aeste." "3." "Sage mir doch, liebes Mädchen;" "Wo ich meinen Rock soll waschen?" "Wasch ihn Knabe in dem Bächlein" "Aus, woher neun Ströme fliessen." "4." "Sage mir doch, liebes Mädchen," "Wo soll trocknen meinen Rock ich?" "Häng' ihn Knabe in den Garten," "Wo neun Rosenstöcke blüh'n." "(Ulmann.)" } \column { "2." "Apꞩlaz' mans bruhnos ꞩwahrkus" "Ar osola aꞩinim," "Trihs gadiꞥus ꞩaules meita" "Laꞩa sarus raudadama." "3." "Ꞩaki mana mihłà meitiꞥ'," "Kur es wiꞥus ismasgaꞩchu?" "Masgà, puiꞩit' taî upitê," "Kur dewiꞥas straumes ꞩkreen," "4." "Ꞩaki mana mihłà meitiꞥ'," "Kur es wiꞥus isschahweꞩchu?" "Schahwè puiꞩit', taî dahrsiꞥâ," "Kur dewiꞥas roses seed." } } }

\score { \unfoldRepeats \musikMidi \midi { \tempo 4 = 80 } }
