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
    \barNumberCheck #11
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
    \barNumberCheck #30
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
    
    \mark #3
    \barNumberCheck #42
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
    
    
    %% Section Three
    %% Mod Five third down
    \time 5/8 
    \mark #4
    r4 <g' g''>4.\p\arpeggio |
    r4 <g' g''>4.\arpeggio |
    r4 <g' g''>4.\arpeggio |
    \time 7/8
    r2 <g' g''>4.\arpeggio |
    
    \time 5/8
    r4 <g' g''>4.\arpeggio |
    r4 <g' g''>4.\arpeggio |
    r4 <g' g''>4.\arpeggio |
    \time 7/8
    r2 <g' g''>4.\arpeggio |
    
    \time 5/8
    r4 <c'' c'''>4.\arpeggio |
    r4 <c'' c'''>4.\arpeggio |
    r4 <c'' c'''>4.\arpeggio |
    \time 7/8
    r2 <a' a''>4.\arpeggio |
    
    \time 5/8
    r4 <c'' c'''>4.\arpeggio |
    r4 <c'' c'''>4.\arpeggio |
    r4 <c'' c'''>4.\arpeggio |
    \time 7/8
    r2 <a' a''>4.\arpeggio |
    
    \mark #5
    \time 5/8
    r4 <a' a''>4.\arpeggio |
    r4 <a' a''>4.\arpeggio |
    r4 <a' a''>4.\arpeggio |
    \time 7/8
    r2 <bes' bes''>4.\arpeggio |

    \time 5/8
    r4 <a' a''>4.\arpeggio |
    r4 <a' a''>4.\arpeggio |
    r4 <a' a''>4.\arpeggio |
    \time 7/8
    r2 <bes' bes''>4.\arpeggio |
    
    \time 5/8
    r4 <bes' bes''>4.\arpeggio |
    r4 <bes' bes''>4.\arpeggio |
    r4 <bes' bes''>4.\arpeggio |
    \time 7/8
    r2 <c' c''>4.\arpeggio |
    
    \time 5/8
    r4 <bes' bes''>4.\arpeggio |
    r4 <bes' bes''>4.\arpeggio |
    r4 <bes' bes''>4.\arpeggio |
    \time 7/8
    r2 <c' c''>4.\arpeggio |
    
    \time 5/8
    r4 <c' c''>4.\arpeggio |
    r4 <c' c''>4.\arpeggio |
    r4 <c' c''>4.\arpeggio |
    \time 7/8
    r2 <d'' d'''>4.\arpeggio |
    
    \time 2/4
    r2\fermata |

    \time 4/4 
    \tempo 4 = 80
    \mark #6
    
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
    \mark #7
    \barNumberCheck 116
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
    
    
    %repeat 4
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
    
    %repeat 5
    \mark #10
    \barNumberCheck #152
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
    
    \mark #3
    \barNumberCheck #42
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
    
   
    %% Section Three
    %% Mod Five third down
  
    \time 5/8 
    r4 <c g>4. |
    r4 <c g>4. |
    r4 <c g>4. |
    \time 7/8
    r2 <f c'>4. |
    
    \time 5/8
    r4 <c g>4.\arpeggio |
    r4 <c g>4.\arpeggio |
    r4 <c g>4.\arpeggio |
    \time 7/8
    r2 <d a>4.\arpeggio |
    
    \time 5/8
    r4 <d a>4.\arpeggio |
    r4 <d a>4.\arpeggio |
    r4 <d a>4.\arpeggio |
    \time 7/8
    r2 <d a>4.\arpeggio |
    
    \time 5/8
    r4 <d a>4.\arpeggio |
    r4 <d a>4.\arpeggio |
    r4 <d a>4.\arpeggio |
    \time 7/8
    r2 <d a>4.\arpeggio |
    
    \time 5/8
    r4 <f c'>4.\arpeggio |
    r4 <f c'>4.\arpeggio |
    r4 <f c'>4.\arpeggio |
    \time 7/8
    r2 <g d'>4.\arpeggio |

    \time 5/8
    r4 <g d'>4.\arpeggio |
    r4 <g d'>4.\arpeggio |
    r4 <g d'>4.\arpeggio |
    \time 7/8
    r2 <g d'>4.\arpeggio |
    
    \time 5/8
    r4 <g d'>4.\arpeggio |
    r4 <g d'>4.\arpeggio |
    r4 <g d'>4.\arpeggio |
    \time 7/8
    r2 <g d'>4.\arpeggio |
    
    \time 5/8
    r4 <g d'>4.\arpeggio |
    r4 <g d'>4.\arpeggio |
    r4 <f c'>4.\arpeggio |
    \time 7/8
    r2 <f c'>4.\arpeggio |
    
    \time 5/8
    r4 <f c'>4.\arpeggio |
    r4 <f c'>4.\arpeggio |
    r4 <f c'>4.\arpeggio |
    \time 7/8
    r2 <f c'>4.\arpeggio |
    
    \time 2/4
    r2\fermata |
    


    %% Section Four
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
