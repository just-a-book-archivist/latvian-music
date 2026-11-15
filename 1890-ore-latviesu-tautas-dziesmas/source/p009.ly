% Printed page 9: voice (canto), piano right hand (rechts), left hand (links),
% one measure per line, `% T<n> S<system>` = measure and system on the page; checked
% measure by measure against the print. `% kopf T<n>:` = key and time from that measure.
% The songs in ../songs/ are assembled from these files.
\version "2.24.0"
% kopf T1: \key c \major \time 2/4

canto = {
  \tempo "Andante." 4 = 72 R2 |  % T1 S1
  R2 \bar "||" |  % T2 S1
  e''8. d''16 e''8 e''8 |  % T3 S1
  d''8 c''8 b'8 d''8 |  % T4 S1
  c''8 b'8 c''8 a'8 |  % T5 S1
  b'8 b'8 e'4 |  % T6 S1
  a'8. gis'16 a'8 c''8 |  % T7 S2
  b'8 a'8 g'!8 e'8 |  % T8 S2
  a'8 g'8 a'8 f'8 |  % T9 S2
  e'8 e'8 e'4 \bar "|." |  % T10 S2
}

rechts = {
  <e' a' c''>8.[ <d' gis' b'>16] <e' a' e''>8[ <f' b' d''>8] |  % T1 S1
  << { <a' c''>4 <gis' b'>4 } \\ { e'2 } >> |  % T2 S1
  e''16[ g'!16 c''16 d''16] <g' e''>8[ <g' c''>8] |  % T3 S1
  d''16[ f'16 c''16 e'16] <d' b'>8[ <e' d''>8] |  % T4 S1
  c''16[ e'16 b'16 d'16] <e' c''>8[ <e' a'>8] |  % T5 S1
  << { b'2 } \\ { dis'4 e'4 } >> |  % T6 S1
  a'16[ e'16 d'16 gis'16] << { a'8[ <a' c''>8] } \\ { e'4 } >> |  % T7 S2
  <d' b'>8[ <c' a'>8 <b g'!>8 <c' e'>8] |  % T8 S2
  << { a'4 a'4 } \\ { <c' f'>8[ <cis' g'>8 <a f'>8 <bes d' f'>8] } >> |  % T9 S2
  << { e'2 } \\ { <b! d'>8[ <a c'>8] <gis b>4 } >> |  % T10 S2
}

links = {
  <a,, a,>8[ <b,, b,>8] <c, c>8[ <d, d>8] |  % T1 S1
  <e, e>2 |  % T2 S1
  <c, c>4~ c16[ d16 e16 f16] |  % T3 S1
  g4 gis16[ e16 fis16 gis16] |  % T4 S1
  a4~ a16[ b16 c'8] |  % T5 S1
  << { b8[ a8] gis4 } \\ { b,4 e8[ d8] } >> |  % T6 S1
  << { a8[ b8] c'16[ b16 a16 g16] } \\ { c8[ b,8] a,4 } >> |  % T7 S2
  << { f4 s4 } \\ { d16[ e16 f8] e16[ d16 c16 g16] } >> |  % T8 S2
  <f, f>8[ <e, e>8] << { d4 } \\ { d,16[ e,16 f,16 g,16] } >> |  % T9 S2
  gis,8_\markup { "8" }[ a,8_\markup { "8" }] e,4_\markup { "8" } |  % T10 S2
}
