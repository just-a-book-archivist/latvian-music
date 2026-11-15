% Printed page 5: voice (canto), piano right hand (rechts), left hand (links),
% one measure per line, `% T<n> S<system>` = measure and system on the page; checked
% measure by measure against the print. `% kopf T<n>:` = key and time from that measure.
% The songs in ../songs/ are assembled from these files.
\version "2.24.0"
% kopf T1: \key g \major \time 4/4

canto = {
  \tempo "Largo." 4 = 50 e'4\pp fis'4 g'4\< g'4 |  % T1 S1
  a'4 a'4 a'4\! a'4^\markup { \italic "cresc." } |  % T2 S1
  b'4 b'4 e''4 e''4 |  % T3 S1
  d''4\f d''8[ c''8] b'4 r4 |  % T4 S1
  b'4\mf a'4\< g'4 g'4 |  % T5 S2
  a'4\> a'4 e'4 fis'4\! |  % T6 S2
  g'4\p g'4 fis'4 fis'4\> |  % T7 S2
  e'4\!^\markup { \italic "rit." } e'4 e'2\fermata \bar "|." |  % T8 S2
}

rechts = {
  << { <g b e'>4 <a c' fis'>4 g'2 } \\ { s2\pp <b e'>8[ fis'8 e'8 d'8] } >> |  % T1 S1
  << { a'2 <d' fis' a'>2 } \\ { <c' g'>4 <cis' g'>4 s2 } >> |  % T2 S1
  << { b'2 s2 } \\ { <d' g'>4_\markup { \italic "cresc." } <dis' fis'>4 <e' b' e''>4 <g' c'' e''>4 } >> |  % T3 S1
  << { <a' d''>4. c''8 <d' g' b'>4 } \\ { d'2\f s4 } \\ { s4 fis'4 s4 } >> r4 |  % T4 S1
  <d' g' b'>4\mf <c' fis' a'>4 <b fis' g'>4\< <b e' g'>4\! |  % T5 S2
  << { <e' a'>4 <d' a'>4 e'4 fis'4 } \\ { a2\> c'2\! } >> |  % T6 S2
  <b g'>4\p <b e' g'>4 << { fis'2 } \\ { <c' e'>4\> <b dis'>4\! } >> |  % T7 S2
  << { e'!2 s2 } \\ { <b d'>4_\markup { \italic "rit." } <a c'>4 <gis b e'>2 } >> |  % T8 S2
}

links = {
  <e, e>2 <e, e>2 |  % T1 S1
  << { <e, e>4 <ees, ees>4 d8[ e8 d8 c8] } \\ { s2 d,4 s4 } >> |  % T2 S1
  b,4 <a, a>4 <g, g>8 <fis, fis>8 <e, e>4 |  % T3 S1
  <fis, fis>4 <d, d>4 <g, g>4 r4 |  % T4 S1
  << { d4 dis4 e4 g4 } \\ { g,2. e8 d8 } >> |  % T5 S2
  << { e2 e2 } \\ { c4 b,4 a,2 } >> |  % T6 S2
  <b, e>8 [e,8 fis,8 g,8] <a, a,,>4 <b,, b,>8[ <a,, a,>8] |  % T7 S2
  <gis,, gis,>4 <a,, a,>4 <e, e>2 |  % T8 S2
}
