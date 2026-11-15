% Ad. Ore, Lettische Volkslieder / Latweeschu tautas dseesmas (Riga [1890]), No. 7, p. 8.
% Set it with LilyPond 2.24 and the font Charis SIL (SIL, OFL):  lilypond nr07.ly  -> PDF and MIDI.
% Assembled from the page sources checked against the print (noten/pNNN.ly); every measure
% ends with  % pNNN T<n>  = printed page and measure. Generated: correct the page sources.
\version "2.24.0"
\header {
  title = "Nr. 7"
  subtitle = "Ad. Ore, Lettische Volkslieder (Riga [1890]), S. 8"
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
  \key aes \major \time 3/4 \tempo "Allegretto." 4 = 108 ees''8. f''16 ees''4 c''4 |  % p008 T1
  des''8. f''16 bes'4 bes'4 |  % p008 T2
  aes'8. aes'16 des''4 des''4 |  % p008 T3
  c''8. c''16 bes'4 r4 |  % p008 T4
  \break c''8. des''16 ees''4 ees''4 |  % p008 T5
  f''8. ees''16 des''8[ c''8] bes'4 |  % p008 T6
  aes'8. c''16 ees''4 ees''4 |  % p008 T7
  des''8 des''8 c''4 r4 |  % p008 T8
  R2. \bar "|." |  % p008 T9
}

rechts = {
  \key aes \major \time 3/4 << { ees''8.[ f''16] ees''4 c''4 } \\ { aes'4 aes'8[ ees'8] aes'8[ ees'8] } >> |  % p008 T1
  << { des''8.[ f''16] bes'4 bes'4 } \\ { g'4 ees'8[ bes8] ees'8[ bes8] } >> |  % p008 T2
  << { aes'4 des''4 des''4 } \\ { ees'16[ c'16 des'16 ees'16] f'8[ bes8] ees'8[ bes8] } >> |  % p008 T3
  << { c''4 bes'2 } \\ { ees'16[ c'16 ees'16 aes'16] ees'8[ bes8] <ees' g'>8[ bes8] } >> |  % p008 T4
  << { c''8.[ des''16] ees''4 ees''4 } \\ { aes'4 aes'8[ ees'8] g'8[ ees'8] } >> |  % p008 T5
  << { f''8.[ ees''16] <f' des''>8[ <ees' c''>8] bes'4 } \\ { a'8.[ f'16] s4 des'16[ c'16 des'16 f'16] } >> |  % p008 T6
  << { aes'16[ g'16 aes'16 c''16] ees''4\arpeggio ees''4\arpeggio } \\ { ees'4 g'8\arpeggio[ ees'8] aes'8\arpeggio[ ees'8] } >> |  % p008 T7
  << { des''4\arpeggio <ees' aes' c''>2~ } \\ { g'16\arpeggio[ ees'16 f'16 g'16] s2 } >> |  % p008 T8
  << { <aes' c''>2 } \\ { <c' ees'>2 } >> r4 |  % p008 T9
}

links = {
  \key aes \major \time 3/4 << { c'16[ des'16 c'16 des'16] s2 } \\ { aes4 <aes c'>4 aes,4 } >> |  % p008 T1
  << { bes16[ c'16 bes16 des'16] s2 } \\ { ees4 <ees g>4 <des g>4 } >> |  % p008 T2
  <c aes>4 <bes, aes>4 <bes, g>4 |  % p008 T3
  << { aes8[ ees8] } \\ { aes,4 } >> <ees g>4 <ees, ees>4 |  % p008 T4
  << { ees'16[ f'16 ees'16 f'16] s4 bes4 } \\ { aes4 <aes c'>4 ees8[ g8] } >> |  % p008 T5
  << { c'16[ des'16 c'16 a16] bes8[ a8] bes4 } \\ { f4 bes,4 bes,16[ a,16 bes,16 des16] } >> |  % p008 T6
  << { c'16[ bes16 c'16 ees'16] des'4\arpeggio c'4\arpeggio } \\ { ees4 ees4\arpeggio ees4\arpeggio } >> |  % p008 T7
  << { bes4\arpeggio aes2 } \\ { ees8\arpeggio[ ees,8] aes,16[ g,16 aes,16 c16] ees8[ g8] } >> |  % p008 T8
  << { aes2 } \\ { aes,2 } >> r4 |  % p008 T9
}

dynamik = { }
worteA = \lyricmode {
  \set stanza = "1." 
  "Sah" "am" "schö" -- "nen" "Mee" -- "res" -- "stran" -- "de" "drei" "der" "Fi" -- "scher" "mü" -- "ssig" "stehn',"  % p008 S1
  "seid" -- "ne" "Ne" -- "tze," "Sil" -- "ber" -- "se" -- "gel," "gol" -- "den" "war" "das" "Boot" "zu" "sehn'."  % p008 S2
}
worteB = \lyricmode {
  \set stanza = "1." 
  "Es" "re" -- "dse" -- "ju" "juh" -- "ri" -- "ꞥâ" -- "i" "trihs" "swej" -- "nee" -- "kus" "swe" -- "jo" -- "jam,"  % p008 S1
  "sih" -- "da" "tih" -- "klis," "sel" -- "ta" "lai" -- "wa," "si" -- "dra" -- "bi" -- "ꞥa" "seh" -- "ꞡe" -- "lit's!"  % p008 S2
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
\markup { \fill-line { \italic \column { "2." "Ach, ihr lieben guten Fischer," "Seht ihr nicht mein Brüderlein?" "„Sag' uns, liebes gutes Mädchen," "Wie sah aus der Bruder dein?“" "3." "Schmucker Knab' mit rothen Wangen," "Goldne Locken unter'm Hut!" "„Ach du liebes gutes Mädchen," "Der im Meeresgrunde ruht!“" "4." "Mit den Locken spielen Wellen," "Meersand reibt die Wangen wund!" "Ach ihr lieben guten Fischer," "Fischet mir ihn aus dem Grund!" "5." "„Sag' du liebes gutes Mädchen," "Wie viel giebst du für den Zug?“" "Einem geb' ich weisses Hemde" "Und dem andern seidnes Tuch." "6." "Doch dem Dritten als dem Jüngsten" "Will ich selbst mich geben hin," "Will ihm sein, so lang ich lebe," "Seiner Segel Wäscherin!" "7." "Schäumt auch weiss die Meereswoge," "Weisser glänzt das Segel hell," "Als die Fischer fröhlich singend" "Gleiten über's Wasser schnell." "(Ulmann)" } \column { "2." "Waj godigi swejneeziꞥi," "Redsej't manu bahleliꞥ'?" "Ai godiga mahtes meita," "Kahds bij tawis bahleliꞥs?" "3." "Ꞩmuks puisitis baltu waigu," "Dseltaneemi matiꞥeem." "Ai godiga mahtes meita," "Tahds guł, juhras dibinâ." "4." "Ꞩmiltis grausch ta baltus waigus," "Uhdens matus plehwina." "Ai godigi swejneeziꞥi," "Isswejojeet maliꞥâ." "5." "Ai godiga mahtes meita," "Zik makꞩaꞩ' par iswilkum'?" "Weenam doꞩchu baltu kreklu," "Otram sihschu lakatiꞥ'." "6." "Trejascham tam jaunakajam," "Pati ꞩewi padoꞩchos;" "Pati ꞩewi padoꞩchoꞩi," "Sehꞡeliꞩchu masgataj'!" "7." "Lai gan baltas uhdens putas," "Wehl jo baltak' sehꞡelits'." "Usleek baltas sehꞡelites," "Eet laiwiꞥa mirdsedam'." } } }

\score { \unfoldRepeats \musikMidi \midi { \tempo 4 = 80 } }
