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

staffUpper = {\change Staff = "1" \stemDown}
staffLower = {\change Staff = "2" \stemUp}
startRepeat = {\set Score.repeatCommands = #'(start-repeat)}
endRepeat = {\set Score.repeatCommands = #'(end-repeat)}
beamAccel = { \override Beam.grow-direction = #RIGHT }
beamDeccel = { \override Beam.grow-direction = #LEFT }
beamNeutral = { \override Beam.grow-direction = #f }

startRit = { \override TextSpanner.bound-details.left.text =
             \markup { \upright "rit." } }
  
music_right = {  
    s1 \bar "|"
    s1 \bar "|"
    s1 \bar "|"
    %s1 \bar "|"
    
    %r4 \repeat unfold 4 { d''32[ g'' d'' bes''] } r4 \bar "|"
}

music_left = {
    d'8\p-. r8 
    \repeat tremolo 6 { d'16 f' }\bar "|" 
    d'8-. r8 \repeat tremolo 6 { <d' eis'>16 \staffUpper f' } \staffLower  \bar "|"
    f'8-. r8 \repeat tremolo 6 { eis'16 f' } \bar "|"
    %<bes f'>8-. r8 \repeat tremolo 6 { <eis' ais'>16 \staffUpper <f' bes'> } \bar "|"

}


\new GrandStaff {
  <<\context Staff = "1" 
            \context Voice = music_right {  \music_right }
          \context Staff = "2" 
            \context Voice = music_left { \music_left }
>>
}
