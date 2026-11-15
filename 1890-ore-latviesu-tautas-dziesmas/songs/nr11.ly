% Ad. Ore, Lettische Volkslieder / Latweeschu tautas dseesmas (Riga [1890]), No. 11, p. 14.
% Set it with LilyPond 2.24 and the font Charis SIL (SIL, OFL):  lilypond nr11.ly  -> PDF and MIDI.
% Assembled from the page sources checked against the print (noten/pNNN.ly); every measure
% ends with  % pNNN T<n>  = printed page and measure. Generated: correct the page sources.
\version "2.24.0"
\header {
  title = "Nr. 11"
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
  \key aes \major \time 2/4 aes'8 c''8 ees''8 c''8 |  % p014 T9
  des''8 f'8 f'8 bes'8 |  % p014 T10
  aes'8 g'8 f'8 ees'8 |  % p014 T11
  \break aes'8 bes'8 c''4 |  % p014 T12
  aes'8 c''8 ees''8 c''8 |  % p014 T13
  g''8 f''8 ees''8 des''8 |  % p014 T14
  c''8 bes'8 aes'8 bes'8 |  % p014 T15
  ees''8 g'8 aes'8 aes'8 \bar "|." |  % p014 T16
}

rechts = {
  \key aes \major \time 2/4 ees''16[ ees'16 aes'16 bes'16] c''16[ ees'16 aes'16 c''16] |  % p014 T9
  bes'16[ f'16 bes'16 c''16] des''16[ c''16 bes'16 f'16] |  % p014 T10
  aes'16[ ees'16 des'16 g'16] f'16[ c'16 des'16 ees'16] |  % p014 T11
  aes'16[ ees'16 aes'16 bes'16] c''16[ ees'16 aes'16 c''16] |  % p014 T12
  r16 ees'16[ aes'16 bes'16] c''16[ ees'16 aes'16 c''16] |  % p014 T13
  r16 f'16[ bes'16 des''16] g''16[ f''16 des''16 bes'16] |  % p014 T14
  aes'16[ ees'16 des'16 g'16] f'16[ c'16 des'16 ees'16] |  % p014 T15
  c''16[ ees'16 des'16 g'16] <c' aes'>4 |  % p014 T16
}

links = {
  \key aes \major \time 2/4 <aes,, aes,>8[ <ees aes c'>8] <ees aes c'>4 |  % p014 T9
  <des, des>8[ <des f bes>8] <des f bes>4 |  % p014 T10
  << { c'8[ bes8 aes8 g8] } \\ { ees2 } >> |  % p014 T11
  << { c8[ ees8 aes8 ees8] } \\ { c2 } >> |  % p014 T12
  <aes,, aes,>8[ <ees aes c'>8] <ees aes c'>4 |  % p014 T13
  <des, des>8[ <des f bes>8] <des f bes>4 |  % p014 T14
  << { c'8[ bes8 aes8 g8] } \\ { ees2 } >> |  % p014 T15
  ees,8[ <ees bes>8] <aes, aes>4 |  % p014 T16
}

dynamik = { }
worteA = \lyricmode {
  \set stanza = "1." 
  "Zwei" "asch" "grau" -- "e" "fei" -- "ne" "Röss" -- "lein" "tum" -- "meln" "auf" "der"  % p014 S3
  "Wie" -- "se" "sich," "gold" -- "ge" -- "sat" -- "telt" "ist" "das" "ei" -- "ne," "gold" -- "ge" -- "sat" -- "telt" "ist" "das" "zweite!" _  % p014 S4
}
worteB = \lyricmode {
  \set stanza = "1." 
  "Di" -- "wi" "ꞩir" -- "mi" "ku" -- "me" -- "li" -- "ꞥi" "ais" "ap" -- "lo" -- "ka"  % p014 S3
  "ꞩpeh" -- "le" -- "jas," __ "wee" -- "nam" "bi" -- "ja" "sel" -- "ta" "ꞩeg" -- "li" "ot" -- "ram" "sel" -- "ta" "ee" -- "mauk" -- "ti" _  % p014 S4
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
\markup { \fill-line { \italic \column { "2." "Zwei aschgraue feine Rösslein" "Tummeln auf der Wiese sich," "Lange hab' ich nachgedacht," "Welches ich besteigen will." "(D....)" } \column { "2." "Diwi ꞩirmi kumeliꞥi" "Ais aploka ꞩpehlejas" "To jau biju nodomaj'ꞩi" "Kuram kahpꞩchu mugurâ." } } }

\score { \unfoldRepeats \musikMidi \midi { \tempo 4 = 80 } }
