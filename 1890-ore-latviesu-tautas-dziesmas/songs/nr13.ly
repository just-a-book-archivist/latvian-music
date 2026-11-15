% Ad. Ore, Lettische Volkslieder / Latweeschu tautas dseesmas (Riga [1890]), No. 13, p. 16.
% Set it with LilyPond 2.24 and the font Charis SIL (SIL, OFL):  lilypond nr13.ly  -> PDF and MIDI.
% Assembled from the page sources checked against the print (noten/pNNN.ly); every measure
% ends with  % pNNN T<n>  = printed page and measure. Generated: correct the page sources.
\version "2.24.0"
\header {
  title = "Nr. 13"
  subtitle = "Ad. Ore, Lettische Volkslieder (Riga [1890]), S. 16"
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
  \key e \major \time 3/4 \tempo "Andante." 4 = 72 \partial 4 b'8.\p b'16 |  % p016 T1
  cis''4 b'4 fis'8 gis'8 |  % p016 T2
  a'4 gis'4 e'8. e'16 |  % p016 T3
  gis'4 fis'4 fis'8 dis'8 |  % p016 T4
  \break e'2 b'8.\f b'16 |  % p016 T5
  e''4 dis''4 gis'8. gis'16 |  % p016 T6
  cis''4 b'4 fis'8 gis'8 |  % p016 T7
  a'4 cis''4 b'8 a'8 |  % p016 T8
  gis'2 e''8.\pp e''16 |  % p016 T9
  \break e''4 dis''4 cis''8. cis''16 |  % p016 T10
  cis''4 b'8[ a'8] gis'8\mf a'8 |  % p016 T11
  cis''4 b'4 a'8 fis'8 |  % p016 T12
  e'2 \bar "|." %{dauer 2/4%}  % p016 T13
}

rechts = {
  \key e \major \time 3/4 \partial 4 << { b'4 } \\ { <e' gis'>8\p[ <dis' fis'>8] } >> |  % p016 T1
  <cis' e' cis''>4 <b e' b'>4 <cis' fis'>8[ <b e' gis'>8] |  % p016 T2
  <b dis' a'>4 <b e' gis'>4 << { e'4 } \\ { gis8[ <gis d'>8] } >> |  % p016 T3
  <cis' e' gis'>4 <ais cis' fis'>4 <fis cis' fis'>8[ <a b dis'>8] |  % p016 T4
  <gis b e'>2 <b e' gis' b'>8.\f[ <b fis' b'>16] |  % p016 T5
  << { e''4 dis''4 } \\ { <e' gis'>4 <dis' gis'>4 } >> <b dis' gis'>8.[ <b dis' gis'>16] |  % p016 T6
  <cis' e' cis''>4 <b e' b'>4 <a cis' fis'>8[ <b eis' gis'>8] |  % p016 T7
  <cis' e'! a'>4 <e' fis' cis''>4 <dis' fis' b'>8[ <b fis' a'>8] |  % p016 T8
  << { <b e' gis'>2 e''8.^\pp[ e''16] } \\ { s2 <gis' b'>8.[ <g' b'>16] } >> |  % p016 T9
  <cis' g' bes' e''>4 <dis' fis' b' dis''>4 <fis' cis''>8.[ <fis' cis''>16] |  % p016 T10
  << { cis''4 b'8[ a'8] <e' gis'>8[ <dis' a'>8] } \\ { dis'4 dis'4 b4\mf } >> |  % p016 T11
  <dis' fis' cis''>4 <e' gis' b'>4 <cis' e' a'>8[ <a dis' fis'>8] |  % p016 T12
  <gis b e'>2 %{dauer 2/4%}  % p016 T13
}

links = {
  \key e \major \time 3/4 \partial 4 e8[ fis16 gis16] |  % p016 T1
  <a, a>4 <gis, gis>4 a8[ gis8] |  % p016 T2
  <fis, fis>4 <e, e>8[ d8] cis8[ b,8] |  % p016 T3
  <ais,, ais,>4 fis,8[ gis,8] a,8[ b,8] |  % p016 T4
  e8[ b,8 gis,8 fis,8] <e, e>8.[ <dis, dis>16] |  % p016 T5
  <cis, cis>4 <b,, b,>8[ <dis, dis>8] <gis, gis>8.[ <fis, fis>16] |  % p016 T6
  <e, e>4 <gis,, gis,>4 <a,, a,>8[ <gis,, gis,>8] |  % p016 T7
  <fis,, fis,>8[ <gis,, gis,>8] <a,, a,>4 <b,, b,>8[ <dis, dis>8] |  % p016 T8
  <e, e>2 s4 |  % p016 T9
  s2 <a e'>8.[ <a dis'>16] |  % p016 T10
  << { a4 b8[ c'8] } \\ { fis4 fis4 } >> <e, e>8[ <fis, fis>8] |  % p016 T11
  <a, a>4 <gis, gis>4 <b,, b,>4 |  % p016 T12
  <e, b,>2 %{dauer 2/4%}  % p016 T13
}

dynamik = { }
worteA = \lyricmode {
  \set stanza = "1." 
  "Le" -- "be" "wohl" "muss" "ich" "dir" "sa" -- "gen," "le" -- "be" "wohl" "mein" "Va" -- "ter" --  % p016 S1
  "land!" "Manch'" "ein" "Mäd" -- "chen" "wird's" "be" -- "kla" -- "gen," "des" -- "sen" "Thür" "ich" "of" -- "fen" "fand!" "Manch" "ein"  % p016 S2
  "Mäd" -- "chen" "wird's" "be" -- "kla" -- "gen," "des" -- "sen" "Thür" "ich" "of" -- "fen" "fand!"  % p016 S3
}
worteB = \lyricmode {
  \set stanza = "1." 
  "Nu" "ar" "Dee" -- "wu" "mih" "łà" "ꞩeh" -- "ta," "kur" "es" "dsi" -- "mis" "u" -- "sau" --  % p016 S1
  "dsis," "buh" -- "ꞩi" "ma" -- "nim" "mir" -- "ꞩtot" "ꞩweh" -- "ta," "kaut" -- "ꞩchu" "tah" -- "łu" "ais" -- "gah" -- "jis," "buh" -- "ꞩi"  % p016 S2
  "ma" -- "nim" "mir" -- "ꞩtot" "ꞩweh" -- "ta," "kaut" "ꞩchu" "tah" -- "łu" "ais" "gah" -- "jis!"  % p016 S3
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
\markup { \fill-line { \italic \column { "2." "Segen wünsch' ich deinen Fluren," "Wo ich streifte keck einher;" "Such' nun meiner Wildheit Spuren" "In des Kaisers Kriegesheer." "3." "Mädchenauge mag erscheinen" "Wohl mein Leben gross und schön!" "Mädchenherze würde weinen," "Könnt' es meinen Jammer seh'n!" } \column { "2." "Wehl tew garâ apstaigaꞩchu," "Gułot no tew ꞩapꞥoschu" "Un preeksch tawàm durwim stahꞩchu" "Ꞩawus mihłus ꞩkatiꞩchu." "3." "Tur ais swaigsnem welta rodas;" "Kur top wiꞩi weenoti;" "Kas ꞩche ꞩchꞣihruꞩchees, ꞩadodas" "Mihlestibâ muhschigi." "(Ulmann.)" } } }

\score { \unfoldRepeats \musikMidi \midi { \tempo 4 = 80 } }
