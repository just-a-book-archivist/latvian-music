% Printed page 4: voice (canto), piano right hand (rechts), left hand (links),
% one measure per line, `% T<n> S<system>` = measure and system on the page; checked
% measure by measure against the print. `% kopf T<n>:` = key and time from that measure.
% The songs in ../songs/ are assembled from these files.
\version "2.24.0"
% kopf T1: \key aes \major \time 3/4

canto = {
  f'8\p g'8 aes'4 c''4 |  % T1 S1
  f'8 g'8 aes'4 c''4 |  % T2 S1
  f'8 f'8 c''4 bes'4 |  % T3 S1
  aes'8 g'8 f'2 |  % T4 S1
  f'8.\mf f'16 f''4 des''4 |  % T5 S2
  bes'8. bes'16 ees''4 c''4 |  % T6 S2
  aes'8 bes'8 c''4 bes'4 |  % T7 S2
  aes'8 aes'8 g'2 |  % T8 S2
  f'8.\f f'16 f''4 des''4 |  % T9 S3
  bes'8. g'16 ees''4 c''4 |  % T10 S3
  aes'8 bes'8 c''8[ f'8] des''8[ bes'8] |  % T11 S3
  aes'8^\markup { \italic "rit." } g'8 f'2 \bar "|." |  % T12 S3
}

rechts = {
  << { f'8[ <e' g'>8] <c' f' aes'>4 <c' f' aes' c''>4 } \\ { c'4\p s2 } >> |  % T1 S1
  <aes f'>8 <bes f' g'>8 <f' aes' bes>4 <c' e' c''>4 |  % T2 S1
  <f c' f'>8[ <f c' ees'!>8] <des' f' c''>4 <des' f' bes'>4 |  % T3 S1
  <c' f' aes'>8 <bes e' g'>8 <aes c' f'>2 |  % T4 S1
  <aes des' f'>8.\mf <a ees' f'>16 <bes des' f'>4 <f' bes' des''>4 |  % T5 S2
  <ees' g' bes'>8.[ <ees' g' bes'>16] <ees' aes' ees''>4 <ees' aes' c''>4 |  % T6 S2
  <aes f' aes'>8[ <bes f' bes'>8] <c' f' c''>4 <des' g' bes'>4 |  % T7 S2
  <d' f' aes'>4 <e' g'>2 |  % T8 S2
  <aes c' f'>8.\f <aes c' f'>16 <f' aes' f''>4 <f' bes' des''>4 |  % T9 S3
  << { bes'4 <ees' aes' ees''>4 <ees' aes' c''>4 } \\ { <bes ees' g'>8.[ <bes ees' g'>16] s2 } >> |  % T10 S3
  <aes f' aes'>8 <bes f' bes'>8 <c' f' c''>4 <des' g' bes'>4 |  % T11 S3
  <c' f' aes'>8 <bes e' g'>8 <aes c' f'>2 |  % T12 S3
}

links = {
  << { aes8[ g8] f4 <ees, ees>4 } \\ { f,2 s4 } >> |  % T1 S1
  << { <des, des>4 <c, c>4 <bes,, bes,>4 } >> |  % T2 S1
  <aes,, aes,>8 <a,, a,>8 <bes,, bes,>2 |  % T3 S1
  <c, c>4 <f, c>2 |  % T4 S1
  <des, des>8. <c, c>16 <bes,, bes,>4 <bes,, bes,>4 |  % T5 S2
  <ees, ees>8. <des, des>16 <c, c>4 <aes,, aes,>4 |  % T6 S2
  <des des,>4 <aes,, aes,>4 <bes,, bes,>4 |  % T7 S2
  <b, b,,>4 <c, c>2 |  % T8 S2
  <f, f>8. <ees, ees>16 <des, des>4 <bes,, bes,>4 |  % T9 S3
  <ees, ees>8. <des, des>16 <c, c>4 <aes,, aes,>4 |  % T10 S3
  <des, des>4 <aes,, aes,>4 <bes,, bes,>4 |  % T11 S3
  <c, c>4 <f, c>2 |  % T12 S3
}
