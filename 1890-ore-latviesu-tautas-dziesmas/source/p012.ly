% Printed page 12: voice (canto), piano right hand (rechts), left hand (links),
% one measure per line, `% T<n> S<system>` = measure and system on the page; checked
% measure by measure against the print. `% kopf T<n>:` = key and time from that measure.
% The songs in ../songs/ are assembled from these files.
\version "2.24.0"
% kopf T1: \key ees \major \time 2/4
% kopf T13: \key c \major \time 2/4

canto = {
  c''8\f ees''8 g''8 f''8 |  % T1 S1
  g''8 ees''8 d''8 c''8 |  % T2 S1
  ees''4 aes''4 |  % T3 S1
  g''4 g''4 |  % T4 S1
  b'8\p c''8 d''8 b'8 |  % T5 S1
  c''8 d''8 ees''8 c''8 |  % T6 S2
  d''4 g''4 |  % T7 S2
  ees''4 c''4 |  % T8 S2
  c''8\f c''8 aes''8 aes''8 |  % T9 S2
  g''8 g''8 f''8 f''8 |  % T10 S2
  ees''2 |  % T11 S3
  d''2 \bar ":|." |  % T12 S3
  c''8 c''8 e''8 e''8 |  % T13 S3
  g''8 g''8 e''8 c''8 |  % T14 S3
  f''4 a''4 |  % T15 S3
}

rechts = {
  c'8\f[ ees'8 g'8 f'8] |  % T1 S1
  g'8[ ees'8 d'8 c'8] |  % T2 S1
  <g' c'' ees''>4 <aes' c'' d'' aes''>4 |  % T3 S1
  << { <c'' d'' g''>4 <b' d'' g''>4 } \\ { g'2 } >> |  % T4 S1
  <g' b'>8[ <aes' c''>8 <b' d''>8 <g' b'>8] |  % T5 S1
  <ees' c''>8[ <f' d''>8 <g' ees''>8 <ees' c''>8] |  % T6 S2
  <g' b' d''>4 <g' d'' g''>4 |  % T7 S2
  <g' c'' ees''>4 <ees' g' c''>4 |  % T8 S2
  c''8\f[ c''8 <c'' f'' aes''>8 <c'' f'' aes''>8] |  % T9 S2
  <c'' ees'' g''>8[ <c'' ees'' g''>8 <g' d'' f''>8 <g' d'' f''>8] |  % T10 S2
  <g' c'' ees''>2 |  % T11 S3
  <g' b' d''>2 |  % T12 S3
  <e' g' c''>8[ <e' g' c''>8 <e' c'' e''>8 <g' c'' e''>8] |  % T13 S3
  <g' d'' g''>8[ <g' d'' g''>8 <g' c'' e''>8 <g' c''>8] |  % T14 S3
  <a' c'' f''>4 <c'' f'' a''>4 |  % T15 S3
}

links = {
  c8[ ees8 g8 f8] |  % T1 S1
  g8[ ees8 d8 c8] |  % T2 S1
  <c, c>4 <f, f>4 |  % T3 S1
  <g, g>2 |  % T4 S1
  R2 |  % T5 S1
  R2 |  % T6 S2
  <g, g>8[ <a, a>8 <b, b>8 <g, g>8] |  % T7 S2
  <c, c>8[ <d, d>8 <ees, ees>8 <c, c>8] |  % T8 S2
  <c c'>8[ <c c'>8 <f, f>8 <f, f>8] |  % T9 S2
  <c, c>8[ <c, c>8 <b,, b,>8 <b,, b,>8] |  % T10 S2
  <c, c>8[ <d, d>8 <ees, ees>8 <f, f>8] |  % T11 S3
  <g, g>2 |  % T12 S3
  c16[ d16 e16 f16] g8[ c8] |  % T13 S3
  b,16[ g,16 a,16 b,16] c8[ e8] |  % T14 S3
  <f, f>4 <f, f>4 |  % T15 S3
}
