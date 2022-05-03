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
  
  animation_flutes_transposing = {
    
    %% Section One
    %% Ostinato
    \time 4/4
    \tempo 4 = 55
    \mark \markup { \box 1 }
    \transpose c'' c' {
    r1 ^\markup{Piccolo} 
    \bar "|"
    r4^\markup{transposing part, piccolo 8ve, alto 4vb, bass 8vb}
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
    }%piccolo transpose
    
    r1 
    \instrumentSwitch "Flute"  
    \bar"|" r1 \bar"|" 
    r1 \bar"|" r1 \bar"|"
    
    r4 c''2 r4 \bar "|"
    r4 e''2. ~ \bar "|"
    e''2 r4 \repeat tremolo 4 { es''32 g'' }  \bar "|"
    \repeat tremolo 4 { es''32 g'' } r2. \bar "|"
    
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
    a'8[( c''8)] a'[( c'' g'')] \bar "!"
    a'8[( c''8)] a'[( c'' g'')] \bar "!"
    a'8[( c''8)] a'[( c'' g'')] \bar "!"
    \time 7/8
    a'8[( c'' g' c'')] a'[( c'' g'')] \bar "!"
    
    \time 5/8
    a'8[( c'')] a'[( c'' g'')] \bar "!"
    a'8[( c'')] a'[( c'' g'')] \bar "!"
    f''8[( a'')] f''[( a'' e''')] \bar "!"
    \time 7/8
    f''8[( a'' e'' a'')] f''[( a'' e''')] \bar "!"
    
    \time 5/8
    bes'8[( d'')] bes'[( d'' a'')] \bar "!"
    bes'8[( d'')] bes'[( d'' a'')] \bar "!"
    bes'8[( d'')] bes'[( d'' a'')] \bar "!"
    \time 7/8
    bes'8[( d'' a' d'')] bes'[( d'' a'')] \bar "!"
    
    \time 5/8
    r4. r4 \bar "!"
    r4. r4 \bar "!"
    r4. r4 \bar "!"
    \time 7/8
    r2 r4. \bar "!"
    
    \pageTurn
    \time 5/8
    \mark #4
    b'8[( d'')] b'[( d'' a'')] \bar "!"
    b'8[( d'')] b'[( d'' a'')] \bar "!"
    cis''8[( e'')] cis''[( e'' a'')] \bar "!"
    \time 7/8
    cis''8[( e'' b' e'')] cis''[( e'' a'')] \bar "!"

    \time 5/8
    cis''8[( e'')] cis''[( e'' a'')] \bar "!"
    cis''8[( e'')] cis''[( e'' a'')] \bar "!"
    cis''8[( e'')] cis''[( e'' a'')] \bar "!"
    \time 7/8
    cis''8[( e'' b' e'')] cis''[( e'' a'')] \bar "!"
    
    \time 5/8
    f''8[( a'')] f''[( a'' e''')] \bar "!"
    f''8[( a'')] f''[( a'' e''')] \bar "!"
    f''8[( a'')] f''[( a'' e''')] \bar "!"
    \time 7/8
    f''8[( a'' e'' a'')] f''[( a'' e''')] \bar "!"
    
    \time 5/8
    f''8[( a'')] f''[( a'' e''')] \bar "!"
    f''8[( a'')] f''[( a'' e''')] \bar "!"
    g''8[( bes'')] g''[( bes'' e''')] \bar "!"
    \time 7/8
    g''8[( bes'' f'' bes'')] g''[( bes'' e''')] \bar "!"
    
    \time 5/8
    d''8[( f'')] d''[( f'' b'')] \bar "!"
    d''8[( f'')] d''[( f'' b'')] \bar "!"
    d''8[( f'')] d''[( f'' b'')] \bar "!"
    \time 7/8
    d''8[( f'' c'' f'')] d''[( f'' b'')] \bar "!"
    
    %% Mod Two third down
    \transpose g c' {
    \time 5/8 
    \instrumentSwitch "Alto Flute"
    r4 r4. \bar "!"
    r4 r4. \bar "!"
    r4 r4. \bar "!"
    \time 7/8
    r2 r4. \bar "!"
    
    \time 5/8
    bes4 ~ bes4. ~ \bar "!"
    bes4 r4. \bar "!"
    bes4 ~ bes4. ~ \bar "!"
    \time 7/8
    bes2 r4. \bar "!"
    
    \time 5/8
    g4 ~ g4. ~ \bar "!"
    g4 r4. \bar "!"
    g4 ~ g4. ~ \bar "!"
    \time 7/8
    g2 r4. \bar "!"
    
    \time 5/8
    \mark #5
    gis4 ~ gis4. ~ \bar "!"
    gis4 r4. \bar "!"
    gis4 ~ gis4. ~ \bar "!"
    \time 7/8
    gis2 r4. \bar "!"
    
    \time 5/8
    gis4 ~ gis4. ~ \bar "!"
    gis4 r4. \bar "!"
    a4 ~ a4. ~ \bar "!"
    \time 7/8
    a2 r4. \bar "!"

    \time 5/8
    f4 ~ f4. ~ \bar "!"
    f4 r4. \bar "!"

    f4 ~ f4. ~ \bar "!"
    \time 7/8
    f2 r4. \bar "!"
    
    \time 5/8
    d'8[( f')] d'[( f' c'')] \bar "!"
    d'8[( f')] d'[( f' c'')] \bar "!"
    d'8[( f')] d'[( f' c'')] \bar "!"
    \time 7/8
    d'8[( f' c' f')] d'[( f' c'')] \bar "!"
    
    \time 5/8
    a'8[( c'')] a'[( c'' g'')] \bar "!"
    a'8[( c'')] a'[( c'' g'')] \bar "!"
    b'8[( d'')] b'[( d'' g'')] \bar "!"
    \time 7/8
    b'8[( d'' a' d'')] b'[( d'' g'')] \bar "!"
    
    \time 5/8
    b'8[( d'')] b'[( d'' g'')] \bar "!"
    b'8[( d'')] b'[( d'' g'')] \bar "!"
    b'8[( d'')] b'[( d'' g'')] \bar "!"
    \time 7/8
    b'8[( d'' a' d'')] b'[( d'' g'')] \bar "!"
    }% alto transpose
    
    %% Mod Three third down
\transpose c c' {
    \time 5/8
    \instrumentSwitch "Bass Flute"
    
    r4 r4. \bar "!"
    r4 r4. \bar "!"
    r4 r4. \bar "!"
    \time 7/8
    r2 r4. \bar "!"
    
    \time 5/8
    r4 g4.\fp \bar "!"
    r4 g4.\fp \bar "!"
    r4 e4.\fp \bar "!"
    \time 7/8
    r2 g4.\fp \bar "!"
    
    \pageTurn
    \time 5/8
    
    r4 gis4.\fp \bar "!"
    r4 gis4.\fp \bar "!"
    r4 gis4.\fp \bar "!"
    \time 7/8
    r2 gis4.\fp \bar "!"
    
    \time 5/8
    \mark #6
    r4 e'4.\fp \bar "!"
    r4 e'4.\fp \bar "!"
    r4 e'4.\fp \bar "!"
    \time 7/8
    r2 e'4.\fp \bar "!"
    
    \time 5/8
    r4 c'4.\fp \bar "!"
    r4 c'4.\fp \bar "!"
    r4 c'4.\fp \bar "!"
    \time 7/8
    r2 d'4.\fp \bar "!"

    \time 5/8
    r4 d'4.\fp \bar "!"
    r4 d'4.\fp \bar "!"
    r4 d'4.\fp \bar "!"
    \time 7/8
    r2 d'4.\fp \bar "!"
    
    \time 5/8
    r4 f'4.\fp \bar "!"
    r4 f'4.\fp \bar "!"
    r4 f'4.\fp \bar "!"
    \time 7/8
    r2 f'4.\fp \bar "!"
    
    \time 5/8
    r4 f'4.\fp \bar "!"
    r4 f'4.\fp \bar "!"
    r4 g'4.\fp \bar "!"
    \time 7/8
    r2 g'4.\fp \bar "!"
    
    \time 5/8
    r4 c'4.\fp \bar "!"
    r4 c'4.\fp \bar "!"
    r4 c'4.\fp \bar "!"
    \time 7/8
    r2 c'4.\fp \bar "!"
    
    
    %% Mod Four third down
    
    \time 5/8 
    r4 e'4.\fp \bar "!"
    r4 e'4.\fp \bar "!"
    r4 e'4.\fp \bar "!"
    \time 7/8
    r2 e'4.\fp \bar "!"
    
    \time 5/8
    r4 gis'4.\fp \bar "!"
    r4 gis'4.\fp \bar "!"
    r4 e'4.\fp \bar "!"
    \time 7/8
    r2 e'4.\fp \bar "!"
    
    \time 5/8
    \mark #7
    r4 e'4.\fp \bar "!"
    r4 e'4.\fp \bar "!"
    r4 e'4.\fp \bar "!"
    \time 7/8
    r2 e'4.\fp \bar "!"
    
    \time 5/8
    r4 a4.\fp \bar "!"
    r4 a4.\fp \bar "!"
    r4 a4.\fp \bar "!"
    \time 7/8
    r2 a4.\fp \bar "!"
    
    \time 5/8
    r4 a4.\fp \bar "!"
    r4 a4.\fp \bar "!"
    r4 bes4.\fp \bar "!"
    \time 7/8
    r2 bes4.\fp \bar "!"

    \time 5/8
    r4 f'4.\fp \bar "!"
    r4 f'4.\fp \bar "!"
    r4 f'4.\fp \bar "!"
    \time 7/8
    r2 f'4.\fp \bar "!"
    
    \time 5/8
    r4 d'4.\fp \bar "!"
    r4 d'4.\fp \bar "!"
    r4 d'4.\fp \bar "!"
    \time 7/8
    r2 d'4.\fp \bar "!"
    
    \time 5/8
    r4 g4.\fp \bar "!"
    r4 g4.\fp \bar "!"
    r4 a4.\fp \bar "!"
    \time 7/8
    r2 a4.\fp \bar "!"
    
    \time 5/8
    r4 a4.\fp \bar "!"
    r4 a4.\fp \bar "!"
    r4 a4.\fp \bar "!"
    \time 7/8
    r2 a4.\fp \bar "!"
    
    %% Mod Five third down
  
    \time 5/8 
    \mark \markup { \box 3 }
    r4 e4\fp d'8-. \bar "!"
    r4 e4\fp d'8-. \bar "!"
    r4 e4\fp d'8-. \bar "!"
    \time 7/8
    r2 e4\fp d'8-. \bar "!"
    
    \time 5/8
    r4 e4\fp d'8-. \bar "!"
    r4 e4\fp d'8-. \bar "!"
    r4 d4\fp g8-. \bar "!"
    \time 7/8
    r2 d4\fp g8-. \bar "!"
    
    \time 5/8
    r4 a4\fp g'8-. \bar "!"
    r4 a4\fp g'8-. \bar "!"
    r4 a4\fp g'8-. \bar "!"
    \time 7/8
    r2 a4\fp g'8-. \bar "!"
    
    \time 5/8
    r4 f4\fp e'8-. \bar "!"
    r4 f4\fp e'8-. \bar "!"
    r4 f4\fp e'8-. \bar "!"
    \time 7/8
    r2 f4\fp e'8-. \bar "!"
    
    \time 5/8
    r4 c4\fp c'8-. \bar "!"
    r4 c4\fp c'8-. \bar "!"
    r4 c4\fp c'8-. \bar "!"
    \time 7/8
    r2 d4\fp bes8-. \bar "!"

    \time 5/8
    r4 d4\fp bes8-. \bar "!"
    r4 d4\fp bes8-. \bar "!"
    r4 d4\fp bes8-. \bar "!"
    \time 7/8
    r2 d4\fp bes8-. \bar "!"
    
    \time 5/8
    r4 e4\fp c'8-. \bar "!"
    r4 e4\fp c'8-. \bar "!"
    r4 e4\fp c'8-. \bar "!"
    \time 7/8
    r2 e4\fp c'8-. \bar "!"
    
    \time 5/8
    r4 e4\fp c'8-. \bar "!"
    r4 e4\fp c'8-. \bar "!"
    r4 f4\fp d'8-. \bar "!"
    \time 7/8
    r2 f4\fp d'8-. \bar "!"
    
    \time 5/8
    r4 f4\fp c'8-. \bar "!"
    r4 f4\fp c'8-. \bar "!"
    r4 f4\fp c'8-. \bar "!"
    \time 7/8
    r2 f4\fp c'8-. \bar "!"

    
    \time 2/4
    r2\fermata \bar "!"
  
    
    \time 4/4
    \tempo 4 = 80
    %\clef bass
    \break
    \mark \markup { \box 4 }
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
    
    %%Repeat Three
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
    
    %%Repeat Four
    \mark #10
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
    \mark #11
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
  }% bas flute transpose
   %}
	\bar "|."
  }

