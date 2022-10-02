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
    \tempo 4 = 55
    r1^\markup{Soprano}
    \bar "|"
    r4 f''2\pp r4 \bar "|"
    r4 
    \beamAccel
    \repeat tremolo 12 { d''32 f'' } \bar "|"
    \beamDeccel
    \repeat tremolo 8 { d''32 f'' } 
    \beamNeutral
    r4 \repeat tremolo 4 { d''32 f'' } \bar "|"
    \repeat tremolo 4 { c''32 d'' } r2. \bar "|"
    
    r4 \repeat unfold 4 { d''32[ g'' d'' bes''] } r4 \bar "|"
    r4 
    \beamAccel
    \repeat tremolo 12 { a''32 bes'' } \bar "|"
    \beamDeccel
    \repeat tremolo 8 { a''32 g'' } r4 
    \beamNeutral
    \repeat tremolo 4 { d''32 f'' } \bar "|"
    \repeat tremolo 4 { d''32 f'' } r2. \bar "|"
    
    r4 \repeat unfold 4 { d''32[ es'' d'' g''] } r4 \bar "|"
    \mark #1
    \barNumberCheck #11
    r4 es''2. \bar "|"
    g''2 r4 f''4 ~ \bar "|"
    f''4 r2. \bar "|"
    
    r4 \repeat unfold 4 { c''32[ d'' c'' f''] } r4 \bar "|"
    r4 a''2. ~ \bar "|"
    a''2 r4 \repeat tremolo 4 { es''32 g'' } \bar "|"
    \repeat tremolo 4 { es''32 g'' } r2. \bar "|"
    
    r4 \repeat tremolo 8 { bes''32 c''' } r4 \bar "|"
    r4 \repeat tremolo 12 { g''32 bes'' } \bar "|"
    \repeat tremolo 4 { g''32 bes'' } r2 \repeat tremolo 4 { d''32 es'' } \bar "|"
    \repeat tremolo 4 { d''32 es'' } r2. \bar "|"
    
    r4 \repeat tremolo 8 { a''32 c''' } r4 \bar "|"
    r4 \repeat tremolo 12 { f''32 a'' } \bar "|"
    \repeat tremolo 4 { f''32 a'' } r2 \repeat tremolo 4 { c''32 es'' } \bar "|"
    \repeat tremolo 4 { c''32 es'' } r2. \bar "|"
    
    
    r1 \instrumentSwitch "Tenor Recorder" \bar "|" r1 \bar "|"
    r1 \bar "|" r1 \bar "|"
    
    \mark #2
    \barNumberCheck #30
    r4 \repeat tremolo 8 { d'32 f'' } r4 \bar "|"
    r4 \repeat tremolo 12 { f''32 g'' } \bar "|"
    \repeat tremolo 4 { f''32 g'' } r2 \repeat tremolo 4 { es''32 g'' } \bar "|"
    \repeat tremolo 4 { es''32 g'' } r2. \bar "|"
    
    r4 \repeat tremolo 8 { a'32 g' } r4 \bar "|"
    r4 \repeat tremolo 12 { es'32 g' } \bar "|"
    \repeat tremolo 4 { es'32 g' } r2 \repeat tremolo 4 { d'32 f' } \bar "|"
    \repeat tremolo 4 { d'32 f' } r2. \bar "|"

    

    r4 c''2 r4 \bar "|"
    r4 
    \beamAccel
    \repeat tremolo 12 { d'32 f' } \bar "|"
    \beamDeccel
    \repeat tremolo 8 { d'32 f' } r4 
    \beamNeutral
    \repeat tremolo 4 { es'32 g' } \bar "|"
    \repeat tremolo 4 { es'32 g' } r2. \bar "|"
    
    \mark #3
    \barNumberCheck #42
    r4 \repeat unfold 4 { a'32[ bes' a' d''] } r4 \bar "|"
    r4 \repeat unfold 6 { g'32[ a' g' c''] } \bar "|"
    \repeat unfold 4 { g'32[ a' g' c''] } r4 \repeat tremolo 4 { d'32 f' } \bar "|"
    \repeat tremolo 4 { d'32 f' } r2. \bar "|"

    r4 c''2 r4 \bar "|"
    r4 e'2. ~ \bar "|"
    e'2 r4 \repeat tremolo 4 { es'32 g' } \bar "|"
    \repeat tremolo 4 { es'32 g' } r2. \bar "|"
    

    r4 \repeat tremolo 8 { f'32 g' } r4 \bar "|"
    r4 \repeat tremolo 12 { bes'32 d'' } \bar "|"
    \repeat tremolo 8 { bes'32 d'' } r4 \repeat tremolo 4 { a'32 bes' } \bar "|"
    \repeat tremolo 4 { a'32 bes' } r2. \bar "|"
    
    r4 \repeat tremolo 8 { f'32 a' } r4 \bar "|"
    r4 \repeat unfold 6 { bes'32[ c'' bes' e''] } \bar "|"
    \repeat unfold 4 { bes'32[ c'' bes' e''] } r4 \repeat tremolo 4 { a'32 c'' } \bar "|"
    \repeat tremolo 4 { a'32 c'' }  r2. \bar "|"
    
    r4 \repeat tremolo 8 { f'32 g' } r4 \bar "|"
    r4 \repeat tremolo 12 { bes'32 d'' } \bar "|"
    \repeat tremolo 8 { bes'32 d'' } r4 \repeat tremolo 4 { a'32 bes' } \bar "|"
    \repeat tremolo 4 { a'32 bes' } r2. \bar "|"
    
    r4 \repeat tremolo 8 { f'32 a' } r4 \bar "|"
    r4 \repeat unfold 6 { bes'32[ c'' bes' f''] } \bar "|"
    \repeat unfold 4 { bes'32[ c'' bes' f''] } r4 \repeat tremolo 4 { a'32 c'' } \bar "|"
    \repeat tremolo 4 { a'32 c'' } r2. \bar "|"


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
    r4 e,4.\fp |
    r4 e,4.\fp |
    r4 e,4.\fp |
    \time 7/8
    r2 e,4.\fp |
    
    \time 5/8
    r4 f,4. \fp|
    r4 f,4. |
    r4 f,4. |
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
