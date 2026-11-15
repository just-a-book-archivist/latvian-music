% Ad. Ore, Lettische Volkslieder / Latweeschu tautas dseesmas (Riga [1890]), No. 8, p. 9.
% Set it with LilyPond 2.24 and the font Charis SIL (SIL, OFL):  lilypond nr08.ly  -> PDF and MIDI.
% Assembled from the page sources checked against the print (noten/pNNN.ly); every measure
% ends with  % pNNN T<n>  = printed page and measure. Generated: correct the page sources.
\version "2.24.0"
\header {
  title = "Nr. 8"
  subtitle = "Ad. Ore, Lettische Volkslieder (Riga [1890]), S. 9"
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
  \key c \major \time 2/4 \tempo "Andante." 4 = 72 R2 |  % p009 T1
  R2 \bar "||" |  % p009 T2
  e''8. d''16 e''8 e''8 |  % p009 T3
  d''8 c''8 b'8 d''8 |  % p009 T4
  c''8 b'8 c''8 a'8 |  % p009 T5
  b'8 b'8 e'4 |  % p009 T6
  \break a'8. gis'16 a'8 c''8 |  % p009 T7
  b'8 a'8 g'!8 e'8 |  % p009 T8
  a'8 g'8 a'8 f'8 |  % p009 T9
  e'8 e'8 e'4 \bar "|." |  % p009 T10
}

rechts = {
  \key c \major \time 2/4 <e' a' c''>8.[ <d' gis' b'>16] <e' a' e''>8[ <f' b' d''>8] |  % p009 T1
  << { <a' c''>4 <gis' b'>4 } \\ { e'2 } >> |  % p009 T2
  e''16[ g'!16 c''16 d''16] <g' e''>8[ <g' c''>8] |  % p009 T3
  d''16[ f'16 c''16 e'16] <d' b'>8[ <e' d''>8] |  % p009 T4
  c''16[ e'16 b'16 d'16] <e' c''>8[ <e' a'>8] |  % p009 T5
  << { b'2 } \\ { dis'4 e'4 } >> |  % p009 T6
  a'16[ e'16 d'16 gis'16] << { a'8[ <a' c''>8] } \\ { e'4 } >> |  % p009 T7
  <d' b'>8[ <c' a'>8 <b g'!>8 <c' e'>8] |  % p009 T8
  << { a'4 a'4 } \\ { <c' f'>8[ <cis' g'>8 <a f'>8 <bes d' f'>8] } >> |  % p009 T9
  << { e'2 } \\ { <b! d'>8[ <a c'>8] <gis b>4 } >> |  % p009 T10
}

links = {
  \key c \major \time 2/4 <a,, a,>8[ <b,, b,>8] <c, c>8[ <d, d>8] |  % p009 T1
  <e, e>2 |  % p009 T2
  <c, c>4~ c16[ d16 e16 f16] |  % p009 T3
  g4 gis16[ e16 fis16 gis16] |  % p009 T4
  a4~ a16[ b16 c'8] |  % p009 T5
  << { b8[ a8] gis4 } \\ { b,4 e8[ d8] } >> |  % p009 T6
  << { a8[ b8] c'16[ b16 a16 g16] } \\ { c8[ b,8] a,4 } >> |  % p009 T7
  << { f4 s4 } \\ { d16[ e16 f8] e16[ d16 c16 g16] } >> |  % p009 T8
  <f, f>8[ <e, e>8] << { d4 } \\ { d,16[ e,16 f,16 g,16] } >> |  % p009 T9
  gis,8_\markup { "8" }[ a,8_\markup { "8" }] e,4_\markup { "8" } |  % p009 T10
}

dynamik = { }
worteA = \lyricmode {
  \set stanza = "1." 
  "Ach" "wie" "thut" "mir" "weh" "mein" "Köpfchen," _ "ach" "wie" "thut" "es" "schreck" -- "lich" "weh!"  % p009 S1
  "Lass" "mich" "Mut" -- "ter;" "lie" -- "be" "Mut" -- "ter," "dass" "ich" "drau" -- "ssen" "mich" "er" -- "geh!"  % p009 S2
}
worteB = \lyricmode {
  \set stanza = "1." 
  "Ai," "gal" -- "wi" -- "ꞥa," "man" "gal" "wi" -- "ꞥa," "man" "gal" "wi" -- "ꞥa" "gau" -- "schi" "ꞩahp!"  % p009 S1
  "Ma" -- "miꞥ" "mih" -- "łà," "ma" "miꞥ" "jau" -- "kà," "laid'" "man" "druꞩ" -- "ku" "pa" -- "stai" -- "gat!"  % p009 S2
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
\markup { \fill-line { \italic \column { "2." "Lass mich dort spazieren gehen," "Wo das Meer am Fels sich bricht!" "„Mädchen, liebes schönes Mädchen," "Nein, ich lass allein dich nicht.“" "3." "Willst du nicht die Brüder wecken?" "Sag', sie sollen mit dir hin!" "Stolz sind meine Brüder worden," "Und hochmüthig ist ihr Sinn." "4." "Schossen alle lieben Vögel," "Wo das Meer am Fels sich bricht," "Bunte Hühner, rasche Möven," "Schonten gelbe Meischen nicht!" "5." "Wohl war gut der Bretternachen," "Tief ging er auf Meeresgrund," "Welle spielt mit meinen Haaren." "Meersand reibt die Wangen wund." "6." "Und die gute liebe Mutter" "Weinend blickt in's Meer hinab:" "Hier schläft meine Herzensfreude," "Die ich einst gewieget hab'." "(Ulmann.)" } \column { "2." "Laid' man druꞩziꞥ pastaigati" "Pa teem juhras lihziꞩcheem!" "Meitiꞥ' mihłà, meitiꞥ' jaukà," "Es tew weenas nelaidiꞩch'!" "3." "Zeli ꞩawus brahłus augꞩchâ," "Tee gan war tew lihdsi eet!" "Mani brahłi wiꞩai lepni," "Wiꞩai gresni palikuꞩch'!" "4." "Wiꞩus putnus noschahwuꞩchi," "Kas dseed juhras lihziꞩchôs:" "Raibas irbes, teteriꞩchus," "Dseltanaꞩi zeelawas." "5." "Dehlu laiwa gan bij laba" "Gulet juhras dibinâ," "Ꞩmiltis mans waigus grausa," "Uhdens matus plehwina." "6." "Mahmiꞥ mihłà, mahmiꞥ jaukà," "Eet gar malu raudadam':" "Te nu guł, mans ꞩirschu preeks," "Te mans mihłais auklejums." } } }

\score { \unfoldRepeats \musikMidi \midi { \tempo 4 = 80 } }
