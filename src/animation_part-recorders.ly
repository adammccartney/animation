\version "2.18.2"

%\include "ra_songOne_mezzoSopran.ly"

\include "animation_recorders.ly"


%\include "205_piano_2iv.ly"

instrument = ""
\book {
  
  \include "animation_header_recorders.ly"
  \paper {
    #(set-paper-size "a3")
  line-width = 230\mm
  two-sided = ##t
  %inner-margin = 23\mm 
  %outer-margin = 25\mm 
  %ragged-right = ##f
  %ragged-last = ##f
  
  min-systems-per-page = #3
  max-systems-per-page = #8
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

\new StaffGroup<<

	  \new Staff \with {
		instrumentName = \markup{ "Kb Paetz."} 
		shortInstrumentName = #"ptz."
		midiInstrument = "recorder"
	  }{\accidentalStyle modern \animation_recorders}
	  

	  >> % StaffGroup


>>%Score
  
	  

	\header {piece = ""}
	
	
	\layout {
	  
	   indent = 1\cm
           % Increase the size of the bar number by 2
           \override Score.BarNumber.font-size = #2
        
           \set Score.markFormatter = #format-mark-box-alphabet
           \override Score.RehearsalMark.font-size = #5 
           \set Staff.barAlways = ##t
           \set Staff.defaultBarType = "" 
           
           \context {
                     \Score

                     
                    }
  
           \context {
                     \Staff

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
   
  
  