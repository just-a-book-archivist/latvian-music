% Printed page 10: voice (canto), piano right hand (rechts), left hand (links),
% one measure per line, `% T<n> S<system>` = measure and system on the page; checked
% measure by measure against the print. `% kopf T<n>:` = key and time from that measure.
% The songs in ../songs/ are assembled from these files.
\version "2.24.0"
% kopf T1: \key ees \major \time 2/4
% kopf T13: \key g \major \time 2/4

canto = {
  \tempo "Andante." 4 = 72 c''8\f c''8 g''8 f''8 |  % T1 S1
  g''8 ees''8 d''8 c''8 |  % T2 S1
  ees''4 d''4 |  % T3 S1
  ees''4 g''4 |  % T4 S1
  f''8 f''8 f''8 f''8 |  % T5 S2
  g''8 ees''8 d''8 c''8 |  % T6 S2
  ees''4 d''4 |  % T7 S2
  ees''4 f''4 |  % T8 S2
  g''8 f''8 f''8 f''8 |  % T9 S2
  g''8 ees''8 d''8 c''8 |  % T10 S3
  ees''2 |  % T11 S3
  d''2\fermata \bar ":|." |  % T12 S3
  d''8\p d''8 d''8 d''8 |  % T13 S3
  d''8 c''8 b'8 c''8 |  % T14 S3
}

rechts = {
  c'8\f[ c'8 g'8 f'8] |  % T1 S1
  g'8[ ees'8 d'8 c'8] |  % T2 S1
  <g' c'' ees''>4 <g' b' d''>4 |  % T3 S1
  <g' c'' ees''>4 <g' bes'! g''>4 |  % T4 S1
  <bes' d'' f''>8[ <bes' d'' f''>8 <bes' d'' f''>8 <bes' d'' f''>8] |  % T5 S2
  <g' bes' ees'' g''>8[ ees''8 d''8 c''8] |  % T6 S2
  <g' c'' ees''>4 <g' b' d''>4 |  % T7 S2
  <g' c'' ees''>4 <bes'! d'' f''>4 |  % T8 S2
  <g' b' d'' g''>8[ <bes' d'' f''>8 <a' ees'' f''>8 <bes' d'' f''>8] |  % T9 S2
  <bes' ees'' g''>8[ ees''8 d''8 c''8] |  % T10 S3
  <g' c'' ees''>2 |  % T11 S3
  <g' b' d''>2 |  % T12 S3
  <b' d''>8\p[ <b' d''>8 <b' d''>8 <b' d''>8] |  % T13 S3
  <b' d''>8[ <a' c''>8 <g' b'>8 <a' c''>8] |  % T14 S3
}

links = {
  c8[ c8 g8 f8] |  % T1 S1
  g8[ ees8 d8 c8] |  % T2 S1
  <c, c>4 <g, g>4 |  % T3 S1
  <c, c>4 <ees, ees>4 |  % T4 S1
  bes,8[ d8 f8 bes8] |  % T5 S2
  ees8[ ees'8 d'8 c'8] |  % T6 S2
  <c, c>4 <g, g>8[ <f, f>8] |  % T7 S2
  \tuplet 3/2 { <ees, ees>8[ <d, d>8 <c, c>8] } <bes,, bes,>8[ <aes,, aes,>8] |  % T8 S2
  <g,, g,>8[ <d d'>8 <c c'>8 <bes, bes>8] |  % T9 S2
  <ees bes>8[ ees'8 d'8 c'8] |  % T10 S3
  <c, c>8[ <d, d>8 <ees, ees>8 <f, f>8] |  % T11 S3
  <g, g>2 |  % T12 S3
  g,4 g4 |  % T13 S3
  g,4 g4 |  % T14 S3
}
