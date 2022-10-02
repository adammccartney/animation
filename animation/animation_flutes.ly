\version "2.18.2"

\addInstrumentDefinition #"Piccolo"
  #`((instrumentTransposition . ,(ly:make-pitch 0 0 0))
     (shortInstrumentName . "Picc.")
     (instrumentCueName . ,(make-bold-markup "Change to Piccolo"))
     (midiInstrument . "flute"))

\addInstrumentDefinition #"Flute"
  #`((instrumentTransposition . ,(ly:make-pitch 0 0 0))
     (shortInstrumentName . "Fl.")
     (instrumentCueName . ,(make-bold-markup "Change to Flute"))
     (midiInstrument . "flute"))
  
  \addInstrumentDefinition #"Alto Flute"
  #`((instrumentTransposition . ,(ly:make-pitch 0 0 0))
     (shortInstrumentName . "Alt. Fl.")
     (instrumentCueName . ,(make-bold-markup "Change to Alto Flute"))
     (midiInstrument . "flute"))
  
\addInstrumentDefinition #"Bass Flute"
  #`((instrumentTransposition . ,(ly:make-pitch 0 0 0))
     (shortInstrumentName . "Bass Fl.")
     (instrumentCueName . ,(make-bold-markup "Change to Bass Flute"))
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
  
  animation_flutes = {
    
    %% Section One
    %% Ostinato
    \time 4/4
    \tempo 4 = 55
    r1 ^\markup{Piccolo} 
    \bar "|"
    r4 
    f''2\pp r4  \bar "|"
    r4 d''2. \bar "|"
    f''2 r4 \repeat tremolo 4 { g''32 f'' } \bar "|"
    \repeat tremolo 4 { g''32 f'' } r2. \bar "|"
    
    r4 
    \repeat unfold 4 { d''32[ g'' d'' bes''] } r4  \bar "|"
    r4 d''2. \bar "|"
    d''2 r4 f''4 ~ \bar "|"
    f''4 r2. \bar "|"
    
    r4 
    \repeat unfold 4 { f''32[ g'' f'' bes''] } r4  \bar "|"
    \mark #1
    r4 
    \beamAccel
    \repeat tremolo 12 { d''32 f''} \bar "|"
    \beamDeccel
    \repeat tremolo 8 { f''32 d'' } r4 
    \beamNeutral
    \repeat tremolo 4 { c''32 d'' } \bar "|"
    \repeat tremolo 4 { c''32 d'' } r2. \bar "|"
    
    r4 
    \repeat unfold 4 { d''32[ f'' d'' a''] } r4  \bar "|"
    r4 
    \beamAccel
    \repeat tremolo 12 { f''32 a''} \bar "|"
    \beamDeccel
    \repeat tremolo 8 { a''32 f'' } r4 \beamNeutral 
    \repeat tremolo 4 { es''32 g'' } \bar "|"
    \repeat tremolo 4 { es''32 g'' } r2. \bar "|"

    r4 \repeat unfold 4 { g''32[ bes'' g'' c'''] } r4 \bar "|"
    r4 \repeat unfold 6 { g''32[ bes'' g'' c'''] } \bar "|"
    \repeat unfold 2 { g''32[ bes'' g'' c'''] } r2 a''4 ~ \bar "|"
    a''4 r2. \bar "|"
    
    r4 \repeat tremolo 8 { a''32 c'''} r4 \bar "|"
    r4 \repeat tremolo 12 { f''32 a'' } \bar "|"
    \repeat tremolo 4 { f''32 a'' } r2 \repeat tremolo 4 { es''32 g''} \bar "|"
    \repeat tremolo 4 { es''32 g''} r2. \bar "|"
    
    r4 \repeat tremolo 8 { d''32 e''} r4 \bar "|"
    r4 \repeat tremolo 12 { g''32 bes'' } \bar "|"
    \repeat tremolo 4 { g''32 bes'' } r2 \repeat tremolo 4 { f''32 g''} \bar "|"
    \repeat tremolo 4 { f''32 g''} r2. \bar "|"
    
    \mark #2
    r4  
    \repeat tremolo 8 { d''32 f''} r4 \bar "|"
    r4 \repeat tremolo 12 { f''32 g'' } \bar "|"
    \repeat tremolo 4 { f''32 g'' } r2 \repeat tremolo 4 { e''32 g''} \bar "|"
    \repeat tremolo 4 { es''32 g''} r2. \bar "|"

    
    r1 
    \instrumentSwitch "Flute"  
    \bar"|" r1 \bar"|" 
    r1 \bar"|" r1 \bar"|"
    
    r4 c''2 r4 \bar "|"
    r4 e''2. ~ \bar "|"
    e''2 r4 \repeat tremolo 4 { es''32 g'' }  \bar "|"
    \repeat tremolo 4 { es''32 g'' } r2. \bar "|"
    
    \mark #3
    \barNumberCheck #42
    r4 \repeat unfold 4 { a'32[ bes' a' d''] } r4 \bar "|"
    r4 \repeat unfold 6 { g'32[ a' g' c''] } \bar "|"
    \repeat unfold 4 { g'32[ a' g' c''] } r4 \repeat tremolo 4 { e'32 f' }  \bar "|"
    \repeat tremolo 4 { d'32 f' } r2. \bar "|"
    
    r4 \repeat tremolo 8 { a'32 c'' } r4 \bar "|"
    r4 
    \beamAccel
    \repeat tremolo 12 { d'32 f' } \bar "|"
    \beamDeccel
    \repeat tremolo 8 { f'32 d' } r4 
    \beamNeutral
    \repeat tremolo 4 { es'32 g' }  \bar "|"
    \repeat tremolo 4 { es'32 g' } r2. \bar "|"
    
    r4 \repeat tremolo 8 { f'32 g' } r4 \bar "|"
    r4 \repeat unfold 6 { bes'32[ d'' bes' f''] } \bar "|"
    \repeat unfold 4 { bes'32[ d'' bes' f''] } r4 \repeat tremolo 4 { a'32 bes' } \bar "|"
    \repeat tremolo 4 { a'32 bes' } r2. \bar "|"
    
    r4 \repeat tremolo 8 { f'32 a' } r4 \bar "|"
    r4 \repeat tremolo 12 { bes'32 c'' } \bar "|"
    \repeat tremolo 8 { bes'32 c'' } r4 \repeat tremolo 4 { a'32 c'' } \bar "|"
    \repeat tremolo 4 { a'32 c'' } r2. \bar "|"
    
    r4 \repeat tremolo 8 { f'32 g' } r4 \bar "|"
    r4 \repeat unfold 6 { bes'32[ d'' bes' f''] } \bar "|"
    \repeat unfold 4 { bes'32[ d'' bes' f''] } r4 \repeat tremolo 4 { e''32 f'' } \bar "|"
    \repeat tremolo 4 { d''32 f'' } r2. \bar "|"
    
    r4 \repeat tremolo 8 { f'32 a' } r4 \bar "|"
    r4 \repeat tremolo 12 { bes'32 c'' } \bar "|"
    \repeat tremolo 8 { bes'32 c'' } r4 \repeat tremolo 4 { a'32 c'' } \bar "|"
    \repeat tremolo 4 { a'32 c'' } r2. \bar "|"
 
    %% Section Three
    %% Mod Five third down
    \time 5/8 
    \mark #4
    r4 e4\fp d'8-. |
    r4 e4\fp d'8-. |
    r4 e4\fp d'8-. |
    \time 7/8
    r2 e4\fp d'8-. |
    
    \time 5/8
    r4 e4\fp d'8-. |
    r4 e4\fp d'8-. |
    r4 d4\fp g8-. |
    \time 7/8
    r2 d4\fp g8-. |
    
    \time 5/8
    r4 a4\fp g'8-. |
    r4 a4\fp g'8-. |
    r4 a4\fp g'8-. |
    \time 7/8
    r2 a4\fp g'8-. |
    
    \time 5/8
    r4 f4\fp e'8-. |
    r4 f4\fp e'8-. |
    r4 f4\fp e'8-. |
    \time 7/8
    r2 f4\fp e'8-. |
    
    \time 5/8
    \mark #5
    r4 c4\fp c'8-. |
    r4 c4\fp c'8-. |
    r4 c4\fp c'8-. |
    \time 7/8
    r2 d4\fp bes8-. |

    \time 5/8
    r4 d4\fp bes8-. |
    r4 d4\fp bes8-. |
    r4 d4\fp bes8-. |
    \time 7/8
    r2 d4\fp bes8-. |
    
    \time 5/8
    r4 e4\fp c'8-. |
    r4 e4\fp c'8-. |
    r4 e4\fp c'8-. |
    \time 7/8
    r2 e4\fp c'8-. |
    
    \time 5/8
    r4 e4\fp c'8-. |
    r4 e4\fp c'8-. |
    r4 f4\fp d'8-. |
    \time 7/8
    r2 f4\fp d'8-. |
    
    \time 5/8
    r4 f4\fp c'8-. |
    r4 f4\fp c'8-. |
    r4 f4\fp c'8-. |
    \time 7/8
    r2 f4\fp c'8-. |

    
    \time 2/4
    r2\fermata |
  
    
    \time 4/4
    \tempo 4 = 80
    \clef bass
    \break
    \mark #6
    r1 \bar "|" 
    %%Repeat One
    
    r2 cis2\fp\> ~ \bar"|"
    cis1\!\pp \bar"|"
    r2 cis2\fp\> ~ \bar"|"
    cis1\!\pp \bar"|"
    r2 d2\fp\> ~ \bar"|"
    d1\!\pp \bar"|"
    r2 d2\fp\> ~ \bar"|"
    d1\!\pp \bar"|"
    r2 d2\fp\> ~ \bar"|"
    d1\!\pp \bar"|"
    r2 es2\fp\> ~ \bar"|"
    es1\!\pp \bar"|"
    
    %%Repeat Two
    \mark #7
    \barNumberCheck 116
    r2 cis2\fp\> ~ \bar"|"
    cis1\!\pp \bar"|"
    r2 cis2\fp\> ~ \bar"|"
    cis1\!\pp \bar"|"
    r2 d2\fp\> ~ \bar"|"
    d1\!\pp \bar"|"
    r2 d2\fp\> ~ \bar"|"
    d1\!\pp \bar"|"
    r2 d2\fp\> ~ \bar"|"
    d1\!\pp \bar"|"
    r2 es2\fp\> ~ \bar"|"
    es1\!\pp \bar"|"
    
    %%Repeat Three
    \mark #8
    r2 cis2\fp\> ~ \bar"|"
    cis1\!\pp \bar"|"
    r2 cis2\fp\> ~ \bar"|"
    cis1\!\pp \bar"|"
    r2 d2\fp\> ~ \bar"|"
    d1\!\pp \bar"|"
    r2 d2\fp\> ~ \bar"|"
    d1\!\pp \bar"|"
    r2 d2\fp\> ~ \bar"|"
    d1\!\pp \bar"|"
    r2 es2\fp\> ~ \bar"|"
    es1\!\pp \bar"|"
    
    %%Repeat Four
    \mark #9
    r2 cis2\fp\> ~ \bar"|"
    cis1\!\pp \bar"|"
    r2 cis2\fp\> ~ \bar"|"
    cis1\!\pp \bar"|"
    r2 d2\fp\> ~ \bar"|"
    d1\!\pp \bar"|"
    r2 d2\fp\> ~ \bar"|"
    d1\!\pp \bar"|"
    r2 d2\fp\> ~ \bar"|"
    d1\!\pp \bar"|"
    r2 es2\fp\> ~ \bar"|"
    es1\!\pp \bar"|"
    
    %%Repeat Five
    \mark #10
    \barNumberCheck #152
    r2 cis2\fp\> ~ \bar"|"
    cis1\!\pp \bar"|"
    r2 cis2\fp\> ~ \bar"|"
    cis1\!\pp \bar"|"
    r2 d2\fp\> ~ \bar"|"
    d1\!\pp \bar"|"
    \startRit
    r2\startTextSpan d2\fp\> ~ \bar"|"
    d1\!\pp \bar"|"
    r2 d2\fp\> ~ \bar"|"
    d1\!\pp \bar"|"
    r2 es2\fp\> ~ \bar"|"
    es1\!\pp\stopTextSpan 

   %}
	\bar "|."
  }

