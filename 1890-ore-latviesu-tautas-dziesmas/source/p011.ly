% Printed page 11: voice (canto), piano right hand (rechts), left hand (links),
% one measure per line, `% T<n> S<system>` = measure and system on the page; checked
% measure by measure against the print. `% kopf T<n>:` = key and time from that measure.
% The songs in ../songs/ are assembled from these files.
\version "2.24.0"
% kopf T1: \key g \major \time 2/4

canto = {
  d''4 b'4 |  % T1 S1
  c''4 b'4 |  % T2 S1
  d''8 d''8 d''8 d''8 |  % T3 S1
  d''8 c''8 b'8 c''8 |  % T4 S1
  d''4 b'4 |  % T5 S1
  c''4 b'4 |  % T6 S2
  c''8 c''8 d''8 d''8 |  % T7 S2
  e''8 c''8 b'8 c''8 |  % T8 S2
  d''4 b'4 |  % T9 S2
  c''4 b'4 |  % T10 S3
  d''8 d''8 e''8 e''8 |  % T11 S3
  f''8 d''8 cis''8 d''8 |  % T12 S3
  e''4( d''4) |  % T13 S3
  g''2 \bar ":|." |  % T14 S3
}

rechts = {
  <d' b' d''>4 <d' g' b'>4 |  % T1 S1
  <d' a' c''>4 <d' g' b'>4 |  % T2 S1
  <b' d''>8[ <b' d''>8 <b' d''>8 <b' d''>8] |  % T3 S1
  <b' d''>8[ <a' c''>8 <gis' b'>8 <a' c''>8] |  % T4 S1
  <e' gis' d''>4 <e' gis' b'>4 |  % T5 S1
  <e' a' c''>4 <e' gis' b'>4 |  % T6 S2
  <e' c''>8[ <e' c''>8 <f' d''>8 <f' d''>8] |  % T7 S2
  <g' e''>8[ <e' c''>8 <d' b'>8 <e' c''>8] |  % T8 S2
  <d' b' d''>4 <d' g' b'>4 |  % T9 S2
  <d' a' c''>4 <d' g' b'>4 |  % T10 S3
  <g' b' d''>8[ <g' b' d''>8 <g' cis'' e''>8 <g' cis'' e''>8] |  % T11 S3
  <fis' a' f''>8[ <fis' d''>8 <e' cis''>8 <fis' d''>8] |  % T12 S3
  << { e''4 d''4 } \\ { g'2 } >> |  % T13 S3
  << { g''2 } \\ { b'2 } >> |  % T14 S3
}

links = {
  <g, g>2 |  % T1 S1
  <fis, fis>4 <g, g>4 |  % T2 S1
  g,4 g8[ f8] |  % T3 S1
  e4~ <e, e>4 |  % T4 S1
  <e, e>2 |  % T5 S1
  <a, a>4 <e, e>4 |  % T6 S2
  <a, a>4 <g, g>4 |  % T7 S2
  <c, c>2 |  % T8 S2
  <g, g>2 |  % T9 S2
  <fis, fis>4 <g, g>4 |  % T10 S3
  <g, g>4 <e, e>4 |  % T11 S3
  <d, d>2 |  % T12 S3
  << { c'4 b4 } \\ { g2 } >> |  % T13 S3
  << { d'2 } \\ { g2 } >> |  % T14 S3
}
