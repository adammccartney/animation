\version "2.18.2"

\addInstrumentDefinition #"Alto Recorder"
  #`((instrumentTransposition . ,(ly:make-pitch 0 0 0))
     (shortInstrumentName . "Alt.")
     (instrumentCueName . ,(make-bold-markup "Change to Alto Recorder"))
     (midiInstrument . "flute"))
  
  \addInstrumentDefinition #"Tenor Recorder"
  #`((instrumentTransposition . ,(ly:make-pitch 0 0 0))
     (shortInstrumentName . "Ten.")
     (instrumentCueName . ,(make-bold-markup "Change to Tenor Recorder"))
     (midiInstrument . "flute"))
  
    \addInstrumentDefinition #"Contrabass Paetzold in F"
  #`((instrumentTransposition . ,(ly:make-pitch 0 0 0))
     (shortInstrumentName . "Paetz.")
     (instrumentCueName . ,(make-bold-markup "Change to Paetzold"))
     (midiInstrument . "flute"))
  
  %%%%%%%%
  %%%%%%%%Macros
  %%%%%%%%
  
  beamAccel = { \override Beam.grow-direction = #RIGHT }
  
  beamDeccel = { \override Beam.grow-direction = #LEFT }
  
  beamNeutral = { \override Beam.grow-direction = #f }
  
  startRit = { \override TextSpanner.bound-details.left.text =
             \markup { \upright "rit." } }

  %%%%%%%%
  %%%%%%%%
  %%%%%%%%
  
animation_recorders =
  {
    
    %% Ostinato
    \time 4/4
    \tempo 4 = 50
    \clef "bass"
    r1
    \bar "|"
    r4 f2\pp r4 \bar "|"
    r4 
    \beamAccel
    \repeat tremolo 12 { d32 f } \bar "|"
    \beamDeccel
    \repeat tremolo 8 { d32 f } 
    \beamNeutral
    r4 \repeat tremolo 4 { d32 f } \bar "|"
    \repeat tremolo 4 { c32 d } r2. \bar "|"
    
    r4 \repeat unfold 4 { d32[ g d bes] } r4 \bar "|"
    r4 
    \beamAccel
    \repeat tremolo 12 { a32 bes } \bar "|"
    \beamDeccel
    \repeat tremolo 8 { a32 g } r4 
    \beamNeutral
    \repeat tremolo 4 { d32 f } \bar "|"
    \repeat tremolo 4 { d32 f } r2. \bar "|"
    
    r4 \repeat unfold 4 { d32[ es d g] } r4 \bar "|"
    \mark #1
    \barNumberCheck #11
    r4 es2. \bar "|"
    g2 r4 f4 ~ \bar "|"
    f4 r2. \bar "|"
    
    r4 \repeat unfold 4 { c32[ d c f] } r4 \bar "|"
    r4 a2. ~ \bar "|"
    a2 r4 \repeat tremolo 4 { es32 g } \bar "|"
    \repeat tremolo 4 { es32 g } r2. \bar "|"
    
    r4 \repeat tremolo 8 { bes32 c' } r4 \bar "|"
    r4 \repeat tremolo 12 { g32 bes } \bar "|"
    \repeat tremolo 4 { g32 bes } r2 \repeat tremolo 4 { d32 es } \bar "|"
    \repeat tremolo 4 { d32 es } r2. \bar "|"
    
    r4 \repeat tremolo 8 { a32 c' } r4 \bar "|"
    r4 \repeat tremolo 12 { f32 a } \bar "|"
    \repeat tremolo 4 { f32 a } r2 \repeat tremolo 4 { c32 es } \bar "|"
    \repeat tremolo 4 { c32 es } r2. \bar "|"
    
    
    r1 \bar "|" r1 \bar "|"
    r1 \bar "|" r1 \bar "|"
    
    \mark #2
    \barNumberCheck #30
    r4 \repeat tremolo 8 { d32 f } r4 \bar "|"
    r4 \repeat tremolo 12 { f32 g } \bar "|"
    \repeat tremolo 4 { f32 g } r2 \repeat tremolo 4 { es32 g } \bar "|"
    \repeat tremolo 4 { es32 g } r2. \bar "|"
    
    r4 \repeat tremolo 8 { a32 g } r4 \bar "|"
    r4 \repeat tremolo 12 { es32 g } \bar "|"
    \repeat tremolo 4 { es32 g } r2 \repeat tremolo 4 { d32 f } \bar "|"
    \repeat tremolo 4 { d32 f } r2. \bar "|"

    

    r4 c'2 r4 \bar "|"
    r4 
    \beamAccel
    \repeat tremolo 12 { d32 f } \bar "|"
    \beamDeccel
    \repeat tremolo 8 { d32 f } r4 
    \beamNeutral
    \repeat tremolo 4 { es32 g } \bar "|"
    \repeat tremolo 4 { es32 g } r2. \bar "|"
    
    \mark #3
    \barNumberCheck #42
    r4 \repeat unfold 4 { a32[ bes a d'] } r4 \bar "|"
    r4 \repeat unfold 6 { g32[ a g c'] } \bar "|"
    \repeat unfold 4 { g32[ a g c'] } r4 \repeat tremolo 4 { d32 f } \bar "|"
    \repeat tremolo 4 { d32 f } r2. \bar "|"

    r4 c'2 r4 \bar "|"
    r4 e2. ~ \bar "|"
    e2 r4 \repeat tremolo 4 { es32 g } \bar "|"
    \repeat tremolo 4 { es32 g } r2. \bar "|"
    

    r4 \repeat tremolo 8 { f32 g } r4 \bar "|"
    r4 \repeat tremolo 12 { bes32 d' } \bar "|"
    \repeat tremolo 8 { bes32 d' } r4 \repeat tremolo 4 { a32 bes } \bar "|"
    \repeat tremolo 4 { a32 bes } r2. \bar "|"
    
    r4 \repeat tremolo 8 { f32 a } r4 \bar "|"
    r4 \repeat unfold 6 { bes32[ c' bes e'] } \bar "|"
    \repeat unfold 4 { bes32[ c' bes e'] } r4 \repeat tremolo 4 { a32 c' } \bar "|"
    \repeat tremolo 4 { a32 c' }  r2. \bar "|"
    
    r4 \repeat tremolo 8 { f32 g } r4 \bar "|"
    r4 \repeat tremolo 12 { bes32 d' } \bar "|"
    \repeat tremolo 8 { bes32 d' } r4 \repeat tremolo 4 { a32 bes } \bar "|"
    \repeat tremolo 4 { a32 bes } r2. \bar "|"
    
    r4 \repeat tremolo 8 { f32 a } r4 \bar "|"
    r4 \repeat unfold 6 { bes32[ c' bes f'] } \bar "|"
    \repeat unfold 4 { bes32[ c' bes f'] } r4 \repeat tremolo 4 { a32 c' } \bar "|"
    \repeat tremolo 4 { a32 c' } r2. \bar "|"


    %% Section Three
    %% Mod Five third down
    \time 5/8 
    \mark #4
    r4 c4.\fp |
    r4 c4.\fp |
    r4 c4.\fp |
    \time 7/8
    r2 f4.\fp |
    
    \time 5/8
    r4 c4.\fp |
    r4 c4.\fp |
    r4 d4.\fp |
    \time 7/8
    r2 d4.\fp |
    
    \time 5/8
    r4 d4.\fp |
    r4 d4.\fp |
    r4 d4.\fp |
    \time 7/8
    r2 d4.\fp |
    
    \time 5/8
    r4 d4.\fp |
    r4 d4.\fp |
    r4 d4.\fp |
    \time 7/8
    r2 d4.\fp |
    
    \mark #5
    \time 5/8
    r4 f4.\fp |
    r4 f4.\fp |
    r4 bes,4.\fp |
    \time 7/8
    r2 bes,4.\fp |

    \time 5/8
    r4 bes,4.\fp |
    r4 bes,4.\fp |
    r4 bes,4.\fp |
    \time 7/8
    r2 bes,4.\fp |
    
    \time 5/8
    r4 g,4.\fp |
    r4 g,4.\fp |
    r4 g,4.\fp |
    \time 7/8
    r2 g,4.\fp |
    
    \time 5/8
    r4 g,4.\fp |
    r4 g,4.\fp |
    r4 g,4.\fp |
    \time 7/8
    r2 g,4.\fp |
    
    \time 5/8
    r4 f,4. \fp|
    r4 f,4.\fp |
    r4 f,4.\fp |
    \time 7/8
    r2 f,4. |
    
    \time 2/4
    r2\fermata |
    
    
    \time 4/4
    \tempo 4 = 80
    \clef bass
    \break
    \mark #6
    r1 \bar "|" 
    %% Repeat One

    cis1\fp\> ~ \bar"|"
    cis2\!\pp r2 \bar"|"
    cis1\fp\> ~ \bar"|"
    cis2\!\pp r2 \bar"|"
    d1\fp\> ~ \bar"|"
    d2\!\pp r2 \bar"|"
    d1\fp\> ~ \bar"|"
    d2\!\pp r2 \bar"|"
    d1\fp\> ~ \bar"|"
    d2\!\pp r2 \bar"|"
    es1\fp\> ~ \bar"|"
    es2\!\pp r2 \bar"|"
    
    %%repeat 2
    \mark #7
    \barNumberCheck 116
    \break
    cis1\fp\> ~ \bar"|"
    cis2\!\pp r2 \bar"|"
    cis1\fp\> ~ \bar"|"
    cis2\!\pp r2 \bar"|"
    d1\fp\> ~ \bar"|"
    d2\!\pp r2 \bar"|"
    d1\fp\> ~ \bar"|"
    d2\!\pp r2 \bar"|"
    d1\fp\> ~ \bar"|"
    d2\!\pp r2 \bar"|"
    es1\fp\> ~ \bar"|"
    es2\!\pp r2 \bar"|"
    
    %%repeat 3
    \mark #8
    \break
    cis1\fp\> ~ \bar"|"
    cis2\!\pp r2 \bar"|"
    cis1\fp\> ~ \bar"|"
    cis2\!\pp r2 \bar"|"
    d1\fp\> ~ \bar"|"
    d2\!\pp r2 \bar"|"
    d1\fp\> ~ \bar"|"
    d2\!\pp r2 \bar"|"
    d1\fp\> ~ \bar"|"
    d2\!\pp r2 \bar"|"
    es1\fp\> ~ \bar"|"
    es2\!\pp r2 \bar"|"
    
    %%repeat 4
    \mark #9
    \break
    cis1\fp\> ~ \bar"|"
    cis2\!\pp r2 \bar"|"
    cis1\fp\> ~ \bar"|"
    cis2\!\pp r2 \bar"|"
    d1\fp\> ~ \bar"|"
    d2\!\pp r2 \bar"|"
    d1\fp\> ~ \bar"|"
    d2\!\pp r2 \bar"|"
    d1\fp\> ~ \bar"|"
    d2\!\pp r2 \bar"|"
    es1\fp\> ~ \bar"|"
    es2\!\pp r2 \bar"|"
    
    %%repeat 5
    \mark #10
    \barNumberCheck #152
    \break
    cis1\fp\> ~ \bar"|"
    cis2\!\pp r2 \bar"|"
    cis1\fp\> ~ \bar"|"
    cis2\!\pp r2 \bar"|"
    d1\fp\> ~ \bar"|"
    d2\!\pp r2 \bar"|"
    \startRit
    d1\fp\>\startTextSpan ~ \bar"|"
    d2\!\pp r2 \bar"|"
    d1\fp\> ~ \bar"|"
    
    d2\!\pp r2 \bar"|"
    es1\fp\> ~ \bar"|"
    es2\!\pp r2\stopTextSpan 
    %}
	\bar "|."
  }
