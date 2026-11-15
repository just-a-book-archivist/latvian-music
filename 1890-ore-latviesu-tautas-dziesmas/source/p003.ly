% Printed page 3: voice (canto), piano right hand (rechts), left hand (links),
% one measure per line, `% T<n> S<system>` = measure and system on the page; checked
% measure by measure against the print. `% kopf T<n>:` = key and time from that measure.
% The songs in ../songs/ are assembled from these files.
\version "2.24.0"
% kopf T1: \key bes \major \time 2/4

canto = {
  \tempo "Allegro." 4 = 120 bes'8\mf f'8 bes'8 d''8 |  % T1 S1
  c''8 f'16[ ees'16] f'8 bes'8 |  % T2 S1
  g'8 g'8 g'8 bes'8 |  % T3 S1
  f'8 g'8 f'4 |  % T4 S2
  ees'8\p[ f'8] ees'8[ f'8] |  % T5 S2
  d'8\<[ f'8] bes'8\![ d''8\fermata] |  % T6 S2
  c''8\f c''8 f''8 d''8 |  % T7 S2
  c''8 c''8 bes'4 |  % T8 S3
  ees'8\p[ f'8] ees'8[ f'8] |  % T9 S3
  d'8\<[ f'8] bes'8[ d''8\fermata] |  % T10 S3
  c''8\f c''8 f''8 d''8 |  % T11 S3
  c''8^\markup { \italic "rit." } c''8 bes'4 \bar "|." |  % T12 S3
}

rechts = {
  <bes' d'>8 [ <d' f'>8 <bes' d'>8 <f' d''>8] |  % T1 S1
  <ees' c''>8 f'8 f'16 ees'16 <d' bes'>8 |  % T2 S1
  <ees' g'>8 <ees' g'>16 d'16 <ees' g'>8 <ees' bes'>8 |  % T3 S1
  <d' f'>8 <ees' g'>8 <d' f'>4 |  % T4 S2
  << { ees'8^\p[ f'8] ees'8[ f'8] } \\ { c'8[ a8] c'8[ a8] } >> |  % T5 S2
  << { d'8 f'8 <d' bes'>8 <f' d''>8 } \\ { bes2\< } >> |  % T6 S2
  << { c''4^\f f''8 d''8 } \\ { g'8\! f'8 <f' bes'>4 } >> |  % T7 S2
  << { c''4 bes'4 } \\ { <ees' g'>8 a'8 d'4 } >> |  % T8 S3
  << { ees'8 f'8 ees'8 f'8 } \\ { <g c'>4 <f c'>4 } >> |  % T9 S3
  <f bes d'>8[ <c' f'>8 <bes' g' d'>8 <f' bes' d''>8] |  % T10 S3
  << { c''4^\f s4 } \\ { <c' e' bes'>8[ <c' f' a'>8] <f' bes' f''>8[ <f' bes' d''>8] } >> |  % T11 S3
  <c' g' c''>8_\markup { \italic "rit." } <f' a' c'>16 ees'16 <d' f' bes'>4 |  % T12 S3
}

links = {
  bes,8[ bes8 f8 bes,8] |  % T1 S1
  f,8[ <f a>8 <f a>8 bes,8] |  % T2 S1
  ees,8[ bes,8 ees8 g8] |  % T3 S1
  bes8 <bes, bes>8 <bes, bes>4 |  % T4 S2
  << { g4 f4 } \\ { c8 f,8 c8 f,8 } >> |  % T5 S2
  << { f8[ d8 f8 bes8] } \\ { bes,2 } >> |  % T6 S2
  << { c'8 a8 bes16 d'16 c'16 bes16 } \\ { e8 ees8 d4 } >> |  % T7 S2
  <ees, ees>8[ <f, f>8] <bes, f>4 |  % T8 S3
  <c, c>4 <a,, a,>4 |  % T9 S3
  <bes,, bes,>8[ <a, a>8 <g, g>8 <f, f>8 ] |  % T10 S3
  <g, g>8[ <f, f>16 <ees, ees>16] <d, d>8 <bes,, bes,>8 |  % T11 S3
  <ees, ees>8[ <f, f>8] <bes,, bes,>4 |  % T12 S3
}
