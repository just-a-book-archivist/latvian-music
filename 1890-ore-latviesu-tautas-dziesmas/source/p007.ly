% Printed page 7: voice (canto), piano right hand (rechts), left hand (links),
% one measure per line, `% T<n> S<system>` = measure and system on the page; checked
% measure by measure against the print. `% kopf T<n>:` = key and time from that measure.
% The songs in ../songs/ are assembled from these files.
\version "2.24.0"
% kopf T1: \key ees \major \time 2/4

canto = {
  \partial 8 g'8\mf |  % T1 S1
  g'8 g'8 ees''8[ d''8] |  % T2 S1
  c''8\fermata ees''8\p d''8 c''8 |  % T3 S1
  bes'4 g'8\mf g'8 |  % T4 S1
  c''8 g'8 aes'16[ g'16] f'8 |  % T5 S1
  c''4 bes'8 bes'8 |  % T6 S1
  c''8 g'8 aes'16[ g'16] f'8 |  % T7 S1
  g'4\fermata r8 \bar "|." %{dauer 3/8%} |  % T8 S1
}

rechts = {
  \partial 8 <g d' f' g'>8 |  % T1 S1
  << { <g c' ees' g'>8[ <g b f' g'>8] ees''8[ d''8] } \\ { s4 <f' g'>4 } >> |  % T2 S1
  << { <aes' c''>8\fermata <aes' ees''>8^\p[ d''8 c''8] } \\ { ees'8 ees'4~ ees'8 } >> |  % T3 S1
  <bes ees' bes'>4 <bes ees' g'>8^\f <g d' g'>8 |  % T4 S1
  <c' ees' c''>8[ <g d' g'>8] << { aes'16[ g'16 f'8] } \\ { <aes c'>8[ <aes c'>8] } >> |  % T5 S1
  <c' ees' c''>4 <bes ees' bes'>8 <ees' g' bes'>8 |  % T6 S1
  <c' g' c''>8[ <g d' g'>8] <aes c' aes'>8[ <aes d' f'>8] |  % T7 S1
  <g bes ees' g'>4 r8 %{dauer 3/8%} |  % T8 S1
}

links = {
  \partial 8 <b,, b,>8 |  % T1 S1
  <c, c>8[ <d, d>8] <g, d b>4 |  % T2 S1
  << { s8 c'8[ bes!8 aes8] } \\ { <aes, aes>8 ees4. } >> |  % T3 S1
  << { g8[( f8] ees8) } \\ { ees4 s8 } >> <b,, b,>8 |  % T4 S1
  <c, c>8[ <bes,,! bes,!>8] <f, f>8[ <aes, f>8] |  % T5 S1
  <aes, aes>4 <g, g>4 |  % T6 S1
  <ees, ees>8[ <bes,, bes,>8] <f, f>8[ <bes,, bes,>8] |  % T7 S1
  <ees, ees>4 r8 %{dauer 3/8%} |  % T8 S1
}
dynamik = {
  \partial 8 s8\mf |  % T1 S1
  s2 |  % T2 S1
  s2 |  % T3 S1
  s2 |  % T4 S1
  s2 |  % T5 S1
  s2 |  % T6 S1
  s2 |  % T7 S1
  s4. %{dauer 3/8%} |  % T8 S1
}
