% Printed page 17: voice (canto), piano right hand (rechts), left hand (links),
% one measure per line, `% T<n> S<system>` = measure and system on the page; checked
% measure by measure against the print. `% kopf T<n>:` = key and time from that measure.
% The songs in ../songs/ are assembled from these files.
\version "2.24.0"
% kopf T1: \key bes \major \time 2/4

canto = {
  \tempo "Andante." 4 = 72 bes'8\p d''8 bes'8 d''8 |  % T1 S1
  d''8 c''16[ bes'16] c''8 c''8 |  % T2 S1
  bes'8 d''8 bes'8 d''8 |  % T3 S1
  d''8 c''16[ bes'16] c''4 |  % T4 S1
  c''8. d''16 ees''8 ees''8 |  % T5 S2
  d''8 c''8 bes'8 bes'8 |  % T6 S2
  c''8 c''8 bes'8 a'8 |  % T7 S2
  bes'8. c''16 d''4 |  % T8 S2
  c''8. d''16 ees''8 ees''8 |  % T9 S3
  d''8 c''8 bes'8 bes'8 |  % T10 S3
  c''8 g''8 f''8 d''8 |  % T11 S3
  c''8 d''16[ c''16] bes'4 \bar "|." |  % T12 S3
}

rechts = {
  <d' bes'>8\p[ <f' d''>8] <d' bes'>8[ <f' d''>8] |  % T1 S1
  << { d''8[ c''16 bes'16] <ees' c''>8[ <ees' c''>8] } \\ { ees'4 s4 } >> |  % T2 S1
  << { bes'8[ d''8] bes'8[ d''8] } \\ { <d' g'>4 <d' g'>4 } >> |  % T3 S1
  << { d''8[ c''16 bes'16] } \\ { <e' g'>4 } >> <ees' a' c''>4 |  % T4 S1
  <ees' g' c''>8.[ <f' b' d''>16] <g' c'' ees''>8[ <g' c'' ees''>8] |  % T5 S2
  <f' bes'! d''>8[ <ees' a' c''>8] <d' g' bes'>8[ <d' g' bes'>8] |  % T6 S2
  <c' g' c''>8[ <c' g' c''>8] <d' f' bes'>8[ <c' f' a'>8] |  % T7 S2
  <d' f' bes'>8.[ <ees' g' c''>16] <f' bes' d''>4 |  % T8 S2
  <ees' g' c''>8.[ <f' b' d''>16] <g' c'' ees''>8[ <g' c'' ees''>8] |  % T9 S3
  <f' bes'! d''>8[ <ees' a' c''>8] <d' g' bes'>8[ <d' g' bes'>8] |  % T10 S3
  <ees' g' c''>8[ <g' c'' ees''>8] <f' bes' d''>8[ <d' f' bes'>8] |  % T11 S3
  <ees' a' c''>8[ <ees' a' c''>8] <d' f' bes'>4 |  % T12 S3
}

links = {
  << { bes8[ f8] bes8[ f8] } \\ { bes,4 bes,4 } >> |  % T1 S1
  << { a8[ f8] a8[ f8] } \\ { f,4 f,4 } >> |  % T2 S1
  <g, d bes>4\arpeggio << { bes4\arpeggio } \\ { <g, d>8\arpeggio[ bes,8] } >> |  % T3 S1
  << { g16[ bes16 a16 g16] } \\ { c4 } >> f16[ a16 g16 f16] |  % T4 S1
  <ees, ees>8[ <d, d>8] <c, c>8[ <ees, ees>8] |  % T5 S2
  <f, f>8[ <fis, fis>8] <g, g>8[ <f, f>8] |  % T6 S2
  <ees, ees>8[ <e, e>8] <f, f>8.[ <e, e>16] |  % T7 S2
  <d, d>16[ <ees, ees>16 <d, d>16 <c, c>16] <bes,, bes,>16[ <d, d>16 <g, g>16 <f, f>16] |  % T8 S2
  <ees, ees>8[ <d, d>8] <c, c>8[ <ees, ees>8] |  % T9 S3
  <f, f>8[ <f, f>8] <g, g>8[ <f, f>8] |  % T10 S3
  <ees, ees>16[ <c, c>16 <d, d>16 <ees, ees>16] <f, f>16[ <bes, bes>16 <a, a>16 <g, g>16] |  % T11 S3
  <f, f>8[ <f,, f,>8] <bes,, bes,>4 |  % T12 S3
}
