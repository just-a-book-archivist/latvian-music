% Ad. Ore, Lettische Volkslieder / Latweeschu tautas dseesmas (Riga [1890]), No. 1, p. 2.
% Set it with LilyPond 2.24 and the font Charis SIL (SIL, OFL):  lilypond nr01.ly  -> PDF and MIDI.
% Assembled from the page sources checked against the print (noten/pNNN.ly); every measure
% ends with  % pNNN T<n>  = printed page and measure. Generated: correct the page sources.
\version "2.24.0"
\header {
  title = "Nr. 1"
  subtitle = "Ad. Ore, Lettische Volkslieder (Riga [1890]), S. 2"
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
  \key d \major \time 2/4 \tempo "Allegro." 4 = 120 d'8\p fis'8 a'8 a'8 |  % p002 T1
  d''8 a'8 fis'8 a'8 |  % p002 T2
  a'8 g'8 e'8 g'8 |  % p002 T3
  fis'8. e'16 d'4 |  % p002 T4
  \break d'8\mf fis'8 a'8\< a'8 |  % p002 T5
  d''8 d''8 d''8 d''8 |  % p002 T6
  e''8.\f d''16 cis''8 b'8 |  % p002 T7
  a'8 cis''8 d''4 \bar "|." |  % p002 T8
}

rechts = {
  \key d \major \time 2/4 d'8\p[ <d' fis'>8 <d' a'>8 <fis' a'>8] |  % p002 T1
  <fis' d''>8[ <fis' a'>8 <d' fis'>8 <fis' a'>8] |  % p002 T2
  <a' e'>8[ <e' g'>8 <cis' e'>8 <a cis' g'>8] |  % p002 T3
  <a d' fis'>8.[ <e' cis'>16] <d' a>4 |  % p002 T4
  <a d'>8[ <a d' fis'>8 <b e' a'>8 <d' fis' a'>8] |  % p002 T5
  << { d''2 } \\ { <d' g' b'>8[ <d' fis' c''>8 <d' g' b'>8 <d' a'>8] } >> |  % p002 T6
  <d'' e' g'>8.^\f[ <e' g' d''>16 <e' g' cis''>8 <e' g' b'>8] |  % p002 T7
  <e' g' a'>8 <e' g' cis''>8 <d'' fis' d'>4 |  % p002 T8
}

links = {
  \key d \major \time 2/4 d,8[ a,8 fis,8 a,8] |  % p002 T1
  d,8[ d8 a,8 d8] |  % p002 T2
  cis8[ a,8 a8 a,8] |  % p002 T3
  d8[ a,8 fis,8 d,8] |  % p002 T4
  fis8[ d8 cis8 c8] |  % p002 T5
  <b, b>8[ <a, a>8 <g, g>8 <fis, fis>8] |  % p002 T6
  e,8[ e8 a,8 e8] |  % p002 T7
  cis8 a,8 <d, d>4 |  % p002 T8
}

dynamik = { }
worteA = \lyricmode {
  \set stanza = "1." 
  "Schaukle," _ "Na" -- "chen," "leis" "und" "tra" -- "ge" "mich" "zu" "Nach" -- "bars" "grü" -- "nem" "Strand;"  % p002 S1
  "we" -- "ben" "dort" "drei" "schmu" -- "cke" "Töch" -- "ter" "Se" -- "gel" "mit" "der" "wei" -- "ssen" "Hand."  % p002 S2
}
worteB = \lyricmode {
  \set stanza = "1." 
  "Lih" -- "go" "lai" -- "wa" "us" "uh" -- "de" -- "ꞥa," "us" "a" -- "ra" -- "ja" "mei" -- "ti" -- "ꞥam,"  % p002 S1
  "a" -- "ra" -- "jam" "ir" "skai" -- "stas" "mei" -- "tas" "seh" -- "ge" -- "li" -- "ꞩchu" "au" -- "de" -- "jiꞥs'."  % p002 S2
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
\markup { \fill-line { \italic \column { "2." "Strickt die eine, spinnt die andre," "Feiner doch die dritte stickt;" "Mütterlein, das Schätzchen lass mir," "Das mit bunter Seide stickt!" "3." "Wird das Liebchen nicht mein Bräutchen," "Sterb' vor Kummer ich und Gram;" "Ach, wo wollt ihr mich begraben," "Wenn der Schmerz mein Leben nahm? —" "4." "Dort im schönen Rosengärtchen" "Ward er tief in's Grab gelegt," "Wo die schattenreiche Linde" "Neun belaubte Arme trägt." "5." "Jeden Sonntag nahten Mädchen," "Flochten Kränzlein im Verein," "Gingen mit den grünen Kränzen" "Zur Marienkirche ein." "6." "Weinend frug die heil'ge Mutter:" "„Mädchen, sagt, woher der Kranz?“" "„Gaben theures Geld in Riga," "Goldschmied gab ihm schönen Glanz.“" "7." "„Lüget nicht, ihr eitlen Mädchen!" "Mahnt euch nicht des Knaben Herz?" "Mahnt euch nicht sein junges Leben," "Hingeschwunden still im Schmerz?“" "(F. Kolberg)" } \column { "2." "Weena ada, otra wehrpa" "Treꞩchà raksta sihdautiꞥ'," "Dod mahmiꞥa to meitiꞥu," "Kura raksta sihdautiꞥ'!" "3." "Ja nedoꞩi tàs meitiꞥas," "Es nomirꞩchu schehlabâs;" "Kur juhs mani glabaꞩeeti" "Schehlabâs nomiruꞩchu?" "4." "Tur mehs tewi glabaꞩimi" "Ꞩkaistâ roschu dahrsiꞥâ." "Tur isauga kupla leepa" "Dewiꞥeemi schubureem." "5." "Ik ꞩwehtdeenas meitas nahza" "Wainadsiꞥu darinat," "Nowijuꞩchas wainadsiꞥus" "Aiseet Mahras basnizâ." "6." "Mahra prasa raudadama:" "„Kur meitiꞥa tahdu ꞥehm'?“" "„Rigâ pirku, naudu dewa" "Wahzsemeî kaldinaj'!“" "7." "„Ko juhs, meitas melojati!" "Ta ir puiꞩcha dwehꞩelit'," "Ta ir puiꞩcha dwehꞩelite" "Schehlabâs nomiruꞩcha!“" } } }

\score { \unfoldRepeats \musikMidi \midi { \tempo 4 = 80 } }
