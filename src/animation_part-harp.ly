\version "2.18.2"


\include "animation_harp.ly"


instrument = ""
\book {
  
  \include "animation_header_harp.ly"
  \paper {
    #(set-paper-size "a3")
  line-width = 230\mm
  two-sided = ##t
  %inner-margin = 23\mm 
  %outer-margin = 25\mm 
  %ragged-right = ##f
  %ragged-last = ##f
  
  min-systems-per-page = #3
  max-systems-per-page = #12
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




     \new GrandStaff = "harp"
	 \with {
		instrumentName = #"Harp"
		shortInstrumentName = #"Hp."
		midiInstrument = #"acoustic guitar (nylon)"
	  }<<
          \context Staff = "1" 
            \context Voice = animation_harp_right { \key c \major \tempo 4 = 50 \accidentalStyle modern \animation_harp_right }
          \context Staff = "2" 
            \context Voice = animation_harp_left { \key c \major \tempo 4 = 50 \accidentalStyle modern \animation_harp_left }
          >>
 

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
   
  
  
