\version "2.18.2"

%\include "ra_songOne_mezzoSopran.ly"

\include "animation_synth.ly"


%\include "205_piano_2iv.ly"

instrument = ""
\book {
  
  \include "animation_header-synth.ly"
  \paper {
    #(set-paper-size "a3")
  line-width = 230\mm
  two-sided = ##t
  %inner-margin = 23\mm 
  %outer-margin = 25\mm 
  %ragged-right = ##f
  %ragged-last = ##f
  
  min-systems-per-page = #3
  max-systems-per-page = #7
  system-system-spacing.padding = #15  %fit staves closer together
  system-system-spacing.stretchability = #15 %how flexible the spacing is


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


	  
	  \new Staff \with {
		instrumentName = #"Synthesizer"
		shortInstrumentName = #"Synth."
		midiInstrument = #"string ensemble 1"
		  } 
	  {\accidentalStyle modern 
	   \compressEmptyMeasures
	   \animation_synth}
	
	  
	  
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
   
  
  