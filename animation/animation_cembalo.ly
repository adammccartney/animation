\version "2.18.2"

% Macros %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

staffUpper = {\change Staff = upper \stemDown}
staffLower = {\change Staff = lower \stemNeutral}
startRepeat = {\set Score.repeatCommands = #'(start-repeat)}
endRepeat = {\set Score.repeatCommands = #'(end-repeat)}
beamAccel = { \override Beam.grow-direction = #RIGHT }
beamDeccel = { \override Beam.grow-direction = #LEFT }
beamNeutral = { \override Beam.grow-direction = #f }

startRit = { \override TextSpanner.bound-details.left.text =
             \markup { \upright "rit." } }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

animation_cembalo_right = {
  {
    
    %% Ostinato
    \time 4/4
    \tempo 4 = 55
    \mark \markup { \box 1 }
    r1 \bar "|"

    r4 a''16[ a'' a'' a''] a''16[ a'' a'' a''] a''16[ a'' a'' a''] \bar "|"
    a''16[ a'' a'' a''] \repeat tremolo 12 { f''32 d'' } \bar "|"
    f''16[ d'' f'' d''] \repeat tremolo 12 { f''32 d'' } \bar "|"
    f''16[ d'' f'' d''] d''16[ d'' d'' d''] d''16[ d'' d'' d''] d''16[ d'' d'' d''] \bar "|"
    
    d''16[ d'' d'' d''] d''16[ d'' d'' d''] d''16[ d'' d'' d''] d''16[ d'' d'' d''] \bar "|"
    d''16[ d'' d'' d''] \repeat tremolo 12 { d''32 c''' } \bar "|"
    \repeat tremolo 16 { d''32 c''' } \bar "|"
    d''16[ c''' d'' c'''] d''16[ bes'' d'' bes''] d''16[ bes'' d'' bes''] d''16[ bes'' d'' bes''] \bar "|"

    r4 a''16[ a'' a'' a''] a''16[ a'' a'' a''] a''16[ a'' a'' a''] \bar "|"
    \mark #1
    a''16[ a'' a'' a''] \repeat tremolo 12 { f''32 d'' } \bar "|"
    f''16[ d'' f'' d''] \repeat tremolo 12 { f''32 es'' } \bar "|"
    f''16[ es'' f'' es''] es''16[ es'' es'' es''] es''16[ es'' es'' es''] es''16[ es'' es'' es''] \bar "|"
    
    es''16[ es'' es'' es''] es''16[ es'' es'' es''] es''16[ es'' es'' es''] es''16[ es'' es'' es''] \bar "|"
    es''16[ es'' es'' es''] \repeat tremolo 12 { es''32 c''' } \bar "|"
    \repeat tremolo 16 { e''32 c''' } \bar "|"
    es''16[ c''' es'' c'''] d''16[ bes'' d'' bes''] d''16[ bes'' d'' bes''] d''16[ bes'' d'' bes''] \bar "|"
    
    \repeat unfold 2 {
    r4 a''16[ a'' f'' f''] a''16[ a'' f'' f''] f''16[ f'' d'' d''] \bar "|"
    f''16[ f'' d'' d''] r2. \bar "|"
    r1 \bar "|"
    r4 d''16[ d'' bes' bes'] d''16[ d'' bes' bes'] d''16[ d'' bes' bes'] \bar "|"
    }
    
    r4 d''16[ d'' d'' d''] d''16[ d'' d'' d''] d''16[ d'' d'' d''] \bar "|"
    d''16[ d'' d'' d''] <a' d''>16[ <a' d''> <a' d''> <a' d''>] <a' d''>16[ <a' d''> <a' d''> <a' d''>] 
    <a' d''>16[ <a' d''> <a' d''> <a' d''>] \bar "|"
    <a' d''>16[ <a' d''> <a' d''> <a' d''>] <a' e''>16[ <a' e''> <a' e''> <a' e''>]
    <a' e''>16[ <a' e''> <a' e''> <a' e''>] <a' f''>16[ <a' f''> <a' f''> <a' f''>] \bar "|"
    <a' f''>16[ <a' f''> <a' f''> <a' f''>] <a' d'' f''>16[ <a' d'' f''> <a' d'' f''> <a' d'' f''>]
    <a' d'' f''>16[ <a' d'' f''> <a' d'' f''> <a' d'' f''>] <a' d'' f''>16[ <a' d'' f''> <a' d'' f''> <a' d'' f''>] \bar "|"
    
    \mark #2
    r4 bes''16[ bes'' bes'' bes''] bes''16[ bes'' bes'' bes''] bes''16[ bes'' bes'' bes''] \bar "|"
    bes''16[ bes'' bes'' bes''] <bes'' g''>16[ <bes'' g''> <bes'' g''> <bes'' g''>] <bes'' g''>16[ <bes'' g''> <bes'' g''> <bes'' g''>] 
    <bes'' g''>16[ <bes'' g''> <bes'' g''> <bes'' g''>] \bar "|"
    <bes'' g''>16[ <bes'' g''> <bes'' g''> <bes'' g''>] <bes'' g'' es'''>16[ <bes'' g'' es'''> <bes'' g'' es'''> <bes'' g'' es'''>]
    <bes'' g'' es'''>16[ <bes'' g'' es'''> <bes'' g'' es'''> <bes'' g'' es'''>] <bes'' g'' es'''>16[ <bes'' g'' es'''> <bes'' g'' es'''> <bes'' g'' es'''>] \bar "|"
    <bes'' g'' es'''>16[ <bes'' g'' es'''> <bes'' g'' es'''> <bes'' g'' es'''>] d'''16[ d''' d''' d'''] 
    d'''16[ d''' d''' d'''] d'''16[ d''' d''' d''']\bar "|"
    
    
    \repeat unfold 2 {
    r4 a'16[ f'' f'' a''] a'16[ f'' f'' a''] f'16[ d'' d'' f''] \bar "|"
    f'16[ d'' d'' f''] r2. \bar "|"
    r1 \bar "|"
    r4 d''16[ bes' bes' d'] d''16[ bes' bes' d'] d''16[ bes' bes' d'] \bar "|"
    }
    
    r4 d''16[ d'' d'' d''] d''16[ d'' d'' d''] d''16[ d'' d'' d''] \bar "|"
    d''16[ d'' d'' d''] \repeat tremolo 12 { bes'32 g' } \bar "|"
    bes'16[ g' bes' g'] \repeat tremolo 12 { bes'32 a' } \bar "|"
    bes'16[ a' bes' a'] a'16[ a' a' a'] a'16[ a' a' a'] a'16[ a' a' a'] \bar "|"
    
    a'16[ a' a' a'] a'16[ a' a' a'] a'16[ a' a' a'] a'16[ a' a' a'] \bar "|"
    a'16[ a' a' a'] \repeat tremolo 12 { a'32 f'' } \bar "|"
    \repeat tremolo 16 { a'32 f'' } \bar "|"
    a'16[ f'' a' f''] g'16[ es'' g' es''] g'16[ es'' g' es''] g'16[ es'' g' es''] \bar "|"
    
    \repeat unfold 2 {
    r4 a'16[ a' a' a''] a'16[ a' a' a''] f'16[ f' f' f''] \bar "|"
    f'16[ f' f' f''] r2. \bar "|"
    r1 \bar "|"
    r4 d''16[ d'' d'' d'] d''16[ d'' d'' d'] d''16[ d'' d'' d'] \bar "|"
    }
    
    \pageTurn
    r4 d'16[ d' d' d'] d'16[ d' d' d'] d'16[ d' d' d'] \bar "|"
    d'16[ d' d' d'] <a d'>16[ <a d'> <a d'> <a d'>] <a d'>16[ <a d'> <a d'> <a d'>] 
    <a d'>16[ <a d'> <a d'> <a d'>] \bar "|"
    <a d'>16[ <a d'> <a d'> <a d'>] <a e'>16[ <a e'> <a e'> <a e'>]
    <a e'>16[ <a e'> <a e'> <a e'>] <a f'>16[ <a f'> <a f'> <a f'>] \bar "|"
    <a f'>16[ <a f'> <a f'> <a f'>] <a d' f'>16[ <a d' f'> <a d' f'> <a d' f'>]
    <a d' f'>16[ <a d' f'> <a d' f'> <a d' f'>] <a d' f'>16[ <a d' f'> <a d' f'> <a d' f'>] \bar "|"
    
    r4 bes'16[ bes' bes' bes'] bes'16[ bes' bes' bes'] bes'16[ bes' bes' bes'] \bar "|"
    bes'16[ bes' bes' bes'] <bes' g'>16[ <bes' g'> <bes' g'> <bes' g'>] <bes' g'>16[ <bes' g'> <bes' g'> <bes' g'>] 
    <bes' g'>16[ <bes' g'> <bes' g'> <bes' g'>] \bar "|"
    <bes' g'>16[ <bes' g'> <bes' g'> <bes' g'>] <bes' g' es''>16[ <bes' g' es''> <bes' g' es''> <bes' g' es''>]
    <bes' g' es''>16[ <bes' g' es''> <bes' g' es''> <bes' g' es''>] <bes' g' es''>16[ <bes' g' es''> <bes' g' es''> <bes' g' es''>] \bar "|"
    <bes' g' es''>16[ <bes' g' es''> <bes' g' es''> <bes' g' es''>] d''16[ d'' d'' d''] 
    d''16[ d'' d'' d''] d''16[ d'' d'' d'']\bar "|"
    
    
    %% Section Two

    \time 4/4
    \tempo 4 = 110
    \mark \markup { \box 2 }
    r1\pp \bar "!"
    
    s1 \bar "!"
    r4 <bes' e''>2. \bar "!"
    s1 \bar "!"
    s4 <bes' d''>2. \bar "!"
    
    s1 \bar "!"
    s1 \bar "!"
    s1 \bar "!"
    s1 \bar "!"
    
    s1 \bar "!"
    s1 \bar "!"
    <bes' e''>4 <c'' e''>2 <a' e''>4 ~ \bar "!"
    <a' e''>4 <bes' d''>2. \bar "!"
    
    r4 <f' a''>2 <d' f''>4 \bar "!"
    s1 \bar "!"
    s1 \bar "!"
    s1 \bar "!"
    
    s1 \bar "!"
    s1 \bar "!"
    s1 \bar "!"
    s1 \bar "!"
    
    s1 \bar "!"
    <d' f''>4 <bes' e''>2. ~ \bar "!"
    <bes' e''>4 <c'' e''>2 <a' e''>4 ~ \bar "!"
    <a' e''>4 s2. \bar "!"
    
    r4 <f' a''>2 <d' f''>4 ~ \bar "!"
    <d' f''>4 <bes' e''>2. ~ \bar "!"
    <bes' e''>4 <c'' e''>2 <a' e''>4 ~ \bar "!"
    <a' e''>4 s2. \bar "!"
    
    r4 <f' a''>2 <d' f''>4 ~ \bar "!"
    <d' f''>4 <bes' e''>2. ~ \bar "!"
    <bes' e''>4 s2. \bar "!"
    s1 \bar "!"
    
    s1 \bar "!"
    s1 \bar "!"
    s1 \bar "!"
    s1 \bar "!"
    
    s1 \bar "!"
    <d' f''>4 <bes' e''>2. ~ \bar "!"
    <bes' e''>4 <c'' e''>2 <a' e''>4 ~ \bar "!"
    <a' e''>4 s2. \bar "!"
    
    s1 \bar "!"
    s1 \bar "!"
    s1 \bar "!"
    s1 \bar "!"
    
    s1 \bar "!"
    s1 \bar "!"
    s1 \bar "!"
    s1 \bar "!"
    
    s1 \bar "!"
    s1 \bar "!"
    s1 \bar "!"
    s1 \bar "!"
    
    s1 \bar "!"
    <d' f''>4 <bes' e''>2. ~ \bar "!"
    <bes' e''>4 <c'' e''>2 <a' e''>4 ~ \bar "!"
    <a' e''>4 s2. \bar "!"
    
    s1 \bar "!"
    s1 \bar "!"
    s1 \bar "!"
    s1 \bar "!"
    
    s1 \bar "!"
    s1 \bar "!"
    s1 \bar "!"
    s1 \bar "!"
    
   
    %% Section Two A

    \time 3/4
    r2. \bar "!"
    \time 5/8

    f'8[( a')] f'[( a' d'')] \bar "!"
    \time 7/8
    f'8[( a' e' a')] f'[( a' d'')] \bar "!"
    
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
    r4. r4 \bar "!"
    r4. r4 \bar "!"
    r4. r4 \bar "!"
    \time 7/8
    r2 r4. \bar "!"
    
    
    %% Mod Three third down
    
    \time 5/8
    r4 r4. \bar "!"
    r4 r4. \bar "!"
    r4 r4. \bar "!"
    \time 7/8
    r2 r4. \bar "!"
    
    \time 5/8
    g'8[( bes')] g'[( bes' f'')] \bar "!"
    g'8[( bes')] g'[( bes' f'')] \bar "!"
    e'8[( g')] e'[( g' d'')] \bar "!"
    \time 7/8
    e'8[( g' d' g')] e'[( g' d'')] \bar "!"
    
    \time 5/8
    gis'8[( b')] gis'[( b' fis'')] \bar "!"
    gis'8[( b')] gis'[( b' fis'')] \bar "!"
    gis'8[( b')] gis'[( b' fis'')] \bar "!"
    \time 7/8
    gis'8[( b' fis' b')] gis'[( b' fis'')] \bar "!"
    
    \time 5/8
    \mark #6
    e''8[( gis'')] e''[( gis'' d''')] \bar "!"
    e''8[( gis'')] e''[( gis'' d''')] \bar "!"
    e''8[( gis'')] e''[( gis'' d''')] \bar "!"
    \time 7/8
    e''8[( gis'' d'' gis'')] e''[( gis'' d''')] \bar "!"
    
    \time 5/8
    c''8[( e'')] c''[( e'' bes'')] \bar "!"
    c''8[( e'')] c''[( e'' bes'')] \bar "!"
    d''8[( f'')] d''[( f'' bes'')] \bar "!"
    \time 7/8
    d''8[( f'' c'' f'')] d''[( f'' bes'')] \bar "!"

    \time 5/8
    d''8[( f'')] d''[( f'' bes'')] \bar "!"
    d''8[( f'')] d''[( f'' bes'')] \bar "!"
    d''8[( f'')] d''[( f'' bes'')] \bar "!"
    \time 7/8
    d''8[( f'' c'' f'')] d''[( f'' bes'')] \bar "!"
    
    \time 5/8
    f''8[( a'')] f''[( a'' e''')] \bar "!"
    f''8[( a'')] f''[( a'' e''')] \bar "!"
    f''8[( a'')] f''[( a'' e''')] \bar "!"
    \time 7/8
    f''8[( a'' e'' a'')] f''[( a'' e''')] \bar "!"
    
    \time 5/8
    f''8[( a'')] f''[( a'' e''')] \bar "!"
    f''8[( a'')] f''[( a'' e''')] \bar "!"
    g''8[( b'')] g''[( b'' e''')] \bar "!"
    \time 7/8
    g''8[( b'' f'' b'')] g''[( b'' e''')] \bar "!"
    
    \time 5/8
    c''8[( e'')] c''[( e'' a'')] \bar "!"
    c''8[( e'')] c''[( e'' a'')] \bar "!"
    c''8[( e'')] c''[( e'' a'')] \bar "!"
    \time 7/8
    c''8[( e'' bes' e'')] c''[( e'' a'')] \bar "!"

    \time 5/8 
    e'8[( g'8)] e'[( g' d'')] \bar "!"
    e'8[( g'8)] e'[( g' d'')] \bar "!"
    e'8[( g'8)] e'[( g' d'')] \bar "!"
    \time 7/8
    e'8[( g' d' g')] e'[( g' d'')] \bar "!"
    
    \time 5/8
    
    gis'8[( b')] gis'[( b' fis'')] \bar "!"
    gis'8[( b')] gis'[( b' fis'')] \bar "!"
    e'8[( gis')] e'[( gis' d'')] \bar "!"
    \time 7/8
    e'8[( gis' d' gis')] e'[( gis' d'')] \bar "!"
    
    \time 5/8
    \mark #7
    e'8[( gis')] e'[( gis' d'')] \bar "!"
    e'8[( gis')] e'[( gis' d'')] \bar "!"
    e'8[( gis')] e'[( gis' d'')] \bar "!"
    \time 7/8
    e'8[( gis' d' gis')] e'[( gis' d'')] \bar "!"
    
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
    f''8[( a'')] f''[( a'' d''')] \bar "!"
    f''8[( a'')] f''[( a'' d''')] \bar "!"
    f''8[( a'')] f''[( a'' d''')] \bar "!"
    \time 7/8
    f''8[( a'' e'' a'')] f''[( a'' d''')] \bar "!"
    
    \time 5/8
    d''8[( f'')] d''[( f'' c''')] \bar "!"
    d''8[( f'')] d''[( f'' c''')] \bar "!"
    d''8[( f'')] d''[( f'' c''')] \bar "!"
    \time 7/8
    d''8[( f'' c'' f'')] d''[( f'' c''')] \bar "!"
    
    \time 5/8
    g'8[( bes')] g'[( bes' f'')] \bar "!"
    g'8[( bes')] g'[( bes' f'')] \bar "!"
    a'8[( c'')] a'[( c'' f'')] \bar "!"
    \time 7/8
    a'8[( c'' g' c'')] a'[( c'' f'')] \bar "!"
    
    \time 5/8
    a'8[( c'')] a'[( c'' f'')] \bar "!"
    a'8[( c'')] a'[( c'' f'')] \bar "!"
    a'8[( c'')] a'[( c'' f'')] \bar "!"
    \time 7/8
    a'8[( c'' g' c'')] a'[( c'' f'')] \bar "!"

    
    %% Mod Five third down
  
    \time 5/8 
    \mark \markup { \box 3 }
    r4 <g' g''>4.\p\arpeggio \bar "!"
    r4 <g' g''>4.\arpeggio \bar "!"
    r4 <g' g''>4.\arpeggio \bar "!"
    \time 7/8
    r2 <g' g''>4.\arpeggio \bar "!"
    
    \time 5/8
    r4 <g' g''>4.\arpeggio \bar "!"
    r4 <g' g''>4.\arpeggio \bar "!"
    r4 <g' g''>4.\arpeggio \bar "!"
    \time 7/8
    r2 <g' g''>4.\arpeggio \bar "!"
    
    \time 5/8
    r4 <c'' c'''>4.\arpeggio \bar "!"
    r4 <c'' c'''>4.\arpeggio \bar "!"
    r4 <c'' c'''>4.\arpeggio \bar "!"
    \time 7/8
    r2 <a' a''>4.\arpeggio \bar "!"
    
    \time 5/8
    r4 <c'' c'''>4.\arpeggio \bar "!"
    r4 <c'' c'''>4.\arpeggio \bar "!"
    r4 <c'' c'''>4.\arpeggio \bar "!"
    \time 7/8
    r2 <a' a''>4.\arpeggio \bar "!"
    
    \time 5/8
    r4 <a' a''>4.\arpeggio \bar "!"
    r4 <a' a''>4.\arpeggio \bar "!"
    r4 <a' a''>4.\arpeggio \bar "!"
    \time 7/8
    r2 <bes' bes''>4.\arpeggio \bar "!"

    \time 5/8
    r4 <a' a''>4.\arpeggio \bar "!"
    r4 <a' a''>4.\arpeggio \bar "!"
    r4 <a' a''>4.\arpeggio \bar "!"
    \time 7/8
    r2 <bes' bes''>4.\arpeggio \bar "!"
    
    \time 5/8
    r4 <bes' bes''>4.\arpeggio \bar "!"
    r4 <bes' bes''>4.\arpeggio \bar "!"
    r4 <bes' bes''>4.\arpeggio \bar "!"
    \time 7/8
    r2 <c' c''>4.\arpeggio \bar "!"
    
    \time 5/8
    r4 <bes' bes''>4.\arpeggio \bar "!"
    r4 <bes' bes''>4.\arpeggio \bar "!"
    r4 <bes' bes''>4.\arpeggio \bar "!"
    \time 7/8
    r2 <c' c''>4.\arpeggio \bar "!"
    
    \time 5/8
    r4 <c' c''>4.\arpeggio \bar "!"
    r4 <c' c''>4.\arpeggio \bar "!"
    r4 <c' c''>4.\arpeggio \bar "!"
    \time 7/8
    r2 <d'' d'''>4.\arpeggio \bar "!"
    
    \time 2/4
    r2\fermata \bar "!"

    \time 4/4 
    \tempo 4 = 80
    \mark \markup { \box 4 }
    
    \break
    r1 \bar"|"
    
    
    %repeat 1
    f'8[\p bes' f' cis''] f'8[ bes' f' cis''] \bar"|"
    f'8[ bes' f' cis''] f'8[ bes' f' cis''] \bar"|"
    e'8[ a' e' e''] e'8[ a' e' e''] \bar"|" 
    e'8[ a' e' e''] e'8[ a' e' e''] \bar"|" 
    f'8[ a' f' d''] f'8[ a' f' d''] \bar"|"
    f'8[ a' f' d''] f'8[ a' f' d''] \bar"|"
    f'8[ g' f' bes'] f'8[ g' f' bes'] \bar"|"
    f'8[ g' f' bes'] f'8[ g' f' bes'] \bar"|"
    g'8[ bes' g' d'] g'8[ bes' g' d'] \bar"|"
    g'8[ bes' g' d'] g'8[ bes' g' d'] \bar"|"
    g'8[ bes' g' es''] g'8[ bes' g' es''] \bar"|"
    g'8[ bes' g' es''] g'8[ bes' g' es''] \bar"|"
    
    %repeat 2
    \mark #8
    f'8[ bes' f' cis''] f'8[ bes' f' cis''] \bar"|"
    f'8[ bes' f' cis''] f'8[ bes' f' cis''] \bar"|"
    e'8[ a' e' e''] e'8[ a' e' e''] \bar"|" 
    e'8[ a' e' e''] e'8[ a' e' e''] \bar"|" 
    f'8[ a' f' d''] f'8[ a' f' d''] \bar"|"
    f'8[ a' f' d''] f'8[ a' f' d''] \bar"|"
    f'8[ g' f' bes'] f'8[ g' f' bes'] \bar"|"
    f'8[ g' f' bes'] f'8[ g' f' bes'] \bar"|"
    g'8[ bes' g' d'] g'8[ bes' g' d'] \bar"|"
    g'8[ bes' g' d'] g'8[ bes' g' d'] \bar"|"
    g'8[ bes' g' es''] g'8[ bes' g' es''] \bar"|"
    g'8[ bes' g' es''] g'8[ bes' g' es''] \bar"|"
    
    %repeat 3
    \mark #9
    f'8[ bes' f' cis''] f'8[ bes' f' cis''] \bar"|"
    f'8[ bes' f' cis''] f'8[ bes' f' cis''] \bar"|"
    e'8[ a' e' e''] e'8[ a' e' e''] \bar"|" 
    e'8[ a' e' e''] e'8[ a' e' e''] \bar"|" 
    f'8[ a' f' d''] f'8[ a' f' d''] \bar"|"
    f'8[ a' f' d''] f'8[ a' f' d''] \bar"|"
    f'8[ g' f' bes'] f'8[ g' f' bes'] \bar"|"
    f'8[ g' f' bes'] f'8[ g' f' bes'] \bar"|"
    g'8[ bes' g' d'] g'8[ bes' g' d'] \bar"|"
    g'8[ bes' g' d'] g'8[ bes' g' d'] \bar"|"
    g'8[ bes' g' es''] g'8[ bes' g' es''] \bar"|"
    g'8[ bes' g' es''] g'8[ bes' g' es''] \bar"|"
    
    
    %repeat 4
    \mark #10
    f'8[ bes' f' cis''] f'8[ bes' f' cis''] \bar"|"
    f'8[ bes' f' cis''] f'8[ bes' f' cis''] \bar"|"
    e'8[ a' e' e''] e'8[ a' e' e''] \bar"|" 
    e'8[ a' e' e''] e'8[ a' e' e''] \bar"|" 
    f'8[ a' f' d''] f'8[ a' f' d''] \bar"|"
    f'8[ a' f' d''] f'8[ a' f' d''] \bar"|"
    f'8[ g' f' bes'] f'8[ g' f' bes'] \bar"|"
    f'8[ g' f' bes'] f'8[ g' f' bes'] \bar"|"
    g'8[ bes' g' d'] g'8[ bes' g' d'] \bar"|"
    g'8[ bes' g' d'] g'8[ bes' g' d'] \bar"|"
    g'8[ bes' g' es''] g'8[ bes' g' es''] \bar"|"
    g'8[ bes' g' es''] g'8[ bes' g' es''] \bar"|"
    
    %repeat 5
    \mark #11
    f'8[ bes' f' cis''] f'8[ bes' f' cis''] \bar"|"
    f'8[ bes' f' cis''] f'8[ bes' f' cis''] \bar"|"
    e'8[ a' e' e''] e'8[ a' e' e''] \bar"|" 
    e'8[ a' e' e''] e'8[ a' e' e''] \bar"|" 
    f'8[ a' f' d''] f'8[ a' f' d''] \bar"|"
    f'8[ a' f' d''] f'8[ a' f' d''] \bar"|"
    \startRit
    f'8[\startTextSpan g' f' bes'] f'8[ g' f' bes'] \bar"|"
    f'8[ g' f' bes'] f'8[ g' f' bes'] \bar"|"
    g'8[ bes' g' d'] g'8[ bes' g' d'] \bar"|"
    g'8[ bes' g' d'] g'8[ bes' g' d'] \bar"|"
    g'8[ bes' g' es''] g'8[ bes' g' es''] \bar"|"
    g'8[ bes'] g'2.\stopTextSpan \bar"|"
    
    %}
    
	\bar "|."
  }
}

animation_cembalo_left = {
  {
    
    %% Ostinato
    \time 4/4
    \tempo 4 = 55
    r1 \bar "|"
    
    
    r4 f'16[ f' f' f'] f'16[ f' f' f'] f'16[ f' f' f'] \bar "|" 
    f'16[ f' f' f'] \repeat tremolo 12 { d'32 f' } \bar "|"
    d'16[ f' d' f'] \repeat tremolo 12 { d'32 bes' } \bar "|"
    d'16[ bes' d' bes'] \repeat tremolo 12 { c''32 e' } \bar "|"
    
    
    c''16[ e' c'' e'] bes'16[ bes' bes' bes'] bes'16[ bes' bes' bes'] bes'16[ bes' bes' bes'] \bar "|"
    bes'16[ bes' bes' bes'] bes'16[ bes' bes' bes'] bes'16[ bes' bes' bes'] bes'16[ bes' bes' bes'] \bar "|"
    bes'16[ bes' bes' bes'] c''16[ c'' c'' c''] c''16[ c'' c'' c''] a'16[ a' a' a'] \bar "|"
    a'16[ a' a' a'] bes'16[ bes' bes' bes'] bes'16[ bes' bes' bes'] bes'16[ bes' bes' bes'] \bar "|"

    
    r4 f'16[ f' f' f'] f'16[ f' f' f'] f'16[ f' f' f'] \bar "|" 
    f'16[ f' f' f'] \repeat tremolo 12 { d'32 f' } \bar "|"
    d'16[ f' d' f'] \repeat tremolo 12 { d'32 bes' } \bar "|"
    d'16[ bes' d' bes'] \repeat tremolo 12 { c''32 e' } \bar "|"
    
    
    c''16[ e' c'' e'] bes'16[ bes' bes' bes'] bes'16[ bes' bes' bes'] bes'16[ bes' bes' bes'] \bar "|"
    bes'16[ bes' bes' bes'] bes'16[ bes' bes' bes'] bes'16[ bes' bes' bes'] bes'16[ bes' bes' bes'] \bar "|"
    bes'16[ bes' bes' bes'] c''16[ c'' c'' c''] c''16[ c'' c'' c''] a'16[ a' a' a'] \bar "|"
    a'16[ a' a' a'] bes'16[ bes' bes' bes'] bes'16[ bes' bes' bes'] bes'16[ bes' bes' bes'] \bar "|"
    
    \repeat unfold 2 {
    r4 f'16[ f' a' a'] f'16[ f' a' a'] d'16[ d' f' f'] \bar "|"
    d'16[ d' f' f'] r2. \bar "|"
    r1 \bar "|"
    r4 bes'16[ bes' d' d'] bes'16[ bes' d' d'] bes'16[ bes' d' d'] \bar "|"
    }
    
    r4 d'16[ d' d' d'] d'16[ d' d' d'] d'16[ d' d' d'] \bar "|"
    d'16[ d' d' d'] <a d'>16[ <a d'> <a d'> <a d'>] <a d'>16[ <a d'> <a d'> <a d'>] 
    <a d'>16[ <a d'> <a d'> <a d'>] \bar "|"
    <a d'>16[ <a d'> <a d'> <a d'>] <a e'>16[ <a e'> <a e'> <a e'>]
    <a e'>16[ <a e'> <a e'> <a e'>] <a f'>16[ <a f'> <a f'> <a f'>] \bar "|"
    <a f'>16[ <a f'> <a f'> <a f'>] <a d' f'>16[ <a d' f'> <a d' f'> <a d' f'>]
    <a d' f'>16[ <a d' f'> <a d' f'> <a d' f'>] <a d' f'>16[ <a d' f'> <a d' f'> <a d' f'>] \bar "|"
    
    r4 bes'16[ bes' bes' bes'] bes'16[ bes' bes' bes'] bes'16[ bes' bes' bes'] \bar "|"
    bes'16[ bes' bes' bes'] <bes' g'>16[ <bes' g'> <bes' g'> <bes' g'>] <bes' g'>16[ <bes' g'> <bes' g'> <bes' g'>] 
    <bes' g'>16[ <bes' g'> <bes' g'> <bes' g'>] \bar "|"
    <bes' g'>16[ <bes' g'> <bes' g'> <bes' g'>] <bes' g' es''>16[ <bes' g' es''> <bes' g' es''> <bes' g' es''>]
    <bes' g' es''>16[ <bes' g' es''> <bes' g' es''> <bes' g' es''>] <bes' g' es''>16[ <bes' g' es''> <bes' g' es''> <bes' g' es''>] \bar "|"
    <bes' g' es''>16[ <bes' g' es''> <bes' g' es''> <bes' g' es''>] d''16[ d'' d'' d''] d''16[ d'' d'' d''] d''16[ d'' d'' d'']\bar "|"
    
    \repeat unfold 2 {
    r4 f16[ a a f'] f16[ a a f'] d16[ f f d'] \bar "|"
    d16[ f f d'] r2. \bar "|"
    r1 \bar "|"
    \clef bass r4 bes16[ d d bes,] bes16[ d d bes,] bes16[ d d bes,] \bar "|"
    }
    
    r4 bes16[ bes bes bes] bes16[ bes bes bes] bes16[ bes bes bes] \bar "|" 
    bes16[ bes bes bes] \repeat tremolo 12 { g32 bes } \bar "|"
    g16[ bes g bes] \repeat tremolo 12 { g32 es' } \bar "|"
    g16[ es' g es'] \repeat tremolo 12 { f'32 a } \bar "|"
    
    
    f'16[ a f' a] es'16[ es' es' es'] es'16[ es' es' es'] es'16[ es' es' es'] \bar "|"
    es'16[ es' es' es'] es'16[ es' es' es'] es'16[ es' es' es'] es'16[ es' es' es'] \bar "|"
    es'16[ es' es' es'] f'16[ f' f' f'] f'16[ f' f' f'] d'16[ d' d' d'] \bar "|"
    d'16[ d' d' d'] es'16[ es' es' es'] es'16[ es' es' es'] es'16[ es' es' es'] \bar "|"
    
    \repeat unfold 2 {
    r4 f'16[ f' f' f] f'16[ f' f' f] d'16[ d' d' d] \bar "|"
    d'16[ d' d' d] r2. \bar "|"
    r1 \bar "|"
    r1 \bar "|"
    }
    
    r4 d16[ d d d] d16[ d d d] d16[ d d d] \bar "|"
    d16[ d d d] <a, d>16[ <a, d> <a, d> <a, d>] <a, d>16[ <a, d> <a, d> <a, d>] 
    <a, d>16[ <a, d> <a, d> <a, d>] \bar "|"
    <a, d>16[ <a, d> <a, d> <a, d>] <a, e>16[ <a, e> <a, e> <a, e>]
    <a, e>16[ <a, e> <a, e> <a, e>] <a, f>16[ <a, f> <a, f> <a, f>] \bar "|"
    <a, f>16[ <a, f> <a, f> <a, f>] <a, d f>16[ <a, d f> <a, d f> <a, d f>]
    <a, d f>16[ <a, d f> <a, d f> <a, d f>] <a, d f>16[ <a, d f> <a, d f> <a, d f>] \bar "|"
    
    r4 bes16[ bes bes bes] bes16[ bes bes bes] bes16[ bes bes bes] \bar "|"
    bes16[ bes bes bes] <bes g>16[ <bes g> <bes g> <bes g>] <bes g>16[ <bes g> <bes g> <bes g>] 
    <bes g>16[ <bes g> <bes g> <bes g>] \bar "|"
    <bes g>16[ <bes g> <bes g> <bes g>] <bes g es'>16[ <bes g es'> <bes g es'> <bes g es'>]
    <bes g es'>16[ <bes g es'> <bes g es'> <bes g es'>] <bes g es'>16[ <bes g es'> <bes g es'> <bes g es'>] \bar "|"
    <bes g es'>16[ <bes g es'> <bes g es'> <bes g es'>] d'16[ d' d' d'] d'16[ d' d' d'] d'16[ d' d' d']\bar "|"
    
   
    %% Section Two - bisbigliando figuration
    \clef treble
    \time 4/4
    d'8-. r8 
    \repeat tremolo 6 { d'16 f' }\bar "!" 
    d'8-. r8 \repeat tremolo 6 { <d' e'>16 \staffUpper <f' d''> } \staffLower  \bar "!"
    \stemNeutral
    f'8-. r8 \repeat tremolo 6 { e'16 f' } 
    \bar "!"
    \clef bass
    <bes f'>8-. r8 \repeat tremolo 6 { <e a>16 \staffUpper <f' bes'> } \staffLower
    \bar "!"
    bes8-. r8 \repeat tremolo 6 { a16 bes }  
    \bar "!"
    \repeat tremolo 4 { a16 \staffUpper <bes' c''>} \staffLower 
    \repeat tremolo 4 { <a c'>16 \staffUpper <g' bes'> } \staffLower
    \bar "!"
    <f g,>8-. r8 \repeat tremolo 6 { e'16 \staffUpper <f' g'> } \staffLower 
    \bar "!"
    <f g,>8-. r8 \repeat tremolo 6 { e'16 \staffUpper <f' g'> } \staffLower
    \bar "!"
    <g bes>8-. r8 \repeat tremolo 6 { bes16 \staffUpper <g' a'> } \staffLower 
    \bar "!"
    <g bes>8-. r8 \repeat tremolo 6 { bes16 \staffUpper <g' a'> } \staffLower 
    \bar "!"
    <g' bes'>8-. r8 \repeat tremolo 6 { bes'16 \staffUpper <g' a'> } \staffLower
    \bar "!"
    bes8-. r8 \repeat tremolo 6 { a16 bes }
    \bar "!"
    bes8-. r8 \repeat tremolo 6 { a16 bes } 
    \bar "!"
    
    
    bes8-. r8 \repeat tremolo 6 { a16 bes}  \bar "!" 
    bes8-. r8 \repeat tremolo 6 { a16 \staffUpper <bes' d''> } \staffLower  \bar "!"
    \mark #3
    <bes d'>8-. r8 \repeat tremolo 6 { a16 \staffUpper <bes' d''> \staffLower } \bar "!" 
    
    d'8-. r8 \repeat tremolo 6 { <bes c'>16 \staffUpper d'' } \staffLower \bar "!" 
    \repeat tremolo 8 { <bes c'>16 \staffUpper d'' } \staffLower \bar "!" 
    <bes c'>8-. r8 \repeat tremolo 6 { e'16 \staffUpper <bes' d''> } \staffLower \bar "!"
    d'8-. r8 \repeat tremolo 6 { bes16 \staffUpper <a' d''> } \staffLower \bar "!"  
    \repeat tremolo 8 { bes16 \staffUpper <a' d''> } \staffLower \bar "!"
    <bes f'>8-. r8 \repeat tremolo 6 { <bes f'>16 \staffUpper <a' e''>16 } \staffLower \bar "!" 
    \repeat tremolo 8 { e'16 f' } \bar "!"
    \repeat tremolo 8 { e'16 f' } \bar "!" 
    <e' g'>8-. r8 \repeat tremolo 6 { f'16 \staffUpper <g' e''> } \staffLower \bar "!"
    \repeat tremolo 8 { e16 f } 
    \bar "!"
    
    g8-. r8 \repeat tremolo 6 { f16 g } \bar "!" 
    \repeat tremolo 8 { f16 g } \bar "!"
    <g bes>8-. r8 \repeat tremolo 6 { a16 \staffUpper <g' bes'> } \staffLower \bar "!" 
    g8-. r8 \repeat tremolo 6 { a16 bes } \bar "!"
    g8-. r8 \repeat tremolo 6 { a16 bes } \bar "!" 
    c8-. r8 \repeat tremolo 6 { a16 \staffUpper <bes' c''> } \staffLower \bar "!"
    d8-. r8 \repeat tremolo 6 { a16 \staffUpper <a' c''> } \staffLower \bar "!" 
    d8-. r8 \repeat tremolo 6 { a16 \staffUpper <bes' c''> } \staffLower \bar "!"
    <bes d'>8-. r8 \repeat tremolo 6 { <a c'>16 \staffUpper <bes' d''> } \staffLower \bar "!" 
    g8-. r8 \repeat tremolo 6 { <a c'>16 \staffUpper <bes' d''> } \staffLower \bar "!"
    g8-. r8 \repeat tremolo 6 { <a c'>16 \staffUpper <c'' d''> } \staffLower \bar "!" 
    \mark #4
    <c e>8-. r8 \repeat tremolo 6 { <bes, d>16 \staffUpper <c'' e''> } \staffLower \bar "!"
    d'8-. r8 \repeat tremolo 6 { c'16 d' } 
    \bar "!"
    
    f'8-. r8 \repeat tremolo 6 { e'16 f' } \bar "!" 
    f'8-. r8 \repeat tremolo 6 { e'16 \staffUpper <f' g'> } \staffLower  \bar "!"
    <e g>8-. r8 \repeat tremolo 6 { <f a>16 \staffUpper <e' g'> } \staffLower  \bar "!" 
    <e g>8-. r8 \repeat tremolo 6 { <f a>16 \staffUpper <e' g'> } \staffLower  \bar "!"
    <e g>8-. r8 \repeat tremolo 6 { <f a>16 \staffUpper <e' g'> } \staffLower \bar "!" 
    <f a c'>8-. r8 \repeat tremolo 6 { <e g bes>16 \staffUpper <f' a' c'> } \staffLower  \bar "!"
    <e g bes>8-. r8 \repeat tremolo 6 { <f a c>16 \staffUpper <e' g' bes'> } \staffLower  \bar "!" 
    <f a c>8-. r8 \repeat tremolo 6 { <e g bes>16 \staffUpper <f' a' c'> } \staffLower \bar "!"
    <a c' e'>8-. r8 \repeat tremolo 6 { <bes f' g'>16 \staffUpper <a' c'' e''> } \staffLower \bar "!" 
    <bes f' g'>8-. r8 \repeat tremolo 6 { <a c' e'>16 \staffUpper <bes' f'' g''> } \staffLower \bar "!"
    <a c' e'>8-. r8 \repeat tremolo 6 { <bes f' g'>16 \staffUpper <a' c'' e''> } \staffLower \bar "!" 
    <bes d'>8-. r8 \repeat tremolo 6 { <a c' e'>16 \staffUpper <bes' d''> } \staffLower \bar "!"
    <a c' e'>8-. r8 \repeat tremolo 6 { <bes d'>16 \staffUpper <a' c'' e''> } \staffLower 
    \bar "!"
    \clef treble
    <bes' d''>8-. r8 \repeat tremolo 6 { <f'' a''>16 \staffUpper <bes' d''> } \staffLower \bar "!" 
    <bes' d''>8-. r8 \repeat tremolo 6 { <f'' a''>16 \staffUpper <bes' d''> } \staffLower \bar "!"
    f''8-. r8 \repeat tremolo 6 { e''16 f'' } \bar "!" 
    e''8-. r8 \repeat tremolo 6 { f''16 e'' } \bar "!"
    <f'' g''>8-. r8 \repeat tremolo 6 { e''16 \staffUpper <f'' g''> } \staffLower \bar "!" 
    <c'' e''>8-. r8 \repeat tremolo 6 { <e' g''>16 \staffUpper <c'' e''>} \staffLower \bar "!"
    f''8-. r8 \repeat tremolo 6 { <c'' e''>16 \staffUpper f'' } \staffLower \bar "!" 
    \mark #5
    <a' c'' e''>8-. r8 \repeat tremolo 6 { <a' c'' e''>16 \staffUpper <f'' f'''>  } \staffLower \bar "!"
    f'8-. r8 \repeat tremolo 6 { <a' c'' e'>16 \staffUpper <f'' f'''> } \staffLower \bar "!" 
    <a' c'' e'>8-. r8 \repeat tremolo 6 { <f' g'>16 \staffUpper <a' c'' e''> } \staffLower \bar "!"
    <e' g'>8-. r8 \repeat tremolo 6 { <e' g'>16 \staffUpper <a' c'' e''> } \staffLower \bar "!" 
    <a' c'' e''>8-. r8 \repeat tremolo 6 { <bes f' g'>16 \staffUpper <a' c'' e''> } \staffLower \bar "!"
    <bes f' g'>8-. r8 \repeat tremolo 6 { <bes f' g'>16 \staffUpper <a' c'' e''> } \staffLower  
    \bar "!"
	

    %%% Section Two A
    \time 3/4
    r2. \bar "!"
    \time 5/8
    \clef bass
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
    r4. r4 \bar "!"
    r4. r4 \bar "!"
    r4. r4 \bar "!"
    \time 7/8
    r2 r4. \bar "!"
    
    
    %% Mod Three third down
    \pageTurn
    \time 5/8 
    g8[( bes8)] g[( bes f')] \bar "!"
    g8[( bes8)] g[( bes f')] \bar "!"
    g8[( bes8)] g[( bes f')] \bar "!"
    \time 7/8
    g8[( bes f bes)] g[( bes f')] \bar "!"
    
    \time 5/8
    g8[( bes)] g[( bes f')] \bar "!"
    g8[( bes)] g[( bes f')] \bar "!"
    e8[( g)] e[( g d')] \bar "!"
    \time 7/8
    e8[( g d g)] e[( g d')] \bar "!"
    
    \time 5/8
    e8[( g)] e[( g d')] \bar "!"
    e8[( g)] e[( g d')] \bar "!"
    e8[( g)] e[( g d')] \bar "!"
    \time 7/8
    e8[( g d g)] e[( g d')] \bar "!"
    
    \time 5/8
    c8[( e)] c[( e bes)] \bar "!"
    c8[( e)] c[( e bes)] \bar "!"
    c8[( e)] c[( e bes)] \bar "!"
    \time 7/8
    c8[( e bes, e)] c[( e bes)] \bar "!"
    
    \time 5/8
    c8[( e)] c[( e bes)] \bar "!"
    c8[( e)] c[( e bes)] \bar "!"
    d8[( f)] d[( f bes)] \bar "!"
    \time 7/8
    d8[( f c f)] d[( f bes)] \bar "!"

    \time 5/8
    d8[( f)] d[( f bes)] \bar "!"
    d8[( f)] d[( f bes)] \bar "!"
    d8[( f)] d[( f bes)] \bar "!"
    \time 7/8
    d8[( f c f)] d[( f bes)] \bar "!"
    
    \time 5/8
    bes,8[( d)] bes,[( d a)] \bar "!"
    bes,8[( d)] bes,[( d a)] \bar "!"
    bes,8[( d)] bes,[( d a)] \bar "!"
    \time 7/8
    bes,8[( d a, d)] bes,[( d a)] \bar "!"
    
    \time 5/8
    bes,8[( d)] bes,[( d a)] \bar "!"
    bes,8[( d)] bes,[( d a)] \bar "!"
    c8[( e)] c[( e a)] \bar "!"
    \time 7/8
    c8[( e bes, e)] c[( e a)] \bar "!"
    
    \time 5/8
    c8[( e)] c[( e a)] \bar "!"
    c8[( e)] c[( e a)] \bar "!"
    c8[( e)] c[( e a)] \bar "!"
    \time 7/8
    c8[( e bes, e)] c[( e a)] \bar "!"
    
    
    %% Mod Four third down
    
    \time 5/8 
    e8[( g8)] e[( g d')] \bar "!"
    e8[( g8)] e[( g d')] \bar "!"
    e8[( g8)] e[( g d')] \bar "!"
    \time 7/8
    e8[( g d g)] e[( g d')] \bar "!"
    
    \time 5/8
    e8[( g)] e[( g d')] \bar "!"
    e8[( g)] e[( g d')] \bar "!"
    c8[( e)] c[( e bes)] \bar "!"
    \time 7/8
    c8[( e bes, e)] c[( e bes)] \bar "!"
    
    \time 5/8
    c8[( e)] c[( e bes)] \bar "!"
    c8[( e)] c[( e bes)] \bar "!"
    c8[( e)] c[( e bes)] \bar "!"
    \time 7/8
    c8[( e bes, e)] c[( e bes)] \bar "!"
    
    \time 5/8
    a,8[( c)] a,[( c g)] \bar "!"
    a,8[( c)] a,[( c g)] \bar "!"
    a,8[( c)] a,[( c g)] \bar "!"
    \time 7/8
    a,8[( c g, c)] a,[( c g)] \bar "!"
    
    \time 5/8
    a,8[( c)] a,[( c g)] \bar "!"
    a,8[( c)] a,[( c g)] \bar "!"
    bes,8[( d)] bes,[( d g)] \bar "!"
    \time 7/8
    bes,8[( d a, d)] bes,[( d g)] \bar "!"

    \time 5/8
    bes,8[( d)] bes,[( d g)] \bar "!"
    bes,8[( d)] bes,[( d g)] \bar "!"
    bes,8[( d)] bes,[( d g)] \bar "!"
    \time 7/8
    bes,8[( d a, d)] bes,[( d g)] \bar "!"
    
    \time 5/8
    g,8[( bes,)] g,[( bes, f)] \bar "!"
    g,8[( bes,)] g,[( bes, f)] \bar "!"
    g,8[( bes,)] g,[( bes, f)] \bar "!"
    \time 7/8
    g,8[( bes, f, bes,)] g,[( bes, f)] \bar "!"
    
    \time 5/8
    g,8[( bes,)] g,[( bes, f)] \bar "!"
    g,8[( bes,)] g,[( bes, f)] \bar "!"
    a,8[( c)] a,[( c f)] \bar "!"
    \time 7/8
    a,8[( c g, c)] a,[( c f)] \bar "!"
    
    \time 5/8
    a,8[( c)] a,[( c f)] \bar "!"
    a,8[( c)] a,[( c f)] \bar "!"
    a,8[( c)] a,[( c f)] \bar "!"
    \time 7/8
    a,8[( c g, c)] a,[( c f)] \bar "!"
    
    %% Mod Five third down
  
    \time 5/8 
    r4 <c g>4. \bar "!"
    r4 <c g>4. \bar "!"
    r4 <c g>4. \bar "!"
    \time 7/8
    r2 <f c'>4. \bar "!"
    
    \time 5/8
    r4 <c g>4.\arpeggio \bar "!"
    r4 <c g>4.\arpeggio \bar "!"
    r4 <c g>4.\arpeggio \bar "!"
    \time 7/8
    r2 <d a>4.\arpeggio \bar "!"
    
    \time 5/8
    r4 <d a>4.\arpeggio \bar "!"
    r4 <d a>4.\arpeggio \bar "!"
    r4 <d a>4.\arpeggio \bar "!"
    \time 7/8
    r2 <d a>4.\arpeggio \bar "!"
    
    \time 5/8
    r4 <d a>4.\arpeggio \bar "!"
    r4 <d a>4.\arpeggio \bar "!"
    r4 <d a>4.\arpeggio \bar "!"
    \time 7/8
    r2 <d a>4.\arpeggio \bar "!"
    
    \time 5/8
    r4 <f c'>4.\arpeggio \bar "!"
    r4 <f c'>4.\arpeggio \bar "!"
    r4 <f c'>4.\arpeggio \bar "!"
    \time 7/8
    r2 <g d'>4.\arpeggio \bar "!"

    \time 5/8
    r4 <g d'>4.\arpeggio \bar "!"
    r4 <g d'>4.\arpeggio \bar "!"
    r4 <g d'>4.\arpeggio \bar "!"
    \time 7/8
    r2 <g d'>4.\arpeggio \bar "!"
    
    \time 5/8
    r4 <g d'>4.\arpeggio \bar "!"
    r4 <g d'>4.\arpeggio \bar "!"
    r4 <g d'>4.\arpeggio \bar "!"
    \time 7/8
    r2 <g d'>4.\arpeggio \bar "!"
    
    \time 5/8
    r4 <g d'>4.\arpeggio \bar "!"
    r4 <g d'>4.\arpeggio \bar "!"
    r4 <f c'>4.\arpeggio \bar "!"
    \time 7/8
    r2 <f c'>4.\arpeggio \bar "!"
    
    \time 5/8
    r4 <f c'>4.\arpeggio \bar "!"
    r4 <f c'>4.\arpeggio \bar "!"
    r4 <f c'>4.\arpeggio \bar "!"
    \time 7/8
    r2 <f c'>4.\arpeggio \bar "!"
    
    \time 2/4
    r2\fermata \bar "!"
    
    \time 4/4
    \tempo 4 = 80
    r1 \bar"|"
   
    
    cis8[ cis' f cis'] f[ cis' f cis'] \bar"|"
    cis8[ cis' f cis'] f[ cis' f cis'] \bar"|"
    cis8[ cis' a cis'] a[ cis' a cis'] \bar"|"
    cis8[ cis' a cis'] a[ cis' a cis'] \bar"|"
    d8[ d' f d'] f[ d f d] \bar"|"
    d8[ d' f d'] f[ d f d] \bar"|"
    d8[ d' g d'] g[ d' g d'] \bar"|"
    d8[ d' g d'] g[ d' g d'] \bar"|"
    d8[ d' g d'] g[ d' g d'] \bar"|"
    d8[ d' g d'] g[ d' g d'] \bar"|"
    es8[ es' bes es'] bes[ es' bes' es'] \bar"|"
    es8[ es' bes es'] bes[ es' bes' es'] \bar"|"
    
    %%repeat 2
    cis8[ cis' f cis'] f[ cis' f cis'] \bar"|"
    cis8[ cis' f cis'] f[ cis' f cis'] \bar"|"
    cis8[ cis' a cis'] a[ cis' a cis'] \bar"|"
    cis8[ cis' a cis'] a[ cis' a cis'] \bar"|"
    d8[ d' f d'] f[ d f d] \bar"|"
    d8[ d' f d'] f[ d f d] \bar"|"
    d8[ d' g d'] g[ d' g d'] \bar"|"
    d8[ d' g d'] g[ d' g d'] \bar"|"
    d8[ d' g d'] g[ d' g d'] \bar"|"
    d8[ d' g d'] g[ d' g d'] \bar"|"
    es8[ es' bes es'] bes[ es' bes' es'] \bar"|"
    es8[ es' bes es'] bes[ es' bes' es'] \bar"|"
    
    %%repeat 3
    cis8[ cis' f cis'] f[ cis' f cis'] \bar"|"
    cis8[ cis' f cis'] f[ cis' f cis'] \bar"|"
    cis8[ cis' a cis'] a[ cis' a cis'] \bar"|"
    cis8[ cis' a cis'] a[ cis' a cis'] \bar"|"
    d8[ d' f d'] f[ d f d] \bar"|"
    d8[ d' f d'] f[ d f d] \bar"|"
    d8[ d' g d'] g[ d' g d'] \bar"|"
    d8[ d' g d'] g[ d' g d'] \bar"|"
    d8[ d' g d'] g[ d' g d'] \bar"|"
    d8[ d' g d'] g[ d' g d'] \bar"|"
    es8[ es' bes es'] bes[ es' bes' es'] \bar"|"
    es8[ es' bes es'] bes[ es' bes' es'] \bar"|"
    
    %%repeat 4
    cis8[ cis' f cis'] f[ cis' f cis'] \bar"|"
    cis8[ cis' f cis'] f[ cis' f cis'] \bar"|"
    cis8[ cis' a cis'] a[ cis' a cis'] \bar"|"
    cis8[ cis' a cis'] a[ cis' a cis'] \bar"|"
    d8[ d' f d'] f[ d f d] \bar"|"
    d8[ d' f d'] f[ d f d] \bar"|"
    d8[ d' g d'] g[ d' g d'] \bar"|"
    d8[ d' g d'] g[ d' g d'] \bar"|"
    d8[ d' g d'] g[ d' g d'] \bar"|"
    d8[ d' g d'] g[ d' g d'] \bar"|"
    es8[ es' bes es'] bes[ es' bes' es'] \bar"|"
    es8[ es' bes es'] bes[ es' bes' es'] \bar"|"
    
    %%repeat 5
    cis8[ cis' f cis'] f[ cis' f cis'] \bar"|"
    cis8[ cis' f cis'] f[ cis' f cis'] \bar"|"
    cis8[ cis' a cis'] a[ cis' a cis'] \bar"|"
    cis8[ cis' a cis'] a[ cis' a cis'] \bar"|"
    d8[ d' f d'] f[ d f d] \bar"|"
    d8[ d' f d'] f[ d f d] \bar"|"
    d8[ d' g d'] g[ d' g d'] \bar"|"
    d8[ d' g d'] g[ d' g d'] \bar"|"
    d8[ d' g d'] g[ d' g d'] \bar"|"
    d8[ d' g d'] g[ d' g d'] \bar"|"
    es8[ es' bes es'] bes[ es' bes' es'] \bar"|"
    es8[ es'] bes2. \bar"|"
    %}
	\bar "|."
  }
}
