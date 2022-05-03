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
    \mark \markup { \box 1 }
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
    r4 e''2. \bar "|"
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
    \repeat tremolo 4 { f''32 a'' } r2 \repeat tremolo 4 { c''32 e'' } \bar "|"
    \repeat tremolo 4 { c''32 e'' } r2. \bar "|"
    
    
    r1 \instrumentSwitch "Tenor Recorder" \bar "|" r1 \bar "|"
    r1 \bar "|" r1 \bar "|"
    
    \mark #2
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


    %% Section Two
    %% Figuration additive_one
    \tempo 4 = 110
    \time 4/4
    \mark \markup { \box 2 }
    r1
    
    \time 1/4
    r4
   
    \time 5/8 
    f'8[(\p a'8)] f'[( a' e'')] \bar "!"
    f'8[( a'8)] f'[( a' e'')] \bar "!"
    f'8[( a'8)] f'[( a' e'')] \bar "!"
    \time 7/8
    f'8[( a' e' a')] f'[( a' e'')] \bar "!"
    
    \time 5/8
    f'8[( a')] f'[( a' e'')] \bar "!"
    f'8[( a')] f'[( a' e'')] \bar "!"
    d'8[( f')] d'[( f' c'')] \bar "!"
    \time 7/8
    d'8[( f' c' f')] d'[( f' c'')] \bar "!"
    
    \time 5/8
    d'8[( f')] d'[( f' c'')] \bar "!"
    d'8[( f')] d'[( f' c'')] \bar "!"
    d'8[( f')] d'[( f' c'')] \bar "!"
    \time 7/8
    d'8[( f' c' f')] d'[( f' c'')] \bar "!"
    
    \time 5/8
    bes'8[( d'')] bes'[( d'' a'')] \bar "!"
    bes'8[( d'')] bes'[( d'' a'')] \bar "!"
    bes'8[( d'')] bes'[( d'' a'')] \bar "!"
    \time 7/8
    bes'8[( d'' a' d'')] bes'[( d'' a'')] \bar "!"
    
    \time 5/8
    bes'8[( d'')] bes'[( d'' a'')] \bar "!"
    bes'8[( d'')] bes'[( d'' a'')] \bar "!"
    c''8[( e'')] c''[( e'' a'')] \bar "!"
    \time 7/8
    c''8[( e'' bes' e'')] c''[( e'' a'')] \bar "!"

    \time 5/8
    \mark #3
    c''8[( e'')] c''[( e'' a'')] \bar "!"
    c''8[( e'')] c''[( e'' a'')] \bar "!"
    c''8[( e'')] c''[( e'' a'')] \bar "!"
    \time 7/8
    c''8[( e'' bes' e'')] c''[( e'' a'')] \bar "!"
    
    \time 5/8
    a'8[( c'')] a'[( c'' g'')] \bar "!"
    a'8[( c'')] a'[( c'' g'')] \bar "!"
    a'8[( c'')] a'[( c'' g'')] \bar "!"
    \time 7/8
    a'8[( c'' g' c'')] a'[( c'' g'')] \bar "!"
    
    \time 5/8
    a'8[( c'')] a'[( c'' g'')] \bar "!"
    a'8[( c'')] a'[( c'' g'')] \bar "!"
    bes'8[( d'')] bes'[( d'' g'')] \bar "!"
    \time 7/8
    bes'8[( d'' a' d'')] bes'[( d'' g'')] \bar "!"
    
    \time 5/8
    bes'8[( d'')] bes'[( d'' g'')] \bar "!"
    bes'8[( d'')] bes'[( d'' g'')] \bar "!"
    bes'8[( d'')] bes'[( d'' g'')] \bar "!"
    \time 7/8
    bes'8[( d'' a' d'')] bes'[( d'' g'')] \bar "!"
    
    %% Mod One third down
    
    \time 5/8 
    d'8[( f'8)] d'[( f' c'')] \bar "!"
    d'8[( f'8)] d'[( f' c'')] \bar "!"
    d'8[( f'8)] d'[( f' c'')] \bar "!"
    \time 7/8
    d'8[( f' c' f')] d'[( f' c'')] \bar "!"
    
    \time 5/8
    d'8[( f')] d'[( f' c'')] \bar "!"
    d'8[( f')] d'[( f' c'')] \bar "!"
    bes'8[( d'')] bes'[( d'' a'')] \bar "!"
    \time 7/8
    bes'8[( d'' a' d'')] bes'[( d'' a'')] \bar "!"
    
    \time 5/8
    bes'8[( d'')] bes'[( d'' a'')] \bar "!"
    bes'8[( d'')] bes'[( d'' a'')] \bar "!"
    bes'8[( d'')] bes'[( d'' a'')] \bar "!"
    \time 7/8
    bes'8[( d'' a' d'')] bes'[( d'' a'')] \bar "!"
    
    \time 5/8
    g'8[( bes')] g'[( bes' f'')] \bar "!"
    g'8[( bes')] g'[( bes' f'')] \bar "!"
    g'8[( bes')] g'[( bes' f'')] \bar "!"
    \time 7/8
    g'8[( bes' f' bes')] g'[( bes' f'')] \bar "!"
    
    \time 5/8
    \mark #4
    r4. r4 \bar "!"
    r4. r4 \bar "!"
    r4. r4 \bar "!"
    \time 7/8
    r2 r4. \bar "!"

    \time 5/8
    a'8[( c'')] a'[( c'' f'')] \bar "!"
    a'8[( c'')] a'[( c'' f'')] \bar "!"
    a'8[( c'')] a'[( c'' f'')] \bar "!"
    \time 7/8
    a'8[( c'' g' c'')] a'[( c'' f'')] \bar "!"
    
    \time 5/8
    f'8[( a')] f'[( a' e'')] \bar "!"
    f'8[( a')] f'[( a' e'')] \bar "!"
    f'8[( a')] f'[( a' e'')] \bar "!"
    \time 7/8
    f'8[( a' e' a')] f'[( a' e'')] \bar "!"
    
    \time 5/8
    f'8[( a')] f'[( a' e'')] \bar "!"
    f'8[( a')] f'[( a' e'')] \bar "!"
    g'8[( bes')] g'[( bes' e'')] \bar "!"
    \time 7/8
    g'8[( bes' f' bes')] g'[( bes' e'')] \bar "!"
    
    \time 5/8
    g'8[( bes')] g'[( bes' e'')] \bar "!"
    g'8[( bes')] g'[( bes' e'')] \bar "!"
    g'8[( bes')] g'[( bes' e'')] \bar "!"
    \time 7/8
    g'8[( bes' f' bes')] g'[( bes' e'')] \bar "!"
    
    %% Mod Two third down
    
    \time 5/8 
    bes'8[( d''8)] bes'[( d'' a'')] \bar "!"
    bes'8[( d''8)] bes'[( d'' a'')] \bar "!"
    bes'8[( d''8)] bes'[( d'' a'')] \bar "!"
    \time 7/8
    bes'2 ~ bes'4. ~ \bar "!"
    
    \time 5/8
    bes'4 r4. \bar "!"
    r4 r4. \bar "!"
    r4 r4. \bar "!"
    \time 7/8
    g'2 ~ g'4. ~ \bar "!"
    
    \time 5/8
    g'4 r4. \bar "!"
    r4 r4. \bar "!"
    r4 r4. \bar "!"
    \time 7/8
    g'2 ~ g'4. ~ \bar "!"
    
    \time 5/8
    
    \mark #5
    g'4 r4. \bar "!"
    \instrumentSwitch "Contrabass Paetzold in F"
    r4 r4. \bar "!"
    r4 r4. \bar "!"
    \time 7/8
    r2 r4. \bar "!"
    
    \time 5/8
    r4 r4. \bar "!"
    r4 r4. \bar "!"
    r4 r4. \bar "!"
    \time 7/8
    r2 r4. \bar "!"

    \time 5/8
    \clef bass
    r4 r4. \bar "!"
    r4 r4. \bar "!"
    f8[( a)] f[( a d')] \bar "!"
    \time 7/8
    f8[( a e a)] f[( a d')] \bar "!"
    
    \time 5/8
    d8[( f)] d[( f c')] \bar "!"
    d8[( f)] d[( f c')] \bar "!"
    d8[( f)] d[( f c')] \bar "!"
    \time 7/8
    d8[( f c f)] d[( f c')] \bar "!"
    
    \time 5/8
    d8[( f)] d[( f c')] \bar "!"
    d8[( f)] d[( f c')] \bar "!"
    e8[( g)] e[( g c')] \bar "!"
    \time 7/8
    e8[( g d g)] e[( g c')] \bar "!"
    
    \time 5/8
    e8[( g)] e[( g c')] \bar "!"
    e8[( g)] e[( g c')] \bar "!"
    e8[( g)] e[( g c')] \bar "!"
    \time 7/8
    e8[( g d g)] e[( g c')] \bar "!"
    
    
    %% Mod Three third down
    
    \time 5/8 
    g8[( bes8)] g[( bes f')] \bar "!"
    g8[( bes8)] g[( bes f')] \bar "!"
    g8[( bes8)] g[( bes f')] \bar "!"
    \time 7/8
    g8[( bes f bes)] g[( bes f')] \bar "!"
    
    \time 5/8
    r4 g4\fp bes8-. \bar "!"
    r4 g4\fp bes8-. \bar "!"
    r4 g4\fp d'8-. \bar "!"
    \time 7/8
    r2 g4\fp d'8-. \bar "!"
    
    \time 5/8
    r4 g4\fp d'8-. \bar "!"
    r4 g4\fp d'8-. \bar "!"
    r4 g4\fp d'8-. \bar "!"
    \time 7/8
    r2 g4\fp d'8-. \bar "!"
    
    \time 5/8
    \mark #6
    r4 e4\fp c'8-. \bar "!"
    r4 e4\fp c'8-. \bar "!"
    r4 e4\fp c'8-. \bar "!"
    \time 7/8
    r2 e4\fp c'8-. \bar "!"
    
    \time 5/8
    r4 e4\fp c'8-. \bar "!"
    r4 e4\fp c'8-. \bar "!"
    r4 d4\fp bes8-. \bar "!"
    \time 7/8
    r2 d4\fp bes8-. \bar "!"

    \time 5/8
    r4 d4\fp bes8-. \bar "!"
    r4 d4\fp bes8-. \bar "!"
    r4 d4\fp bes8-. \bar "!"
    \time 7/8
    r2 d4\fp bes8-. \bar "!"
    
    \time 5/8
    r4 bes,4\fp d8-. \bar "!"
    r4 bes,4\fp d8-. \bar "!"
    r4 bes,4\fp d8-. \bar "!"
    \time 7/8
    r2 bes,4\fp d8-. \bar "!"
    
    \time 5/8
    r4 bes,4\fp d8-. \bar "!"
    r4 bes,4\fp d8-. \bar "!"
    r4 c4\fp e8-. \bar "!"
    \time 7/8
    r2 c4\fp e8-. \bar "!"
    
    \time 5/8
    r4 c4\fp e8-. \bar "!"
    r4 c4\fp e8-. \bar "!"
    r4 c4\fp e8-. \bar "!"
    \time 7/8
    r2 c4\fp e8-. \bar "!"
    
    
    %% Mod Four third down
    
    \time 5/8 
    r4 g4\fp d'8-. \bar "!"
    r4 g4\fp d'8-. \bar "!"
    r4 g4\fp d'8-. \bar "!"
    \time 7/8
    r2 g4\fp d'8-. \bar "!"
    
    \time 5/8
    r4 g4\fp d'8-. \bar "!"
    r4 g4\fp d'8-. \bar "!"
    r4 f4\fp c'8-. \bar "!"
    \time 7/8
    r2 f4\fp c'8-. \bar "!"
    
    \time 5/8
    \mark #7
    r4 f4\fp c'8-. \bar "!"
    r4 f4\fp c'8-. \bar "!"
    r4 f4\fp c'8-. \bar "!"
    \time 7/8
    r2 f4\fp c'8-. \bar "!"
    
    \time 5/8
    r4 c4\fp a8-. \bar "!"
    r4 c4\fp a8-. \bar "!"
    r4 c4\fp a8-. \bar "!"
    \time 7/8
    r2 c4\fp a8-. \bar "!"
    
    \time 5/8
    r4 c4\fp a8-. \bar "!"
    r4 c4\fp a8-. \bar "!"
    r4 bes,4\fp g8-. \bar "!"
    \time 7/8
    r2 bes,4\fp g8-. \bar "!"

    \time 5/8
    r4 bes,4\fp g8-. \bar "!"
    r4 bes,4\fp g8-. \bar "!"
    r4 bes,4\fp g8-. \bar "!"
    \time 7/8
    r2 bes,4\fp g8-. \bar "!"
    
    \time 5/8
    r4 g,4\fp bes,8-. \bar "!"
    r4 g,4\fp bes,8-. \bar "!"
    r4 g,4\fp bes,8-. \bar "!"
    \time 7/8
    r2 g,4\fp bes,8-. \bar "!"
    
    \time 5/8
    r4 g,4\fp bes,8-. \bar "!"
    r4 g,4\fp bes,8-. \bar "!"
    r4 a,4\fp c8-. \bar "!"
    \time 7/8
    r2 a,4\fp c8-. \bar "!"
    
    \time 5/8
    r4 a,4\fp c8-. \bar "!"
    r4 a,4\fp c8-. \bar "!"
    r4 a,4\fp c8-. \bar "!"
    \time 7/8
    r2 a,4\fp c8-. \bar "!"
    
    %% Mod Five third down
  
    \time 5/8 
    \mark \markup { \box 3 }
    r4 c4.\fp \bar "!"
    r4 c4.\fp \bar "!"
    r4 c4.\fp \bar "!"
    \time 7/8
    r2 f4.\fp \bar "!"
    
    \time 5/8
    r4 c4.\fp \bar "!"
    r4 c4.\fp \bar "!"
    r4 d4.\fp \bar "!"
    \time 7/8
    r2 d4.\fp \bar "!"
    
    \time 5/8
    r4 d4.\fp \bar "!"
    r4 d4.\fp \bar "!"
    r4 d4.\fp \bar "!"
    \time 7/8
    r2 d4.\fp \bar "!"
    
    \time 5/8
    r4 d4.\fp \bar "!"
    r4 d4.\fp \bar "!"
    r4 d4.\fp \bar "!"
    \time 7/8
    r2 d4.\fp \bar "!"
    
    \time 5/8
    r4 f4.\fp \bar "!"
    r4 f4.\fp \bar "!"
    r4 bes,4.\fp \bar "!"
    \time 7/8
    r2 bes,4.\fp \bar "!"

    \time 5/8
    r4 bes,4.\fp \bar "!"
    r4 bes,4.\fp \bar "!"
    r4 bes,4.\fp \bar "!"
    \time 7/8
    r2 bes,4.\fp \bar "!"
    
    \time 5/8
    r4 g,4.\fp \bar "!"
    r4 g,4.\fp \bar "!"
    r4 g,4.\fp \bar "!"
    \time 7/8
    r2 g,4.\fp \bar "!"
    
    \time 5/8
    r4 e,4.\fp \bar "!"
    r4 e,4.\fp \bar "!"
    r4 e,4.\fp \bar "!"
    \time 7/8
    r2 e,4.\fp \bar "!"
    
    \time 5/8
    r4 f,4. \fp\bar "!"
    r4 f,4. \bar "!"
    r4 f,4. \bar "!"
    \time 7/8
    r2 f,4. \bar "!"
    
    \time 2/4
    r2\fermata \bar "!"
    
    
    \time 4/4
    \tempo 4 = 80
    \clef bass
    \break
    \mark \markup { \box 4 }
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
    
    %%repeat 3
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
    
    %%repeat 4
    \mark #10
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
    \mark #11
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
