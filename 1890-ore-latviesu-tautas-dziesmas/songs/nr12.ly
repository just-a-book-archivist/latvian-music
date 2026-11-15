% Ad. Ore, Lettische Volkslieder / Latweeschu tautas dseesmas (Riga [1890]), No. 12, p. 15.
% Set it with LilyPond 2.24 and the font Charis SIL (SIL, OFL):  lilypond nr12.ly  -> PDF and MIDI.
% Assembled from the page sources checked against the print (noten/pNNN.ly); every measure
% ends with  % pNNN T<n>  = printed page and measure. Generated: correct the page sources.
\version "2.24.0"
\header {
  title = "Nr. 12"
  subtitle = "Ad. Ore, Lettische Volkslieder (Riga [1890]), S. 15"
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
  \key bes \major \time 2/4 \tempo "Allegro." 4 = 120 f''8 ees''8 c''8 a'8 |  % p015 T1
  d''8 bes'8 c''16[ bes'16] a'16[ g'16] |  % p015 T2
  f'8 a'8 c''8 f''8 |  % p015 T3
  g''8 f''8 d''4 |  % p015 T4
  \break f''8 ees''8 c''8 a'8 |  % p015 T5
  d''8 bes'8 c''16[ bes'16] a'16[ g'16] |  % p015 T6
  f'8 g'8 a'8 d''16[ c''16] |  % p015 T7
  bes'8 bes'8 bes'4 \bar "|." |  % p015 T8
}

rechts = {
  \key bes \major \time 2/4 r8 <c' f' a'>8 <c' f' a'>4 |  % p015 T1
  r8 <d' f' bes'>8 <d' f' bes'>4 |  % p015 T2
  a''16[ bes''16 a''16 g''16] f''16[ ees''16 d''16 c''16] |  % p015 T3
  bes'16[ c''16 d''16 ees''16] f''16[ g''16 a''16 bes''16] |  % p015 T4
  <a'' f'''>8[ <c''' ees'''>16 <bes'' d'''>16] <a'' c'''>8[ <f'' a''>8] |  % p015 T5
  <f'' d'''>8[ <f'' bes''>8] <g'' c'''>16[ bes''16 a''16 g''16] |  % p015 T6
  a''16[ bes''16 a''16 g''16] f''16[ ees''16 d''16 c''16] |  % p015 T7
  bes'16[ c''16 bes'16 a'16] bes'4 |  % p015 T8
}

links = {
  \key bes \major \time 2/4 <f, f>4 r4 |  % p015 T1
  <bes,, bes,>4 r4 |  % p015 T2
  <f, f>8[ <a c' f'>8] <a c' f'>4 |  % p015 T3
  <bes,, bes,>8[ <f bes d'>8] <f bes d'>4 |  % p015 T4
  <f, f>8[ <a c' f'>8] <a c' f'>4 |  % p015 T5
  <bes,, bes,>8[ <f bes d'>8] <ees g c'>4 |  % p015 T6
  <f, f>8[ <a c' f'>8] <a c' f'>4 |  % p015 T7
  <bes,, bes,>8[ <f bes d'>8] <f bes d'>4 |  % p015 T8
}

dynamik = { }
worteA = \lyricmode {
  \set stanza = "1." 
  "Ritt" "bei" "Ta" -- "ge," "ritt" "bei" "Nacht" "ich," "sucht" "ein" "schö" -- "nes" "Mäg" -- "de" -- "lein,"  % p015 S1
  "kam" "an" "ei" -- "ne" "Sil" -- "ber" -- "quel" -- "le," "schö" -- "nes" "Mäd" -- "chen" "ba" -- "det" "sich."  % p015 S2
}
worteB = \lyricmode {
  \set stanza = "1." 
  "Jah" -- "ju" "dee" -- "nu," "jah" -- "ju" "nak" -- "ti" "dai" -- "łas" "mei" -- "tas" "mek" -- "le" -- "dams,"  % p015 S1
  "us" "gahj'" "wee" -- "nu" "a" -- "wo" -- "ti" -- "ꞥu," "dai" -- "ła" "mei" -- "ta" "mas" -- "ga" -- "jas."  % p015 S2
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
\markup { \fill-line { \italic \column { "2." "Grüss dich, grüss dich, schönes Mädchen," "Willst mein lieber Schatz nicht sein?" "„Dank dir, Dank dir, schmucker Knabe," "Will dein lieber Schatz ich sein!“" "3." "Male mir drei goldne Rosen," "Die mit goldner Blüthe blühn'." "Kannst du mir die Rosen malen," "Dann will ich dein Schatz auch sein." "4." "Zähle mir des Himmels Sterne," "Die dort oben nächtlich glühn;" "Kannst du mir die Sterne zählen," "Dann will ich dein Schatz auch sein." "(D...)" } \column { "2." "Labdeen, labdeen daiła meitiꞥ'," "Waj grib' mana mihłà buht?" "Paldees, paldees ꞩmukspuiꞩiti," "Gribu tawa mihłà buht." "3." "Krahꞩo man trihs selta roses," "Kas ar selta seedeem seed;" "Ja tàs manim wari krahꞩot," "Tad es gribu tawa buht." "4." "Ꞩkaiti man tàs debes swaigsnes," "Kas tur augstâs debeꞩîs!" "Ja tu man tàs wari ꞩkaitit," "Tad es gribu tawa buht." } } }

\score { \unfoldRepeats \musikMidi \midi { \tempo 4 = 80 } }
