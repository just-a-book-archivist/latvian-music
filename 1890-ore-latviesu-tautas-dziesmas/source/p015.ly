% Printed page 15: voice (canto), piano right hand (rechts), left hand (links),
% one measure per line, `% T<n> S<system>` = measure and system on the page; checked
% measure by measure against the print. `% kopf T<n>:` = key and time from that measure.
% The songs in ../songs/ are assembled from these files.
\version "2.24.0"
% kopf T1: \key bes \major \time 2/4

canto = {
  \tempo "Allegro." 4 = 120 f''8 ees''8 c''8 a'8 |  % T1 S1
  d''8 bes'8 c''16[ bes'16] a'16[ g'16] |  % T2 S1
  f'8 a'8 c''8 f''8 |  % T3 S1
  g''8 f''8 d''4 |  % T4 S1
  f''8 ees''8 c''8 a'8 |  % T5 S2
  d''8 bes'8 c''16[ bes'16] a'16[ g'16] |  % T6 S2
  f'8 g'8 a'8 d''16[ c''16] |  % T7 S2
  bes'8 bes'8 bes'4 \bar "|." |  % T8 S2
}

rechts = {
  r8 <c' f' a'>8 <c' f' a'>4 |  % T1 S1
  r8 <d' f' bes'>8 <d' f' bes'>4 |  % T2 S1
  a''16[ bes''16 a''16 g''16] f''16[ ees''16 d''16 c''16] |  % T3 S1
  bes'16[ c''16 d''16 ees''16] f''16[ g''16 a''16 bes''16] |  % T4 S1
  <a'' f'''>8[ <c''' ees'''>16 <bes'' d'''>16] <a'' c'''>8[ <f'' a''>8] |  % T5 S2
  <f'' d'''>8[ <f'' bes''>8] <g'' c'''>16[ bes''16 a''16 g''16] |  % T6 S2
  a''16[ bes''16 a''16 g''16] f''16[ ees''16 d''16 c''16] |  % T7 S2
  bes'16[ c''16 bes'16 a'16] bes'4 |  % T8 S2
}

links = {
  <f, f>4 r4 |  % T1 S1
  <bes,, bes,>4 r4 |  % T2 S1
  <f, f>8[ <a c' f'>8] <a c' f'>4 |  % T3 S1
  <bes,, bes,>8[ <f bes d'>8] <f bes d'>4 |  % T4 S1
  <f, f>8[ <a c' f'>8] <a c' f'>4 |  % T5 S2
  <bes,, bes,>8[ <f bes d'>8] <ees g c'>4 |  % T6 S2
  <f, f>8[ <a c' f'>8] <a c' f'>4 |  % T7 S2
  <bes,, bes,>8[ <f bes d'>8] <f bes d'>4 |  % T8 S2
}
