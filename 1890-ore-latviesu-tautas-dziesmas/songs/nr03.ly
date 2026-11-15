% Ad. Ore, Lettische Volkslieder / Latweeschu tautas dseesmas (Riga [1890]), No. 3, p. 4.
% Set it with LilyPond 2.24 and the font Charis SIL (SIL, OFL):  lilypond nr03.ly  -> PDF and MIDI.
% Assembled from the page sources checked against the print (noten/pNNN.ly); every measure
% ends with  % pNNN T<n>  = printed page and measure. Generated: correct the page sources.
\version "2.24.0"
\header {
  title = "Nr. 3"
  subtitle = "Ad. Ore, Lettische Volkslieder (Riga [1890]), S. 4"
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
  \key aes \major \time 3/4 f'8\p g'8 aes'4 c''4 |  % p004 T1
  f'8 g'8 aes'4 c''4 |  % p004 T2
  f'8 f'8 c''4 bes'4 |  % p004 T3
  aes'8 g'8 f'2 |  % p004 T4
  \break f'8.\mf f'16 f''4 des''4 |  % p004 T5
  bes'8. bes'16 ees''4 c''4 |  % p004 T6
  aes'8 bes'8 c''4 bes'4 |  % p004 T7
  aes'8 aes'8 g'2 |  % p004 T8
  \break f'8.\f f'16 f''4 des''4 |  % p004 T9
  bes'8. g'16 ees''4 c''4 |  % p004 T10
  aes'8 bes'8 c''8[ f'8] des''8[ bes'8] |  % p004 T11
  aes'8^\markup { \italic "rit." } g'8 f'2 \bar "|." |  % p004 T12
}

rechts = {
  \key aes \major \time 3/4 << { f'8[ <e' g'>8] <c' f' aes'>4 <c' f' aes' c''>4 } \\ { c'4\p s2 } >> |  % p004 T1
  <aes f'>8 <bes f' g'>8 <f' aes' bes>4 <c' e' c''>4 |  % p004 T2
  <f c' f'>8[ <f c' ees'!>8] <des' f' c''>4 <des' f' bes'>4 |  % p004 T3
  <c' f' aes'>8 <bes e' g'>8 <aes c' f'>2 |  % p004 T4
  <aes des' f'>8.\mf <a ees' f'>16 <bes des' f'>4 <f' bes' des''>4 |  % p004 T5
  <ees' g' bes'>8.[ <ees' g' bes'>16] <ees' aes' ees''>4 <ees' aes' c''>4 |  % p004 T6
  <aes f' aes'>8[ <bes f' bes'>8] <c' f' c''>4 <des' g' bes'>4 |  % p004 T7
  <d' f' aes'>4 <e' g'>2 |  % p004 T8
  <aes c' f'>8.\f <aes c' f'>16 <f' aes' f''>4 <f' bes' des''>4 |  % p004 T9
  << { bes'4 <ees' aes' ees''>4 <ees' aes' c''>4 } \\ { <bes ees' g'>8.[ <bes ees' g'>16] s2 } >> |  % p004 T10
  <aes f' aes'>8 <bes f' bes'>8 <c' f' c''>4 <des' g' bes'>4 |  % p004 T11
  <c' f' aes'>8 <bes e' g'>8 <aes c' f'>2 |  % p004 T12
}

links = {
  \key aes \major \time 3/4 << { aes8[ g8] f4 <ees, ees>4 } \\ { f,2 s4 } >> |  % p004 T1
  << { <des, des>4 <c, c>4 <bes,, bes,>4 } >> |  % p004 T2
  <aes,, aes,>8 <a,, a,>8 <bes,, bes,>2 |  % p004 T3
  <c, c>4 <f, c>2 |  % p004 T4
  <des, des>8. <c, c>16 <bes,, bes,>4 <bes,, bes,>4 |  % p004 T5
  <ees, ees>8. <des, des>16 <c, c>4 <aes,, aes,>4 |  % p004 T6
  <des des,>4 <aes,, aes,>4 <bes,, bes,>4 |  % p004 T7
  <b, b,,>4 <c, c>2 |  % p004 T8
  <f, f>8. <ees, ees>16 <des, des>4 <bes,, bes,>4 |  % p004 T9
  <ees, ees>8. <des, des>16 <c, c>4 <aes,, aes,>4 |  % p004 T10
  <des, des>4 <aes,, aes,>4 <bes,, bes,>4 |  % p004 T11
  <c, c>4 <f, c>2 |  % p004 T12
}

dynamik = { }
worteA = \lyricmode {
  \set stanza = "1." 
  "Horch," "was" "sin" -- "get" "spät" "am" "A" -- "bend," "wenn" "die" "lie" -- "be" "Son" -- "ne" "fern?"  % p004 S1
  "Ar" -- "me" "Wai" -- "sen" -- "kin" -- "der" "sin" -- "gen," "fröh" -- "nend" "ih" -- "rem" "har" -- "ten" "Herrn."  % p004 S2
  "Ar" -- "me" "Wai" -- "sen" -- "kin" -- "der" "sin" -- "gen," "fröh" -- "nend" "ih" -- "rem" "har" -- "ten" "Herrn."  % p004 S3
}
worteB = \lyricmode {
  \set stanza = "1." 
  "Kas" "tee" "tah" -- "di," "kas" "dsee" -- "da" -- "ja" "bes" "ꞩau" -- "li" -- "tes" "wa" -- "ka" -- "râ?"  % p004 S1
  "Tee" "ir" "wi" -- "ꞩi" "bah" -- "ra" "behr" -- "ni," "bahr" -- "ga" "kun" -- "ga" "klau" -- "ꞩi" -- "taj',"  % p004 S2
  "Tee" "ir" "wi" -- "ꞩi" "bah" -- "ra" "behr" -- "ni," "bahr" -- "ga" "kun" -- "ga" "klau" -- "ꞩi" -- "taj'."  % p004 S3
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
\markup { \fill-line { \italic \column { "2." "Und am warmen Feuer rinnen" "Ihre Thränen voll und hell," "Bittern Brodes harte Rinde" "Netzen sie im kühlen Quell." "3." "Sonne legt zu später Stunde" "Nieder sich in's gold'ne Boot;" "Und das gold'ne Bötchen schaukelt," "Steht sie auf um's Morgenroth." "4." "Sonne, sag uns, wie so lange" "Säumst du heut' am Ruheort?" "„Arme Waisen musst' ich wärmen" "Hinter grünem Hügel dort!“" "(F. Kolberg)" } \column { "2." "Kurin' ugun', ꞩilda gaiꞩu," "Ꞩlauka gauschas aꞩaras;" "Krimta zeetu pelaw' maisi," "Awotiꞥâ mehrzedam'." "3." "Ꞩaulit' wehlu wakarâi" "Ꞩehschàs selta laiwiꞥâ;" "Rihtâ agri uslehkdama," "Atstahj laiwu lihgojot." "4." "Kam ꞩaulite, wehlu lehzi," "Kur tik ilgi kawejees!" "Ais wiꞥeemi kalniꞥeemi" "Bahra behrnus ꞩildidam'." } } }

\score { \unfoldRepeats \musikMidi \midi { \tempo 4 = 80 } }
