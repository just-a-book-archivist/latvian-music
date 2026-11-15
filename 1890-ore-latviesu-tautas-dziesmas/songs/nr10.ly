% Ad. Ore, Lettische Volkslieder / Latweeschu tautas dseesmas (Riga [1890]), No. 10, p. 14.
% Set it with LilyPond 2.24 and the font Charis SIL (SIL, OFL):  lilypond nr10.ly  -> PDF and MIDI.
% Assembled from the page sources checked against the print (noten/pNNN.ly); every measure
% ends with  % pNNN T<n>  = printed page and measure. Generated: correct the page sources.
\version "2.24.0"
\header {
  title = "Nr. 10"
  subtitle = "Ad. Ore, Lettische Volkslieder (Riga [1890]), S. 14"
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
  \key c \major \time 4/4 g'4\p g'4 c''4 b'8[ a'8] |  % p014 T1
  a'4 g'8[ f'8] e'8[( f'8] g'4) |  % p014 T2
  g'4 c''4\< c''4 c''4 |  % p014 T3
  c''4\! b'8[ c''8] d''2 |  % p014 T4
  \break g'4\mf g'4 c''4 b'8[ a'8] |  % p014 T5
  a'4 g'8[ f'8] e'4( g'4) |  % p014 T6
  g'4\p g'4 a'8[ g'8] f'4 |  % p014 T7
  a'4 a'4 g'2 \bar "|." |  % p014 T8
}

rechts = {
  \key c \major \time 4/4 << { <e' g'>4 g'4 c''4 <g' b'>8[ <f' a'>8] } \\ { s4 f'8[ d'8] c'4 s4 } >> |  % p014 T1
  <c' f' a'>4 <b e' g'>8[ <a d' f'>8] <g c' e'>4 <g c' g'>4 |  % p014 T2
  <c' e' g'>4 <c' f' c''>4 << { c''2 } \\ { f'8[ e'8 f'8 g'8] } >> |  % p014 T3
  << { c''4 b'8[ c''8] d''2 } \\ { fis'8[ g'8 f'8 e'8] d'4( g'4) } >> |  % p014 T4
  << { <d' f' g'>4 <c' e' g'>4 <c' g' c''>4 <g' b'>8[ <f' a'>8] } \\ { s2. c'4 } >> |  % p014 T5
  <c' f' a'>4 <b e' g'>8[ <a d' f'>8] <g c' e'>4 <g c' g'>4 |  % p014 T6
  <g d' g'>4 <g d' g'>4 << { a'8[ g'8] } \\ { <a cis'>4 } >> <a d' f'>4 |  % p014 T7
  <c'! f' a'>4 <c' f' a'>4 <c' e' g'>2 |  % p014 T8
}

links = {
  \key c \major \time 4/4 << { g8[ c'8] b4 g8[ c'8] s4 } \\ { c4 d8[ f8] e4 <f c'>4 } >> |  % p014 T1
  g4 g,4 c8[ d8] e4 |  % p014 T2
  c8[ bes8 a8 g8] <f a>8[ <g bes>8 <f a>8 <e g>8] |  % p014 T3
  << { a8[ g8] g4 b!2 } \\ { ees4 d8[ c8] g,2 } >> |  % p014 T4
  b,4 c4 e4 f4 |  % p014 T5
  g4 g,4 c8[ d8] e4 |  % p014 T6
  <b,, b,>4 <bes,, bes,>4 <a,, a,>4 <d, d>4 |  % p014 T7
  <f,, f,>8[ <g,, g,>8 <a,, a,>8 <b,,! b,!>8] <c, c>2 |  % p014 T8
}

dynamik = { }
worteA = \lyricmode {
  \set stanza = "1." 
  "Trau" -- "rig" "seufzt" "mein" "lie" -- "ber" "Schatz," "hat" "auf's" "Händ" -- "chen" "sich" "ge" "lehnt:"  % p014 S1
  "Ahnst" "du," "ban" -- "ges" "lie" -- "bes" "Herz," __ "dass" "nicht" "lang'" "ich" "le" -- "ben" "werd'?"  % p014 S2
}
worteB = \lyricmode {
  \set stanza = "1." 
  "Gruh" -- "ti" "puh" -- "ta" "lih" -- "ga" -- \set ignoreMelismata = ##t "wi" -- _ "ꞥa" \unset ignoreMelismata "us" "ro" -- "zi" "ꞥas" "gu" -- "le" -- "dam',"  % p014 S1
  "wai" "ꞩir" -- "sni" -- "ꞥa" "pa" -- "re" -- \set ignoreMelismata = ##t "dse" -- "ji" \unset ignoreMelismata "kà" "es" "il" __ "gi" "ne" -- "dsih" -- "woꞩch'?"  % p014 S2
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
\markup { \fill-line { \italic \column { "2." "Leb' ich lange, nicht zu lang'," "Sonnenjahre leb' ich nicht," "Wässerlein und Felsenstein" "Die nur lebten Sonnenjahr." "(D....)" } \column { "2." "Dsihwoꞩch' ilgi, nezik ilg'" "Ꞩaules muhschu nedsihwoꞩch'," "Uhdentiꞥsch un akmintiꞥis" "Tee dsihwoja ꞩaules muhsch'!" } } }

\score { \unfoldRepeats \musikMidi \midi { \tempo 4 = 80 } }
