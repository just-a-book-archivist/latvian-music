% Printed page 19: voice (canto), piano right hand (rechts), left hand (links),
% one measure per line, `% T<n> S<system>` = measure and system on the page; checked
% measure by measure against the print. `% kopf T<n>:` = key and time from that measure.
% The songs in ../songs/ are assembled from these files.
\version "2.24.0"
% kopf T1: \key bes \major \time 2/4

canto = {
  \tempo "Maestoso." 4 = 66 f'4\f c''4 |  % T1 S1
  c''8 c''8 c''8 ees''8 |  % T2 S1
  d''8.[ ees''16] f''4 |  % T3 S1
  g''4-> f''4 |  % T4 S1
  f''8 f''8 f''8 f''8 |  % T5 S1
  g''4-> d''4 |  % T6 S2
  ees''4-> d''4 |  % T7 S2
  c''8 bes'8 c''8 c''8 |  % T8 S2
  f'8.[ g'16] f'4 |  % T9 S2
  ees''4-> d''4 |  % T10 S2
  c''8 bes'8 d''8 c''8 |  % T11 S2
  bes'4 r4 \bar "|." |  % T12 S2
}

rechts = {
  <bes d' f'>4\f <c' f' a' c''>4 |  % T1 S1
  <ees' g' c''>4 <ees' g' c''>8[ <g' c'' ees''>8] |  % T2 S1
  <f' bes' d''>8.[ <g' bes' ees''>16] <f' bes' d'' f''>4 |  % T3 S1
  <g' bes' e'' g''>4 <a' c'' f''>4 |  % T4 S1
  <f' a' c'' f''>4 <f' a' c'' f''>8[ <a' c'' f''>8] |  % T5 S1
  <g' b' d'' g''>4 <f' b' d''>4 |  % T6 S2
  <ees' g' c'' ees''>4 <f' b' d''>4 |  % T7 S2
  <ees' g' c''>4 <c' g' c''>8[ <c' g' c''>8] |  % T8 S2
  <c' f' a'>8.[ <bes e' g'>16] << { <c' f'>4 } \\ { ees'8[ <bes d'>8] } >> |  % T9 S2
  <ees' bes' ees''>4 <f' bes' d''>4 |  % T10 S2
  <c' g' c''>4 <f' bes' d''>8[ <ees' a' c''>8] |  % T11 S2
  <d' f' bes'>4 r4 |  % T12 S2
}

links = {
  <bes, bes>8[ <a, a>8 <g, g>8 <f, f>8] |  % T1 S1
  <ees, ees>8[ <d, d>8] <c, c>4 |  % T2 S1
  <f, f>8.[ <ees, ees>16] <d, d>4 |  % T3 S1
  <c, c>4 <f, f>4 |  % T4 S1
  <a, a>8[ <g, g>8 <f, f>8 <ees, ees>8] |  % T5 S1
  <d, d>8[ <g,, g,>8 <a,, a,>8 <b,, b,>8] |  % T6 S2
  <c, c>4 <d, d>4 |  % T7 S2
  <ees, ees>8[ <d, d>8 <ees, ees>8 <e, e>8] |  % T8 S2
  <f, f>8.[ <g, g>16] <a, a>8[ <aes, aes>8] |  % T9 S2
  <g, g>4 <f, f>4 |  % T10 S2
  <ees, ees>8[ <e, e>8] <f, f>8[ <f,, f,>8] |  % T11 S2
  <bes,, bes,>4 r4 |  % T12 S2
}
