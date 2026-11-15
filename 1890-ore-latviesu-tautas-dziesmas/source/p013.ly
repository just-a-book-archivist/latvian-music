% Printed page 13: voice (canto), piano right hand (rechts), left hand (links),
% one measure per line, `% T<n> S<system>` = measure and system on the page; checked
% measure by measure against the print. `% kopf T<n>:` = key and time from that measure.
% The songs in ../songs/ are assembled from these files.
\version "2.24.0"
% kopf T1: \key c \major \time 2/4

canto = {
  a''4 g''4 |  % T1 S1
  g''8 g''8 f''8 f''8 |  % T2 S1
  e''8 d''8 c''8 d''8 |  % T3 S1
  e''4 d''4 |  % T4 S1
  d''4 c''4 |  % T5 S1
  g''8^\markup { \italic "rit." } g''8 f''8 f''8 |  % T6 S2
  e''8 d''8 c''8 d''8 |  % T7 S2
  e''4 d''4 |  % T8 S2
  d''4 c''4 \bar "|." |  % T9 S2
}

rechts = {
  <c'' f'' a''>4 <c'' e'' g''>4 |  % T1 S1
  <b' g''>8[ <b' g''>8 <a' f''>8 <a' f''>8] |  % T2 S1
  <g' e''>8[ <f' d''>8 <e' c''>8 <f' d''>8] |  % T3 S1
  <g' c'' e''>4 <g' b' d''>4 |  % T4 S1
  <f' b' d''>4 <e' a' c''>4 |  % T5 S1
  <b' d'' g''>8[ <g' d'' g''>8 <a' d'' f''>8 <a' d'' f''>8] |  % T6 S2
  <g' c'' e''>8[ <f' b' d''>8 <e' a' c''>8 <d' a' d''>8] |  % T7 S2
  <g' c'' e''>4 <fis' c'' d''>4 |  % T8 S2
  <f'! b' d''>4 <e' g' c''>4 |  % T9 S2
}

links = {
  << { c'2 } \\ { c2 } >> |  % T1 S1
  g16[ a16 b16 c'16] d'8[ d8] |  % T2 S1
  e16[ f16 g16 gis16] a8[ f8] |  % T3 S1
  <c, c>4 <g, g>4 |  % T4 S1
  <gis, gis>4 <a, a>4 |  % T5 S1
  <g, g>16[ <a, a>16 <b, b>16 <c c'>16] <d d'>8[ <d, d>8] |  % T6 S2
  <e, e>16[ <f, f>16 <g, g>16 <gis, gis>16] <a, a>8[ <f, f>8] |  % T7 S2
  <e, e>8[ <c, c>8] <d, d>8[ <e, e>16 <fis, fis>16] |  % T8 S2
  <g, g>8[ <a, a>16 <b, b>16] <c c'>4 |  % T9 S2
}
