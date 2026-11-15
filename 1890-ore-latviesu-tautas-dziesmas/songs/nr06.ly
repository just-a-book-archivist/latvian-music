% Ad. Ore, Lettische Volkslieder / Latweeschu tautas dseesmas (Riga [1890]), No. 6, p. 7.
% Set it with LilyPond 2.24 and the font Charis SIL (SIL, OFL):  lilypond nr06.ly  -> PDF and MIDI.
% Assembled from the page sources checked against the print (noten/pNNN.ly); every measure
% ends with  % pNNN T<n>  = printed page and measure. Generated: correct the page sources.
\version "2.24.0"
\header {
  title = "Nr. 6"
  subtitle = "Ad. Ore, Lettische Volkslieder (Riga [1890]), S. 7"
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
  \key ees \major \time 2/4 \partial 8 g'8\mf |  % p007 T1
  g'8 g'8 ees''8[ d''8] |  % p007 T2
  c''8\fermata ees''8\p d''8 c''8 |  % p007 T3
  bes'4 g'8\mf g'8 |  % p007 T4
  c''8 g'8 aes'16[ g'16] f'8 |  % p007 T5
  c''4 bes'8 bes'8 |  % p007 T6
  c''8 g'8 aes'16[ g'16] f'8 |  % p007 T7
  g'4\fermata r8 \bar "|." %{dauer 3/8%}  % p007 T8
}

rechts = {
  \key ees \major \time 2/4 \partial 8 <g d' f' g'>8 |  % p007 T1
  << { <g c' ees' g'>8[ <g b f' g'>8] ees''8[ d''8] } \\ { s4 <f' g'>4 } >> |  % p007 T2
  << { <aes' c''>8\fermata <aes' ees''>8^\p[ d''8 c''8] } \\ { ees'8 ees'4~ ees'8 } >> |  % p007 T3
  <bes ees' bes'>4 <bes ees' g'>8^\f <g d' g'>8 |  % p007 T4
  <c' ees' c''>8[ <g d' g'>8] << { aes'16[ g'16 f'8] } \\ { <aes c'>8[ <aes c'>8] } >> |  % p007 T5
  <c' ees' c''>4 <bes ees' bes'>8 <ees' g' bes'>8 |  % p007 T6
  <c' g' c''>8[ <g d' g'>8] <aes c' aes'>8[ <aes d' f'>8] |  % p007 T7
  <g bes ees' g'>4 r8 %{dauer 3/8%}  % p007 T8
}

links = {
  \key ees \major \time 2/4 \partial 8 <b,, b,>8 |  % p007 T1
  <c, c>8[ <d, d>8] <g, d b>4 |  % p007 T2
  << { s8 c'8[ bes!8 aes8] } \\ { <aes, aes>8 ees4. } >> |  % p007 T3
  << { g8[( f8] ees8) } \\ { ees4 s8 } >> <b,, b,>8 |  % p007 T4
  <c, c>8[ <bes,,! bes,!>8] <f, f>8[ <aes, f>8] |  % p007 T5
  <aes, aes>4 <g, g>4 |  % p007 T6
  <ees, ees>8[ <bes,, bes,>8] <f, f>8[ <bes,, bes,>8] |  % p007 T7
  <ees, ees>4 r8 %{dauer 3/8%}  % p007 T8
}

dynamik = {
  \partial 8 s8\mf |  % p007 T1
  s2 |  % p007 T2
  s2 |  % p007 T3
  s2 |  % p007 T4
  s2 |  % p007 T5
  s2 |  % p007 T6
  s2 |  % p007 T7
  s4. %{dauer 3/8%}  % p007 T8
}

worteA = \lyricmode {
  \set stanza = "1." 
  "Ei" "Mägdlein" _ "hol" -- "de" "mit" "Haar" "von" "Golde," _ "wo" "pflücktet" _ "ihr" "die" "Rosen," _ "wo" "wandet" _ "ihr" "den" "Kranz?"  % p007 S1
}
worteB = \lyricmode {
  \set stanza = "1." 
  "Ai" "mei" -- "te" -- "ni" -- "tes," "ai" "sel" -- "te" -- "ni" -- "tes," "kur" "pluh" -- "zat" "sahrtàs" _ "roses," _ "kur" "pi" -- "nat" "waina" -- _ "dsiꞥ'?"  % p007 S1
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
\markup { \fill-line { \italic \column { "2." "„In Moskau fanden," "In Moskau banden" "Wir uns die Rosenkränze," "In Danzig welkten sie!“" "3." "Sagt, ob ihr kennet," "Sagt, wie ihr nennet" "Wohl unter hundert Trinkern," "Mein eigen Väterlein?" "4." "Ein silbern Fässchen," "Demanten Gläschen," "Das ist mein guter Vater," "Ein grosser Trinker ist's!" "5." "Ei Mägdlein holde," "Mit Haar von Golde," "Wo pflücktet ihr die Rosen," "Wo wandet ihr den Kranz?" "6." "Sagt, ob ihr kennet," "Sagt, wie ihr nennet" "Von hundert Spinnerinnen" "Mein eigen Mütterlein?" "7." "Ein silbern Rädchen," "Demanten Fädchen," "Das ist meine Mutter" "Die grosse Spinnerin!" "8." "Ei Mägdlein holde," "Mit Haar von Golde," "Wo pflücktet ihr die Rosen," "Wo wandet ihr den Kranz?" "9." "Sagt, ob ihr kennet," "Sagt, wie ihr nennet" "Von hundert Weberinnen" "Mein eigen Schwesterlein?" "10." "Silberner Webstuhl," "Demantne Webspul," "Das ist meine liebe Schwester," "Die grosse Weberin!" "(Ulmann.)" } \column { "2." "Maꞩkawâ pluhzam," "Maꞩkawâ pinam," "Danzigâ nowalkajam," "Danzigâ nowalkaj'." "3." "Wai juhs gan pasihstat" "Man' ihsto tehwu!" "Par ꞩimteem dsehrajeemi" "Par ꞩimteem dsehrajeem?" "4." "Ꞩidraba glahse" "Dimanta stopiꞥsch," "Tas bij mans ihstais tehtiꞥs," "Tas bij leels dsehrajiꞥs." "5." "Ai meitenites," "Ai seltenites," "Kur pluhzat sahrtàs roses," "Kur pinat wainadsiꞥ'?" "6." "Wai juhs gan pasihstat" "Man' ihsto mahti?" "Par ꞩimtàm wehrpejiꞥàm," "Par ꞩimtàm wehrpejàm." "7." "Ꞩidraba ratiꞥs," "Dimanta ꞩpole," "Ta bij mana mihłà mahte" "Ta bij leelwehrpejiꞥ'." "8." "Ai meitenites," "Ai seltenites," "Kur pluhzat ꞩahrtàs roses," "Kur pinat wainadsin'?" "9." "Wai juhs gan pasihstat" "Man' ihsto mahsu." "Par ꞩimtàm audejiꞥàm," "Par ꞩimtàm audejàm?" "10." "Ꞩidraba stelles," "Dimanta ꞣeme" "Ta bij man', ihstà mahꞩa," "Ta bij leel audejiꞥ'." } } }

\score { \unfoldRepeats \musikMidi \midi { \tempo 4 = 80 } }
