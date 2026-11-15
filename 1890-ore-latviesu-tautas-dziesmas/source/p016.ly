% Printed page 16: voice (canto), piano right hand (rechts), left hand (links),
% one measure per line, `% T<n> S<system>` = measure and system on the page; checked
% measure by measure against the print. `% kopf T<n>:` = key and time from that measure.
% The songs in ../songs/ are assembled from these files.
\version "2.24.0"
% kopf T1: \key e \major \time 3/4

canto = {
  \tempo "Andante." 4 = 72 \partial 4 b'8.\p b'16 |  % T1 S1
  cis''4 b'4 fis'8 gis'8 |  % T2 S1
  a'4 gis'4 e'8. e'16 |  % T3 S1
  gis'4 fis'4 fis'8 dis'8 |  % T4 S1
  e'2 b'8.\f b'16 |  % T5 S2
  e''4 dis''4 gis'8. gis'16 |  % T6 S2
  cis''4 b'4 fis'8 gis'8 |  % T7 S2
  a'4 cis''4 b'8 a'8 |  % T8 S2
  gis'2 e''8.\pp e''16 |  % T9 S2
  e''4 dis''4 cis''8. cis''16 |  % T10 S3
  cis''4 b'8[ a'8] gis'8\mf a'8 |  % T11 S3
  cis''4 b'4 a'8 fis'8 |  % T12 S3
  e'2 \bar "|." %{dauer 2/4%} |  % T13 S3
}

rechts = {
  \partial 4 << { b'4 } \\ { <e' gis'>8\p[ <dis' fis'>8] } >> |  % T1 S1
  <cis' e' cis''>4 <b e' b'>4 <cis' fis'>8[ <b e' gis'>8] |  % T2 S1
  <b dis' a'>4 <b e' gis'>4 << { e'4 } \\ { gis8[ <gis d'>8] } >> |  % T3 S1
  <cis' e' gis'>4 <ais cis' fis'>4 <fis cis' fis'>8[ <a b dis'>8] |  % T4 S1
  <gis b e'>2 <b e' gis' b'>8.\f[ <b fis' b'>16] |  % T5 S2
  << { e''4 dis''4 } \\ { <e' gis'>4 <dis' gis'>4 } >> <b dis' gis'>8.[ <b dis' gis'>16] |  % T6 S2
  <cis' e' cis''>4 <b e' b'>4 <a cis' fis'>8[ <b eis' gis'>8] |  % T7 S2
  <cis' e'! a'>4 <e' fis' cis''>4 <dis' fis' b'>8[ <b fis' a'>8] |  % T8 S2
  << { <b e' gis'>2 e''8.^\pp[ e''16] } \\ { s2 <gis' b'>8.[ <g' b'>16] } >> |  % T9 S2
  <cis' g' bes' e''>4 <dis' fis' b' dis''>4 <fis' cis''>8.[ <fis' cis''>16] |  % T10 S3
  << { cis''4 b'8[ a'8] <e' gis'>8[ <dis' a'>8] } \\ { dis'4 dis'4 b4\mf } >> |  % T11 S3
  <dis' fis' cis''>4 <e' gis' b'>4 <cis' e' a'>8[ <a dis' fis'>8] |  % T12 S3
  <gis b e'>2 %{dauer 2/4%} |  % T13 S3
}

links = {
  \partial 4 e8[ fis16 gis16] |  % T1 S1
  <a, a>4 <gis, gis>4 a8[ gis8] |  % T2 S1
  <fis, fis>4 <e, e>8[ d8] cis8[ b,8] |  % T3 S1
  <ais,, ais,>4 fis,8[ gis,8] a,8[ b,8] |  % T4 S1
  e8[ b,8 gis,8 fis,8] <e, e>8.[ <dis, dis>16] |  % T5 S2
  <cis, cis>4 <b,, b,>8[ <dis, dis>8] <gis, gis>8.[ <fis, fis>16] |  % T6 S2
  <e, e>4 <gis,, gis,>4 <a,, a,>8[ <gis,, gis,>8] |  % T7 S2
  <fis,, fis,>8[ <gis,, gis,>8] <a,, a,>4 <b,, b,>8[ <dis, dis>8] |  % T8 S2
  <e, e>2 s4 |  % T9 S2
  s2 <a e'>8.[ <a dis'>16] |  % T10 S3
  << { a4 b8[ c'8] } \\ { fis4 fis4 } >> <e, e>8[ <fis, fis>8] |  % T11 S3
  <a, a>4 <gis, gis>4 <b,, b,>4 |  % T12 S3
  <e, b,>2 %{dauer 2/4%} |  % T13 S3
}
