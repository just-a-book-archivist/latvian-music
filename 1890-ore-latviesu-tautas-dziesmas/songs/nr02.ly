% Ad. Ore, Lettische Volkslieder / Latweeschu tautas dseesmas (Riga [1890]), No. 2, p. 3.
% Set it with LilyPond 2.24 and the font Charis SIL (SIL, OFL):  lilypond nr02.ly  -> PDF and MIDI.
% Assembled from the page sources checked against the print (noten/pNNN.ly); every measure
% ends with  % pNNN T<n>  = printed page and measure. Generated: correct the page sources.
\version "2.24.0"
\header {
  title = "Nr. 2"
  subtitle = "Ad. Ore, Lettische Volkslieder (Riga [1890]), S. 3"
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
  \key bes \major \time 2/4 \tempo "Allegro." 4 = 120 bes'8\mf f'8 bes'8 d''8 |  % p003 T1
  c''8 f'16[ ees'16] f'8 bes'8 |  % p003 T2
  g'8 g'8 g'8 bes'8 |  % p003 T3
  \break f'8 g'8 f'4 |  % p003 T4
  ees'8\p[ f'8] ees'8[ f'8] |  % p003 T5
  d'8\<[ f'8] bes'8\![ d''8\fermata] |  % p003 T6
  c''8\f c''8 f''8 d''8 |  % p003 T7
  \break c''8 c''8 bes'4 |  % p003 T8
  ees'8\p[ f'8] ees'8[ f'8] |  % p003 T9
  d'8\<[ f'8] bes'8[ d''8\fermata] |  % p003 T10
  c''8\f c''8 f''8 d''8 |  % p003 T11
  c''8^\markup { \italic "rit." } c''8 bes'4 \bar "|." |  % p003 T12
}

rechts = {
  \key bes \major \time 2/4 <bes' d'>8 [ <d' f'>8 <bes' d'>8 <f' d''>8] |  % p003 T1
  <ees' c''>8 f'8 f'16 ees'16 <d' bes'>8 |  % p003 T2
  <ees' g'>8 <ees' g'>16 d'16 <ees' g'>8 <ees' bes'>8 |  % p003 T3
  <d' f'>8 <ees' g'>8 <d' f'>4 |  % p003 T4
  << { ees'8^\p[ f'8] ees'8[ f'8] } \\ { c'8[ a8] c'8[ a8] } >> |  % p003 T5
  << { d'8 f'8 <d' bes'>8 <f' d''>8 } \\ { bes2\< } >> |  % p003 T6
  << { c''4^\f f''8 d''8 } \\ { g'8\! f'8 <f' bes'>4 } >> |  % p003 T7
  << { c''4 bes'4 } \\ { <ees' g'>8 a'8 d'4 } >> |  % p003 T8
  << { ees'8 f'8 ees'8 f'8 } \\ { <g c'>4 <f c'>4 } >> |  % p003 T9
  <f bes d'>8[ <c' f'>8 <bes' g' d'>8 <f' bes' d''>8] |  % p003 T10
  << { c''4^\f s4 } \\ { <c' e' bes'>8[ <c' f' a'>8] <f' bes' f''>8[ <f' bes' d''>8] } >> |  % p003 T11
  <c' g' c''>8_\markup { \italic "rit." } <f' a' c'>16 ees'16 <d' f' bes'>4 |  % p003 T12
}

links = {
  \key bes \major \time 2/4 bes,8[ bes8 f8 bes,8] |  % p003 T1
  f,8[ <f a>8 <f a>8 bes,8] |  % p003 T2
  ees,8[ bes,8 ees8 g8] |  % p003 T3
  bes8 <bes, bes>8 <bes, bes>4 |  % p003 T4
  << { g4 f4 } \\ { c8 f,8 c8 f,8 } >> |  % p003 T5
  << { f8[ d8 f8 bes8] } \\ { bes,2 } >> |  % p003 T6
  << { c'8 a8 bes16 d'16 c'16 bes16 } \\ { e8 ees8 d4 } >> |  % p003 T7
  <ees, ees>8[ <f, f>8] <bes, f>4 |  % p003 T8
  <c, c>4 <a,, a,>4 |  % p003 T9
  <bes,, bes,>8[ <a, a>8 <g, g>8 <f, f>8 ] |  % p003 T10
  <g, g>8[ <f, f>16 <ees, ees>16] <d, d>8 <bes,, bes,>8 |  % p003 T11
  <ees, ees>8[ <f, f>8] <bes,, bes,>4 |  % p003 T12
}

dynamik = { }
worteA = \lyricmode {
  \set stanza = "1." 
  "Dei" -- "ne" "Zwei" -- "ge" "wuch" -- "sen" "nied" -- "rig," "Ei" -- "che" "du" "im"  % p003 S1
  "grü" -- "nen" "Thal!" "ei," "ei," "ei" "ja" "Ei" -- "che" "du" "im"  % p003 S2
  "grü" -- "nen" "Thal!" "ei," "ei," "ei" "ja" "Ei" -- "che" "du" "im" "grü" -- "nen" "Thal!"  % p003 S3
}
worteB = \lyricmode {
  \set stanza = "1." 
  "O" -- "so" -- "li" -- "ti" "sem" -- "sa" -- "ri" -- "ti," "kam" "tu" "au" -- "gi"  % p003 S1
  "le" -- "ji" -- "ꞥâ?" "ai," "ai," "ai" "ja" "kam" "tu" "au" -- "gi"  % p003 S2
  "le" -- "ji" -- "ꞥâ?" "ai," "ai," "ai" "ja" "kam" "tu" "au" -- "gi" "le" -- "ji" -- "ꞥâ?"  % p003 S3
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
\markup { \fill-line { \italic \column { "2." "Mädchen froh am Hügel plaudern," "Brechen deinen Blätterschmuck!" "3." "Raubt, ihr Mädchen, nach Gefallen," "Schont die zarten Reiser nur!" "4." "Lasst der Eiche grüne Reislein," "Lieber Vöglein laub'gen Sitz!" "5." "Dort mit goldnen Flügeln nahet" "Schon die liebe Nachtigall." "6." "Kam die Nachtigall geflogen?" "Nein, des Knaben Liebchen war's!" "(F. Kolberg)" } \column { "2." "Meitas tawus sarus lausa," "Us kalniꞥa stahwedam's." "3." "Lauschat meitas, ko lausdamas," "Galotnites nelauschat!" "4." "Lai paleek jel galotnite," "Kur putniꞥam usmestees." "5." "Tur atskrehja lakstigala" "Dseltaneemi ꞩpahrniꞥeem" "6." "Ta nebija lakstigala," "Ta bij puiꞩcha lihgawiꞥ'." } } }

\score { \unfoldRepeats \musikMidi \midi { \tempo 4 = 80 } }
