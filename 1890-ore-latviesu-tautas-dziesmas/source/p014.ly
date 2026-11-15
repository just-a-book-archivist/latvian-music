% Printed page 14: voice (canto), piano right hand (rechts), left hand (links),
% one measure per line, `% T<n> S<system>` = measure and system on the page; checked
% measure by measure against the print. `% kopf T<n>:` = key and time from that measure.
% The songs in ../songs/ are assembled from these files.
\version "2.24.0"
% kopf T1: \key c \major \time 4/4
% kopf T9: \key aes \major \time 2/4

canto = {
  g'4\p g'4 c''4 b'8[ a'8] |  % T1 S1
  a'4 g'8[ f'8] e'8[( f'8] g'4) |  % T2 S1
  g'4 c''4\< c''4 c''4 |  % T3 S1
  c''4\! b'8[ c''8] d''2 |  % T4 S1
  g'4\mf g'4 c''4 b'8[ a'8] |  % T5 S2
  a'4 g'8[ f'8] e'4( g'4) |  % T6 S2
  g'4\p g'4 a'8[ g'8] f'4 |  % T7 S2
  a'4 a'4 g'2 \bar "|." |  % T8 S2
  aes'8 c''8 ees''8 c''8 |  % T9 S3
  des''8 f'8 f'8 bes'8 |  % T10 S3
  aes'8 g'8 f'8 ees'8 |  % T11 S3
  aes'8 bes'8 c''4 |  % T12 S4
  aes'8 c''8 ees''8 c''8 |  % T13 S4
  g''8 f''8 ees''8 des''8 |  % T14 S4
  c''8 bes'8 aes'8 bes'8 |  % T15 S4
  ees''8 g'8 aes'8 aes'8 \bar "|." |  % T16 S4
}

rechts = {
  << { <e' g'>4 g'4 c''4 <g' b'>8[ <f' a'>8] } \\ { s4 f'8[ d'8] c'4 s4 } >> |  % T1 S1
  <c' f' a'>4 <b e' g'>8[ <a d' f'>8] <g c' e'>4 <g c' g'>4 |  % T2 S1
  <c' e' g'>4 <c' f' c''>4 << { c''2 } \\ { f'8[ e'8 f'8 g'8] } >> |  % T3 S1
  << { c''4 b'8[ c''8] d''2 } \\ { fis'8[ g'8 f'8 e'8] d'4( g'4) } >> |  % T4 S1
  << { <d' f' g'>4 <c' e' g'>4 <c' g' c''>4 <g' b'>8[ <f' a'>8] } \\ { s2. c'4 } >> |  % T5 S2
  <c' f' a'>4 <b e' g'>8[ <a d' f'>8] <g c' e'>4 <g c' g'>4 |  % T6 S2
  <g d' g'>4 <g d' g'>4 << { a'8[ g'8] } \\ { <a cis'>4 } >> <a d' f'>4 |  % T7 S2
  <c'! f' a'>4 <c' f' a'>4 <c' e' g'>2 |  % T8 S2
  ees''16[ ees'16 aes'16 bes'16] c''16[ ees'16 aes'16 c''16] |  % T9 S3
  bes'16[ f'16 bes'16 c''16] des''16[ c''16 bes'16 f'16] |  % T10 S3
  aes'16[ ees'16 des'16 g'16] f'16[ c'16 des'16 ees'16] |  % T11 S3
  aes'16[ ees'16 aes'16 bes'16] c''16[ ees'16 aes'16 c''16] |  % T12 S4
  r16 ees'16[ aes'16 bes'16] c''16[ ees'16 aes'16 c''16] |  % T13 S4
  r16 f'16[ bes'16 des''16] g''16[ f''16 des''16 bes'16] |  % T14 S4
  aes'16[ ees'16 des'16 g'16] f'16[ c'16 des'16 ees'16] |  % T15 S4
  c''16[ ees'16 des'16 g'16] <c' aes'>4 |  % T16 S4
}

links = {
  << { g8[ c'8] b4 g8[ c'8] s4 } \\ { c4 d8[ f8] e4 <f c'>4 } >> |  % T1 S1
  g4 g,4 c8[ d8] e4 |  % T2 S1
  c8[ bes8 a8 g8] <f a>8[ <g bes>8 <f a>8 <e g>8] |  % T3 S1
  << { a8[ g8] g4 b!2 } \\ { ees4 d8[ c8] g,2 } >> |  % T4 S1
  b,4 c4 e4 f4 |  % T5 S2
  g4 g,4 c8[ d8] e4 |  % T6 S2
  <b,, b,>4 <bes,, bes,>4 <a,, a,>4 <d, d>4 |  % T7 S2
  <f,, f,>8[ <g,, g,>8 <a,, a,>8 <b,,! b,!>8] <c, c>2 |  % T8 S2
  <aes,, aes,>8[ <ees aes c'>8] <ees aes c'>4 |  % T9 S3
  <des, des>8[ <des f bes>8] <des f bes>4 |  % T10 S3
  << { c'8[ bes8 aes8 g8] } \\ { ees2 } >> |  % T11 S3
  << { c8[ ees8 aes8 ees8] } \\ { c2 } >> |  % T12 S4
  <aes,, aes,>8[ <ees aes c'>8] <ees aes c'>4 |  % T13 S4
  <des, des>8[ <des f bes>8] <des f bes>4 |  % T14 S4
  << { c'8[ bes8 aes8 g8] } \\ { ees2 } >> |  % T15 S4
  ees,8[ <ees bes>8] <aes, aes>4 |  % T16 S4
}
