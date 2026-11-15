% Printed page 8: voice (canto), piano right hand (rechts), left hand (links),
% one measure per line, `% T<n> S<system>` = measure and system on the page; checked
% measure by measure against the print. `% kopf T<n>:` = key and time from that measure.
% The songs in ../songs/ are assembled from these files.
\version "2.24.0"
% kopf T1: \key aes \major \time 3/4

canto = {
  \tempo "Allegretto." 4 = 108 ees''8. f''16 ees''4 c''4 |  % T1 S1
  des''8. f''16 bes'4 bes'4 |  % T2 S1
  aes'8. aes'16 des''4 des''4 |  % T3 S1
  c''8. c''16 bes'4 r4 |  % T4 S1
  c''8. des''16 ees''4 ees''4 |  % T5 S2
  f''8. ees''16 des''8[ c''8] bes'4 |  % T6 S2
  aes'8. c''16 ees''4 ees''4 |  % T7 S2
  des''8 des''8 c''4 r4 |  % T8 S2
  R2. \bar "|." |  % T9 S2
}

rechts = {
  << { ees''8.[ f''16] ees''4 c''4 } \\ { aes'4 aes'8[ ees'8] aes'8[ ees'8] } >> |  % T1 S1
  << { des''8.[ f''16] bes'4 bes'4 } \\ { g'4 ees'8[ bes8] ees'8[ bes8] } >> |  % T2 S1
  << { aes'4 des''4 des''4 } \\ { ees'16[ c'16 des'16 ees'16] f'8[ bes8] ees'8[ bes8] } >> |  % T3 S1
  << { c''4 bes'2 } \\ { ees'16[ c'16 ees'16 aes'16] ees'8[ bes8] <ees' g'>8[ bes8] } >> |  % T4 S1
  << { c''8.[ des''16] ees''4 ees''4 } \\ { aes'4 aes'8[ ees'8] g'8[ ees'8] } >> |  % T5 S2
  << { f''8.[ ees''16] <f' des''>8[ <ees' c''>8] bes'4 } \\ { a'8.[ f'16] s4 des'16[ c'16 des'16 f'16] } >> |  % T6 S2
  << { aes'16[ g'16 aes'16 c''16] ees''4\arpeggio ees''4\arpeggio } \\ { ees'4 g'8\arpeggio[ ees'8] aes'8\arpeggio[ ees'8] } >> |  % T7 S2
  << { des''4\arpeggio <ees' aes' c''>2~ } \\ { g'16\arpeggio[ ees'16 f'16 g'16] s2 } >> |  % T8 S2
  << { <aes' c''>2 } \\ { <c' ees'>2 } >> r4 |  % T9 S2
}

links = {
  << { c'16[ des'16 c'16 des'16] s2 } \\ { aes4 <aes c'>4 aes,4 } >> |  % T1 S1
  << { bes16[ c'16 bes16 des'16] s2 } \\ { ees4 <ees g>4 <des g>4 } >> |  % T2 S1
  <c aes>4 <bes, aes>4 <bes, g>4 |  % T3 S1
  << { aes8[ ees8] } \\ { aes,4 } >> <ees g>4 <ees, ees>4 |  % T4 S1
  << { ees'16[ f'16 ees'16 f'16] s4 bes4 } \\ { aes4 <aes c'>4 ees8[ g8] } >> |  % T5 S2
  << { c'16[ des'16 c'16 a16] bes8[ a8] bes4 } \\ { f4 bes,4 bes,16[ a,16 bes,16 des16] } >> |  % T6 S2
  << { c'16[ bes16 c'16 ees'16] des'4\arpeggio c'4\arpeggio } \\ { ees4 ees4\arpeggio ees4\arpeggio } >> |  % T7 S2
  << { bes4\arpeggio aes2 } \\ { ees8\arpeggio[ ees,8] aes,16[ g,16 aes,16 c16] ees8[ g8] } >> |  % T8 S2
  << { aes2 } \\ { aes,2 } >> r4 |  % T9 S2
}
