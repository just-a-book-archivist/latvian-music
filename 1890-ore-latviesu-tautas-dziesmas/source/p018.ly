% Printed page 18: voice (canto), piano right hand (rechts), left hand (links),
% one measure per line, `% T<n> S<system>` = measure and system on the page; checked
% measure by measure against the print. `% kopf T<n>:` = key and time from that measure.
% The songs in ../songs/ are assembled from these files.
\version "2.24.0"
% kopf T1: \key d \major \time 3/4

canto = {
  \tempo "Allegro." 4 = 120 d''4.\f a'8 d''8 e''8 |  % T1 S1
  fis''4 d''4 d''8 d''8 |  % T2 S1
  a'4. b'8 a'8 g'8 |  % T3 S1
  fis'4 d'4 d'4 |  % T4 S1
  b'4. ais'8 b'8 cis''8 |  % T5 S2
  d''4 cis''4 b'8 b'8 |  % T6 S2
  a'8.^\markup { \italic "rit." } a'16 b'8 a'8 b'8 cis''8 |  % T7 S2
  d''2 r4 \bar "|." |  % T8 S2
}

rechts = {
  <fis' d''>4.\f <fis' a'>8[ <fis' d''>8 <g' e''>8] |  % T1 S1
  <a' fis''>4 <fis' d''>4 <fis' d''>4 |  % T2 S1
  <e' a'>4. <g' b'>8[ <fis' a'>8 <e' g'>8] |  % T3 S1
  <d' fis'>4 <d' fis'>4 d'4 |  % T4 S1
  <d' b'>4. <cis' ais'>8[ <d' b'>8 <e' cis''>8] |  % T5 S2
  <fis' b' d''>4 <e' fis' ais' cis''>4 <d' fis' b'>4 |  % T6 S2
  <cis' g' a'!>4 <d' g' b'>4 <e' g' cis''>4 |  % T7 S2
  <d' fis' d''>2 r4 |  % T8 S2
}

links = {
  d4 d'4 a4 |  % T1 S1
  d8[ fis8 a8 g8 fis8 d8] |  % T2 S1
  cis4 a,4 b,8[ cis8] |  % T3 S1
  d8[ a8 d'8 cis'8 b8 a8] |  % T4 S1
  g4 g,4 <g, g>4 |  % T5 S2
  <b,, b,>4 <cis, cis>4 <d, d>4 |  % T6 S2
  <e, e>2 <a,, a,>4 |  % T7 S2
  <d, d>2 r4 |  % T8 S2
}
