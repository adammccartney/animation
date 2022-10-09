\version "2.18.2"

%\include "ra_songOne_mezzoSopran.ly"

\include "animation_cembalo.ly"

%\include "205_piano_2iv.ly"

instrument = ""
\book {
  
  \include "animation_header_cembalo.ly"
  \paper {
    #(set-paper-size "a3")
  line-width = 230\mm
  two-sided = ##t
  %inner-margin = 23\mm 
  %outer-margin = 25\mm 
  %ragged-right = ##f
  %ragged-last = ##f
  
  min-systems-per-page = #3
  max-systems-per-page = #6
  system-system-spacing.padding = #15  %fit staves closer together
  system-system-spacing.stretchability = #15  %how flexible the spacing is


 myStaffSize = #20
  #(define fonts
    (make-pango-font-tree "Times New Roman"
                          "Nimbus Sans"
                          "Luxi Mono"
                          
                           (/ myStaffSize 20))) 
  
  }


  %%%%% 1st Movement - Adagio
  
  \score {
<<
	  
	  \new PianoStaff = "cembalo"
	 \with {
		instrumentName = #"Cembalo"
		shortInstrumentName = #"Cemb."
		midiInstrument = #"harpsichord"
	  }<<
          \context Staff = "upper" 
            \context Voice = animation_cembalo_right { \key c \major \accidentalStyle modern \animation_cembalo_right }
          \context Staff = "lower" 
            \context Voice = animation_cembalo_left  { \key c \major \accidentalStyle modern \animation_cembalo_left }
          >>
	 %} 
>>%Score
  
	  

	\header {piece = ""}
	
	
	\layout {
	  
	   indent = 1\cm
           % Increase the size of the bar number by 2
           \override Score.BarNumber.font-size = #2
        
           \set Score.markFormatter = #format-mark-box-alphabet
           \override Score.RehearsalMark.font-size = #5 
           \set Staff.defaultBarType = "|" 
           
           \context {
                     \Score
                     
                     
                    }
  
           \context {
                     \Staff
      
                    % \RemoveEmptyStaves

                    }
           
                    
           %{\context {
                     \Voice
                     % Permit line breaks within tuplets
                     \remove "Forbid_line_break_engraver"
                     % Allow beams to be broken at line breaks
                     \override Beam.breakable = ##t
                     %% Allows to line break in the 
                     \remove Forbid_line_break_engraver
                    }
             %} 
                
	        }
	        
	
	\midi {} 
                    }
  }
   
  
  