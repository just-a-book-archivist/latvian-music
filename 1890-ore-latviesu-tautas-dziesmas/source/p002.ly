% Printed page 2: voice (canto), piano right hand (rechts), left hand (links),
% one measure per line, `% T<n> S<system>` = measure and system on the page; checked
% measure by measure against the print. `% kopf T<n>:` = key and time from that measure.
% The songs in ../songs/ are assembled from these files.
\version "2.24.0"
% kopf T1: \key d \major \time 2/4

canto = {
  \tempo "Allegro." 4 = 120 d'8\p fis'8 a'8 a'8 |  % T1 S1
  d''8 a'8 fis'8 a'8 |  % T2 S1
  a'8 g'8 e'8 g'8 |  % T3 S1
  fis'8. e'16 d'4 |  % T4 S1
  d'8\mf fis'8 a'8\< a'8 |  % T5 S2
  d''8 d''8 d''8 d''8 |  % T6 S2
  e''8.\f d''16 cis''8 b'8 |  % T7 S2
  a'8 cis''8 d''4 \bar "|." |  % T8 S2
}

rechts = {
  d'8\p[ <d' fis'>8 <d' a'>8 <fis' a'>8] |  % T1 S1
  <fis' d''>8[ <fis' a'>8 <d' fis'>8 <fis' a'>8] |  % T2 S1
  <a' e'>8[ <e' g'>8 <cis' e'>8 <a cis' g'>8] |  % T3 S1
  <a d' fis'>8.[ <e' cis'>16] <d' a>4 |  % T4 S1
  <a d'>8[ <a d' fis'>8 <b e' a'>8 <d' fis' a'>8] |  % T5 S2
  << { d''2 } \\ { <d' g' b'>8[ <d' fis' c''>8 <d' g' b'>8 <d' a'>8] } >> |  % T6 S2
  <d'' e' g'>8.^\f[ <e' g' d''>16 <e' g' cis''>8 <e' g' b'>8] |  % T7 S2
  <e' g' a'>8 <e' g' cis''>8 <d'' fis' d'>4 |  % T8 S2
}

links = {
  d,8[ a,8 fis,8 a,8] |  % T1 S1
  d,8[ d8 a,8 d8] |  % T2 S1
  cis8[ a,8 a8 a,8] |  % T3 S1
  d8[ a,8 fis,8 d,8] |  % T4 S1
  fis8[ d8 cis8 c8] |  % T5 S2
  <b, b>8[ <a, a>8 <g, g>8 <fis, fis>8] |  % T6 S2
  e,8[ e8 a,8 e8] |  % T7 S2
  cis8 a,8 <d, d>4 |  % T8 S2
}
