% Ad. Ore, Lettische Volkslieder / Latweeschu tautas dseesmas (Riga [1890]), No. 9, p. 10–13.
% Set it with LilyPond 2.24 and the font Charis SIL (SIL, OFL):  lilypond nr09.ly  -> PDF and MIDI.
% Assembled from the page sources checked against the print (noten/pNNN.ly); every measure
% ends with  % pNNN T<n>  = printed page and measure. Generated: correct the page sources.
\version "2.24.0"
\header {
  title = "Nr. 9"
  subtitle = "Ad. Ore, Lettische Volkslieder (Riga [1890]), S. 10–13"
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
  \key ees \major \time 2/4 \tempo "Andante." 4 = 72 c''8\f c''8 g''8 f''8 |  % p010 T1
  g''8 ees''8 d''8 c''8 |  % p010 T2
  ees''4 d''4 |  % p010 T3
  ees''4 g''4 |  % p010 T4
  \break f''8 f''8 f''8 f''8 |  % p010 T5
  g''8 ees''8 d''8 c''8 |  % p010 T6
  ees''4 d''4 |  % p010 T7
  ees''4 f''4 |  % p010 T8
  g''8 f''8 f''8 f''8 |  % p010 T9
  \break g''8 ees''8 d''8 c''8 |  % p010 T10
  ees''2 |  % p010 T11
  d''2\fermata \bar ":|." |  % p010 T12
  \key g \major d''8\p d''8 d''8 d''8 |  % p010 T13
  d''8 c''8 b'8 c''8 |  % p010 T14
  \break d''4 b'4 |  % p011 T1
  c''4 b'4 |  % p011 T2
  d''8 d''8 d''8 d''8 |  % p011 T3
  d''8 c''8 b'8 c''8 |  % p011 T4
  d''4 b'4 |  % p011 T5
  \break c''4 b'4 |  % p011 T6
  c''8 c''8 d''8 d''8 |  % p011 T7
  e''8 c''8 b'8 c''8 |  % p011 T8
  d''4 b'4 |  % p011 T9
  \break c''4 b'4 |  % p011 T10
  d''8 d''8 e''8 e''8 |  % p011 T11
  f''8 d''8 cis''8 d''8 |  % p011 T12
  e''4( d''4) |  % p011 T13
  g''2 \bar ":|." |  % p011 T14
  \break \key ees \major c''8\f ees''8 g''8 f''8 |  % p012 T1
  g''8 ees''8 d''8 c''8 |  % p012 T2
  ees''4 aes''4 |  % p012 T3
  g''4 g''4 |  % p012 T4
  b'8\p c''8 d''8 b'8 |  % p012 T5
  \break c''8 d''8 ees''8 c''8 |  % p012 T6
  d''4 g''4 |  % p012 T7
  ees''4 c''4 |  % p012 T8
  c''8\f c''8 aes''8 aes''8 |  % p012 T9
  g''8 g''8 f''8 f''8 |  % p012 T10
  \break ees''2 |  % p012 T11
  d''2 \bar ":|." |  % p012 T12
  \key c \major c''8 c''8 e''8 e''8 |  % p012 T13
  g''8 g''8 e''8 c''8 |  % p012 T14
  f''4 a''4 |  % p012 T15
  \break a''4 g''4 |  % p013 T1
  g''8 g''8 f''8 f''8 |  % p013 T2
  e''8 d''8 c''8 d''8 |  % p013 T3
  e''4 d''4 |  % p013 T4
  d''4 c''4 |  % p013 T5
  \break g''8^\markup { \italic "rit." } g''8 f''8 f''8 |  % p013 T6
  e''8 d''8 c''8 d''8 |  % p013 T7
  e''4 d''4 |  % p013 T8
  d''4 c''4 \bar "|." |  % p013 T9
}

rechts = {
  \key ees \major \time 2/4 c'8\f[ c'8 g'8 f'8] |  % p010 T1
  g'8[ ees'8 d'8 c'8] |  % p010 T2
  <g' c'' ees''>4 <g' b' d''>4 |  % p010 T3
  <g' c'' ees''>4 <g' bes'! g''>4 |  % p010 T4
  <bes' d'' f''>8[ <bes' d'' f''>8 <bes' d'' f''>8 <bes' d'' f''>8] |  % p010 T5
  <g' bes' ees'' g''>8[ ees''8 d''8 c''8] |  % p010 T6
  <g' c'' ees''>4 <g' b' d''>4 |  % p010 T7
  <g' c'' ees''>4 <bes'! d'' f''>4 |  % p010 T8
  <g' b' d'' g''>8[ <bes' d'' f''>8 <a' ees'' f''>8 <bes' d'' f''>8] |  % p010 T9
  <bes' ees'' g''>8[ ees''8 d''8 c''8] |  % p010 T10
  <g' c'' ees''>2 |  % p010 T11
  <g' b' d''>2 |  % p010 T12
  \key g \major <b' d''>8\p[ <b' d''>8 <b' d''>8 <b' d''>8] |  % p010 T13
  <b' d''>8[ <a' c''>8 <g' b'>8 <a' c''>8] |  % p010 T14
  <d' b' d''>4 <d' g' b'>4 |  % p011 T1
  <d' a' c''>4 <d' g' b'>4 |  % p011 T2
  <b' d''>8[ <b' d''>8 <b' d''>8 <b' d''>8] |  % p011 T3
  <b' d''>8[ <a' c''>8 <gis' b'>8 <a' c''>8] |  % p011 T4
  <e' gis' d''>4 <e' gis' b'>4 |  % p011 T5
  <e' a' c''>4 <e' gis' b'>4 |  % p011 T6
  <e' c''>8[ <e' c''>8 <f' d''>8 <f' d''>8] |  % p011 T7
  <g' e''>8[ <e' c''>8 <d' b'>8 <e' c''>8] |  % p011 T8
  <d' b' d''>4 <d' g' b'>4 |  % p011 T9
  <d' a' c''>4 <d' g' b'>4 |  % p011 T10
  <g' b' d''>8[ <g' b' d''>8 <g' cis'' e''>8 <g' cis'' e''>8] |  % p011 T11
  <fis' a' f''>8[ <fis' d''>8 <e' cis''>8 <fis' d''>8] |  % p011 T12
  << { e''4 d''4 } \\ { g'2 } >> |  % p011 T13
  << { g''2 } \\ { b'2 } >> |  % p011 T14
  \key ees \major c'8\f[ ees'8 g'8 f'8] |  % p012 T1
  g'8[ ees'8 d'8 c'8] |  % p012 T2
  <g' c'' ees''>4 <aes' c'' d'' aes''>4 |  % p012 T3
  << { <c'' d'' g''>4 <b' d'' g''>4 } \\ { g'2 } >> |  % p012 T4
  <g' b'>8[ <aes' c''>8 <b' d''>8 <g' b'>8] |  % p012 T5
  <ees' c''>8[ <f' d''>8 <g' ees''>8 <ees' c''>8] |  % p012 T6
  <g' b' d''>4 <g' d'' g''>4 |  % p012 T7
  <g' c'' ees''>4 <ees' g' c''>4 |  % p012 T8
  c''8\f[ c''8 <c'' f'' aes''>8 <c'' f'' aes''>8] |  % p012 T9
  <c'' ees'' g''>8[ <c'' ees'' g''>8 <g' d'' f''>8 <g' d'' f''>8] |  % p012 T10
  <g' c'' ees''>2 |  % p012 T11
  <g' b' d''>2 |  % p012 T12
  \key c \major <e' g' c''>8[ <e' g' c''>8 <e' c'' e''>8 <g' c'' e''>8] |  % p012 T13
  <g' d'' g''>8[ <g' d'' g''>8 <g' c'' e''>8 <g' c''>8] |  % p012 T14
  <a' c'' f''>4 <c'' f'' a''>4 |  % p012 T15
  <c'' f'' a''>4 <c'' e'' g''>4 |  % p013 T1
  <b' g''>8[ <b' g''>8 <a' f''>8 <a' f''>8] |  % p013 T2
  <g' e''>8[ <f' d''>8 <e' c''>8 <f' d''>8] |  % p013 T3
  <g' c'' e''>4 <g' b' d''>4 |  % p013 T4
  <f' b' d''>4 <e' a' c''>4 |  % p013 T5
  <b' d'' g''>8[ <g' d'' g''>8 <a' d'' f''>8 <a' d'' f''>8] |  % p013 T6
  <g' c'' e''>8[ <f' b' d''>8 <e' a' c''>8 <d' a' d''>8] |  % p013 T7
  <g' c'' e''>4 <fis' c'' d''>4 |  % p013 T8
  <f'! b' d''>4 <e' g' c''>4 |  % p013 T9
}

links = {
  \key ees \major \time 2/4 c8[ c8 g8 f8] |  % p010 T1
  g8[ ees8 d8 c8] |  % p010 T2
  <c, c>4 <g, g>4 |  % p010 T3
  <c, c>4 <ees, ees>4 |  % p010 T4
  bes,8[ d8 f8 bes8] |  % p010 T5
  ees8[ ees'8 d'8 c'8] |  % p010 T6
  <c, c>4 <g, g>8[ <f, f>8] |  % p010 T7
  \tuplet 3/2 { <ees, ees>8[ <d, d>8 <c, c>8] } <bes,, bes,>8[ <aes,, aes,>8] |  % p010 T8
  <g,, g,>8[ <d d'>8 <c c'>8 <bes, bes>8] |  % p010 T9
  <ees bes>8[ ees'8 d'8 c'8] |  % p010 T10
  <c, c>8[ <d, d>8 <ees, ees>8 <f, f>8] |  % p010 T11
  <g, g>2 |  % p010 T12
  \key g \major g,4 g4 |  % p010 T13
  g,4 g4 |  % p010 T14
  <g, g>2 |  % p011 T1
  <fis, fis>4 <g, g>4 |  % p011 T2
  g,4 g8[ f8] |  % p011 T3
  e4~ <e, e>4 |  % p011 T4
  <e, e>2 |  % p011 T5
  <a, a>4 <e, e>4 |  % p011 T6
  <a, a>4 <g, g>4 |  % p011 T7
  <c, c>2 |  % p011 T8
  <g, g>2 |  % p011 T9
  <fis, fis>4 <g, g>4 |  % p011 T10
  <g, g>4 <e, e>4 |  % p011 T11
  <d, d>2 |  % p011 T12
  << { c'4 b4 } \\ { g2 } >> |  % p011 T13
  << { d'2 } \\ { g2 } >> |  % p011 T14
  \key ees \major c8[ ees8 g8 f8] |  % p012 T1
  g8[ ees8 d8 c8] |  % p012 T2
  <c, c>4 <f, f>4 |  % p012 T3
  <g, g>2 |  % p012 T4
  R2 |  % p012 T5
  R2 |  % p012 T6
  <g, g>8[ <a, a>8 <b, b>8 <g, g>8] |  % p012 T7
  <c, c>8[ <d, d>8 <ees, ees>8 <c, c>8] |  % p012 T8
  <c c'>8[ <c c'>8 <f, f>8 <f, f>8] |  % p012 T9
  <c, c>8[ <c, c>8 <b,, b,>8 <b,, b,>8] |  % p012 T10
  <c, c>8[ <d, d>8 <ees, ees>8 <f, f>8] |  % p012 T11
  <g, g>2 |  % p012 T12
  \key c \major c16[ d16 e16 f16] g8[ c8] |  % p012 T13
  b,16[ g,16 a,16 b,16] c8[ e8] |  % p012 T14
  <f, f>4 <f, f>4 |  % p012 T15
  << { c'2 } \\ { c2 } >> |  % p013 T1
  g16[ a16 b16 c'16] d'8[ d8] |  % p013 T2
  e16[ f16 g16 gis16] a8[ f8] |  % p013 T3
  <c, c>4 <g, g>4 |  % p013 T4
  <gis, gis>4 <a, a>4 |  % p013 T5
  <g, g>16[ <a, a>16 <b, b>16 <c c'>16] <d d'>8[ <d, d>8] |  % p013 T6
  <e, e>16[ <f, f>16 <g, g>16 <gis, gis>16] <a, a>8[ <f, f>8] |  % p013 T7
  <e, e>8[ <c, c>8] <d, d>8[ <e, e>16 <fis, fis>16] |  % p013 T8
  <g, g>8[ <a, a>16 <b, b>16] <c c'>4 |  % p013 T9
}

dynamik = { }
worteA = \lyricmode {
  
  "Ei" -- "sen" -- "trom" -- "mel," "Jah" -- "nit," "rüh" -- "re" "lih" -- "go," "lih" -- "go,"  % p010 S1
  "an" "des" "Zau" -- "nes" "Pfo" -- "sten" -- "thü" -- "re!" "lih" -- "go," "lih" -- "go," "an" "des" "Zau" -- "nes"  % p010 S2
  "Pfo" -- "sten" -- "thü" -- "re" "lih" -- "go!" "Al" -- "len" "steht" "das" "Thor" "ge" -- "schmücket," _  % p010 S3
  "lih" -- "go," "lih" -- "go" "Nach" -- "bars" "Thor" "ward" "nicht" "be" -- "glü" -- "cket" "lih" -- "go,"  % p011 S1
  "lih" -- "go." "Nach" -- "bars" "Jun" -- "gen" "schlie" -- "fen" "trä" -- "ge," "lih" -- "go,"  % p011 S2
  "lih" -- "go" "lie" -- "ssen" "leer" "das" "Thor" "am" "We" -- "ge" "lih" -- "go!"  % p011 S3
  "Kommt" "Jo" -- "han" -- "nis" -- "nacht" "ge" -- "gan" -- "gen," "lih" -- "go," "lih" -- "go" "darf" "euch" "nicht" "der"  % p012 S1
  "Schlaf" "um" -- "fan" -- "gen," "lih" -- "go," "lih" -- "go" "darf" "euch" "nicht" "der" "Schlaf" "um" -- "fan" -- "gen"  % p012 S2
  "lih" -- "go!" "Got" -- "tes" "Söhn" -- "lein," "sollst" "mir" "sa" -- "gen," "lih" -- "go,"  % p012 S3
  "lih" -- "go" "Jah" -- "nit," "was" "auf" "dei" -- "nem" "Wa" -- "gen?" "lih" -- "go," "lih" -- "go"  % p013 S1
  "Jah" -- "nit" "was" "auf" "dei" -- "nem" "Wa" -- "gen?" "lih" -- "go," "lih" -- "go!"  % p013 S2
}
worteB = \lyricmode {
  
  "Jah" -- "nit" "kam" "zur" "Son" -- "nen" -- "wen" -- "de," "lih" -- "go," "lih" -- "go,"  % p010 S1
  "reicht" "dem" "Sohn" "zum" "Gruss" "die" "Hän" -- "de!" "lih" -- "go," "lih" -- "go," "reicht" "dem" "Sohn" "zum"  % p010 S2
  "Gruss" "die" "Hän" -- "de." "lih" -- "go!" "Willst" "am" "wei" -- "ssen" "Woll" -- "tuch" "Freu" -- "de,"  % p010 S3
  "lih" -- "go," "lih" -- "go" "treib'" "die" "Schäf" -- "lein" "nachts" "zur" "Wei" -- "de!" "lih" -- "go,"  % p011 S1
  "lih" -- "go." "Jah" -- "nits" "Nacht" "mit" "Sil" -- "ber" -- "thau" -- "e" "lih" -- "go,"  % p011 S2
  "lih" -- "go" "wäscht" "das" "Schäf" -- "lein" "weiss," "das" "grau" -- "e." "lih" -- "go!"  % p011 S3
  "Bur" -- "sche," "Mäd" -- "chen!" "Schlummer" -- _ "lo" -- "sen" "lih" -- "go," "lih" -- "go" "prangt" "die" "Son" -- "ne"  % p012 S1
  "früh" "mit" "Ro" -- "sen," "lih" -- "go," "lih" -- "go" "prangt" "die" "Son" -- "ne" "früh" "mit" "Ro" -- "sen."  % p012 S2
  "lih" -- "go!" "Für" "die" "Töch" -- "ter" "Per" -- "len" -- "krön" -- "chen," "lih" -- "go,"  % p012 S3
  "lih" -- "go" "Mar" -- "der" -- "mü" -- "tzen" "für" "die" "Söhn" -- "chen!" "lih" -- "go," "lih" -- "go"  % p013 S1
  "Mar" -- "der" -- "mü" -- "tzen" "für" "die" "Söhn" -- "chen!" "lih" -- "go," "lih" -- "go!"  % p013 S2
}
worteC = \lyricmode {
  
  "Ꞩit" "Jah" -- "ni" -- "ti" "wa" -- "ra" "bun" -- "gas," "lih" -- "go," "lih" -- "go,"  % p010 S1
  "wahr" -- "tu" "sta" -- "bu" "ga" -- "li" -- "ꞥâ" -- "i" "lih" -- "go," "lih" -- "go," "wahr" -- "tu" "sta" -- "bu"  % p010 S2
  "ga" -- "li" -- "ꞥâ" -- "i," "lih" -- "go!" "Wi" -- "ꞩeem" "wahr" -- "ti" "a" -- "puꞩch" "ꞣo" -- "ti,"  % p010 S3
  "lih" -- "go," "lih" -- "go," "nah" -- "bur" -- "gam" "ir" "ne" -- "puꞩch" -- "ko" -- "ti," "lih" -- "go,"  % p011 S1
  "lih" -- "go." "Kai" -- "mi" -- "ꞥam" "ir" "laiꞩ" -- "ki" "pui" -- "ꞩchi," "lih" -- "go,"  % p011 S2
  "lih" -- "go" "ꞩa" -- "wu" "wahr" -- "tu" "ne" -- "puꞩch" -- "ꞣo" -- "ja," "lih" -- "go!"  % p011 S3
  "Jau" -- "ni" "pui" -- "ꞩchi," "jau" -- "nas" "mei" -- "tas," "lih" -- "go," "lih" -- "go" "Jah" -- "ꞥa" "nak" -- "tî"  % p012 S1
  "ne" -- "gu" -- "la" -- "ti," "lih" -- "go," "lih" -- "go" "Jah" -- "ꞥa" "nak" -- "tî" "ne" -- "gu" -- "la" -- "ti"  % p012 S2
  "lih" -- "go!" "Ak" "Jah" -- "ni" -- "ti" "Dee" -- "wa" "deh" -- "liꞥ" "lih" -- "go,"  % p012 S3
  "lih" -- "go" "ko" "tu" "we" -- "di" "wes" -- "mi" -- "ꞥâ" -- "i?" "lih" -- "go," "lih" -- "go"  % p013 S1
  "ko" "tu" "we" -- "di" "wes" -- "mi" -- "ꞥâ" -- "i?" "lih" -- "go," "lih" -- "go!"  % p013 S2
}
worteD = \lyricmode {
  
  "Jah" -- "nits" "nah" -- "za" "par" "gads" -- "kahr" -- "tu," "lih" -- "go," "lih" -- "go,"  % p010 S1
  "ꞩa" -- "wu" "behr" -- "nu" "ap" -- "rau" -- "dsi" -- "tu," "lih" -- "go," "lih" -- "go," "ꞩa" -- "wu" "behr" -- "nu"  % p010 S2
  "ap" -- "rau" -- "dsi" -- "tu," "lih" -- "go!" "Kas" "grib" "bal" -- "tas" "wil" -- "nai" -- "ni" -- "tes,"  % p010 S3
  "lih" -- "go," "lih" -- "go," "lai" "dsen" "ai" -- "tas" "pee" -- "gu" -- "łâ" -- "i!" "lih" -- "go,"  % p011 S1
  "lih" -- "go." "Jah" -- "ꞥa" "nak" -- "ti" "sel" -- "ta" "ra" -- "ꞩa," "lih" -- "go,"  % p011 S2
  "lih" -- "go" "tad" "ai" -- "ti" -- "ꞥas" "mas" -- "ga" -- "ja" -- "ꞩi," "lih" -- "go!"  % p011 S3
  "Tad" "rih" -- "ti" -- "ꞥâ" "red" -- "se" -- "ꞩee" -- "ti," "lih" -- "go," "lih" -- "go" "kà" "ꞩau" -- "li" -- "te"  % p012 S1
  "ro" -- "ta" -- "ja" -- "ꞩi." "lih" -- "go," "lih" -- "go" "Kà" "ꞩau" -- "li" -- "te" "ro" -- "ta" -- "ja" -- "ꞩi."  % p012 S2
  "lih" -- "go!" "Mei" -- "tàm" "we" -- "di" "sih" -- "łu" "ro" -- "tu" "lih" -- "go,"  % p012 S3
  "lih" -- "go" "pui" -- "ꞩcheem" "zau" -- "na" "ze" -- "pu" -- "ri" -- "ti," "lih" -- "go," "lih" -- "go"  % p013 S1
  "pui" -- "ꞩcheem" "zau" -- "na" "ze" -- "pu" -- "ri" -- "ti," "lih" -- "go," "lih" -- "go!"  % p013 S2
}

musik = <<
  \new Staff \with { midiInstrument = "choir aahs" instrumentName = "CANTO." } { \new Voice = "canto" { \clef treble \autoBeamOff \dynamicUp \canto } }
  \new Lyrics \with { \override LyricText.font-shape = #'italic } \lyricsto "canto" { \worteA }
  \new Lyrics \with { \override LyricText.font-shape = #'italic } \lyricsto "canto" { \worteB }
  \new Lyrics \with { } \lyricsto "canto" { \worteC }
  \new Lyrics \with { } \lyricsto "canto" { \worteD }
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
\markup { \fill-line { \italic \column { "Jahnits Mutter, säum' nicht lange," "Jahnits Kinder lieb' empfange!" "Was zum Trinken gab's, zum Essen?" "Ward auch Jahnits nicht vergessen?" "Jahnits Mutter, sieh, wir kommen;" "Hast uns wartend wahrgenommen?" "Hast du süsses Bier zum Feste?" "Weichen Käs' für deine Gäste?" "Käse, Käse, Jahnits Mutter!" "Kühe fanden reichlich Futter." "Jahnits Vater Durst uns stille!" "Gerste wuchs in reicher Fülle." "Käse soll uns trefflich schmecken;" "Jahnits Mutter formt' neun Ecken." "Dir ein Eckchen, ihm ein Zäckchen," "Und für mich das Mittelfleckchen!" "F. Kolberg." } \column { "Lai zełasi Jahꞥa mahte," "Lai ꞩaꞥehma Jahꞥa behrnus," "Ko tee ehda, ko tee dsehra?" "Wai Jahniti daudsinaja?" "Labwakari Jahꞥa mahte" "Wai tu muhs eꞩ' gaidijuꞩe" "Ꞩaldu alu darijuse," "Mihkstu ꞩeeru ꞩaꞩehjuꞩe?" "Ꞩeeru, ꞩeeru Jahꞥa mahte!" "Tew bij gowis laidarâi." "Alu, alu Jahna tehtit!" "Tew ir meeschi tihrumâi." "Jahꞥa mahte ꞩeeru ꞩehja," "Dewiꞥeemi stuhriꞩcheemi," "Ꞩchim stuhritis, tam stuhritis," "Man pats ꞩeera widuzitis." } } }

\score { \unfoldRepeats \musikMidi \midi { \tempo 4 = 80 } }
