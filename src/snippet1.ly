% By using this template you can use the full power of LilyPond.
% For more information plase read the LilyPond documentation:
% http://lilypond.org/doc/v2.12/Documentation/index.html (english)
% http://lilypond.org/doc/v2.12/Documentation/index.de.html (Deutsch)
% http://lilypond.org/doc/v2.12/Documentation/index.fr.html (français)

\version "2.18.2"

\include "lilypond-book-preamble.ly"
\include "deutsch.ly"
#(set-global-staff-size 20)

\paper {
  #(define dump-extents #t)
  ragged-right = ##t
  line-width = 17\cm
}

\layout {
  indent = #0
  \context {
    \Score
    \remove "Bar_number_engraver"
  }
}


  %% Macros

beamAccel = { \override Beam.grow-direction = #RIGHT }
  
beamDeccel = { \override Beam.grow-direction = #LEFT }
  
beamNeutral = { \override Beam.grow-direction = #f }
  
music = {  
    r4 f''2\pp r4 \bar "|"
    r4 
    \beamAccel
    \repeat tremolo 12 { d''32 f'' } \bar "|"
    \beamDeccel
    \repeat tremolo 8 { d''32 f'' } 
    \beamNeutral
    r4 \repeat tremolo 4 { d''32 f'' } \bar "|"
    \repeat tremolo 4 { c''32 d'' } r2. \bar "|"
    
    %r4 \repeat unfold 4 { d''32[ g'' d'' bes''] } r4 \bar "|"
}


\new Staff {\time 4/4 \music}
