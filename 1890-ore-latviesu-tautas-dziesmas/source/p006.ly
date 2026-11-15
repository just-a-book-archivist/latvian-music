% Printed page 6: voice (canto), piano right hand (rechts), left hand (links),
% one measure per line, `% T<n> S<system>` = measure and system on the page; checked
% measure by measure against the print. `% kopf T<n>:` = key and time from that measure.
% The songs in ../songs/ are assembled from these files.
\version "2.24.0"
% kopf T1: \key aes \major \time 3/4

canto = {
  \tempo "Moderato." 4 = 100 aes'8\p bes'8 c''4 c''4 |  % T1 S1
  bes'8\< c''8 des''4\! bes'4\> |  % T2 S1
  c''8\mf des''8\< ees''4 ees''4 |  % T3 S1
  des''8\> c''8 bes'4\! r4 |  % T4 S1
  c''8\f ees''8 aes''4 aes''4 |  % T5 S2
  aes''8 ees''8 c''4 c''4 |  % T6 S2
  f''8 ees''8 des''4 bes'4\> |  % T7 S2
  c''8 bes'8\! aes'2 \bar "|." |  % T8 S2
}

rechts = {
  << { <ees' aes'>8[ <ees' bes'>8] } \\ { c'4 } >> <c' ees' c''>4 <c' ees' c''>4 |  % T1 S1
  << { bes'8[ c''8] des''4 bes'4 } \\ { ees'4 <ees' g'>4 ees'4 } >> |  % T2 S1
  << { <aes' c''>8[ <g' des''>8] } \\ { ees'4 } >> <ees' aes' ees''>4 <ees' aes' ees''>4 |  % T3 S1
  << { <bes' des''>8[ <aes' c''>8] <g' bes'>2 } \\ { ees'2. } >> |  % T4 S1
  <ees' aes' c''>8[ <ees' bes' ees''>8] <aes' c'' aes''>4 <aes' f'' aes''>4 |  % T5 S2
  <aes' ees'' aes''>8[ <aes' c'' ees''>8] <ees' aes' c''>4 <ees' aes' c''>4 |  % T6 S2
  <f' aes' f''>8[ <ges' c'' ees''>8] <f' bes' des''>4 <des' f' bes'>4 |  % T7 S2
  << { g'4 <c' ees' aes'>2 } \\ { <des' c''>8[ <des' bes'>8] s2 } >> |  % T8 S2
}

links = {
  << { aes8[ ees8] aes8[ ees8] aes8[ ees8] } \\ { aes,4 aes,4 aes,4 } >> |  % T1 S1
  << { g8[ aes8] bes4 } \\ { des8[ c8] bes,8[ ees8] } >> <g bes>4 |  % T2 S1
  << { aes8[ bes8] <aes c'>4 <aes c'>4 } \\ { ees4 aes8[ ees8] aes8[ ees8] } >> |  % T3 S1
  << { g8[ aes8] bes8[ g8 ees8 bes,8] } \\ { ees4 s2 } >> |  % T4 S1
  <aes, aes>8[ <g, g>8] <f, f>8[ <ees, ees>8] <des, des>4 |  % T5 S2
  <c, c>8[ <ees, ees>8 <aes, aes>8 <g, g>8 <ges, ges>8 <ees, ees>8] |  % T6 S2
  <des, des>4~ <des, des>8[ bes,8 c8 des8] |  % T7 S2
  ees8[ ees,8] <aes,, aes,>2 |  % T8 S2
}
dynamik = {
  s4\p s2 |  % T1 S1
  s8\< s8 s4\> s4 |  % T2 S1
  s8\mf s8\< s4 s4 |  % T3 S1
  s4\> s4\! s4 |  % T4 S1
  s4\f s2 |  % T5 S2
  s2. |  % T6 S2
  s2 s4\> |  % T7 S2
  s4\! s2 |  % T8 S2
}
