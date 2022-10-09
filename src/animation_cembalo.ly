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
    \tempo 4 = 50
    r1 \bar "|"

    r4 a''16[\pp a'' a'' a''] a''16[ a'' a'' a''] a''16[ a'' a'' a''] \bar "|"
    \repeat tremolo 16 { f''32 d'' } \bar "|"
    \repeat tremolo 16 { f''32 d'' } \bar "|"
    \repeat tremolo 16 { f''32 d'' } \bar "|"
    
    \repeat unfold 8 { d''32 f'' a'' f'' }  |
    \repeat unfold 8 { d''32 f'' a'' f'' }  |
    \repeat tremolo 16 { d''32 c''' } \bar "|"
    d''16[ c''' d'' c'''] d''16[ bes'' d'' bes''] d''16[ bes'' d'' bes''] d''16[ bes'' d'' bes''] \bar "|"

    r4 a''16[ a'' a'' a''] a''16[ a'' a'' a''] a''16[ a'' a'' a''] \bar "|"
    \mark #1
    \barNumberCheck #11
    \repeat tremolo 16 { f''32 d'' } \bar "|"
    \repeat tremolo 16 { f''32 es'' } \bar "|"
    \repeat tremolo 16 { f''32 es'' } |
    
    \barNumberCheck #14
    es''16[ es'' es'' es''] es''16[ es'' es'' es''] es''16[ es'' es'' es''] es''16[ es'' es'' es''] \bar "|"
    es''16[ es'' es'' es''] \repeat tremolo 12 { es''32 c''' } \bar "|"
    \repeat tremolo 16 { e''32 c''' } \bar "|"
    bes''16[ bes'' bes'' bes''] bes''16[ bes'' bes'' bes''] bes''16[ bes'' bes'' bes''] bes''16[ bes'' bes'' bes''] |
    \barNumberCheck #18
    bes''16[ bes'' bes'' bes''] c'''16[ c''' c''' c'''] c'''16[ c''' c''' c'''] a''16[ a'' a'' a''] \bar "|"
    a''16[ a'' a'' a''] bes''16[ bes'' bes'' bes''] bes''16[ bes'' bes'' bes''] bes''16[ bes'' bes'' bes''] \bar "|"
    
    
    r4 \repeat unfold 6 {
      a''32 f'' f'' d''
    } |
    
    r4 \repeat unfold 6 {
      a''32 f'' f'' d''
    } |
    \barNumberCheck #22
    r1
    
    r4 \repeat tremolo 12 {
      d''32 bes'
    }
    
    r4 \repeat tremolo 12 {
      d''32 bes'
    }
    
    r4 d''16[ d'' d'' d''] d''16[ d'' d'' d''] d''16[ d'' d'' d''] \bar "|"
    r4 r8 <a' d'' e'' f''>8-. r2 |
    r4 r8 <a' d'' e'' f''>8-. r2 |
    r4 r8 <a' d'' e'' f''>8-. r2 |
    
    r1 | 
    
    \mark #2
    \barNumberCheck #30
    r4 r8 <g'' bes'' es'''>8-. r2 |  
    r4 r8 <g'' bes'' es'''>8-. r2 |  
    r4 r8 <g'' bes'' es'''>8-. r2 |  
    
    r4 \repeat unfold 6 {
      a''32 f''' f''' a''
    } |
    
    r4 \repeat unfold 6 {
      a''32 f''' f''' a''
    } |
    
    r4 \repeat unfold 6 {
      a''32 f''' f''' a''
    } |
    
    r1 
    
    r4 \repeat unfold 6 {
      d''32 bes' bes' d'
    } |
    
    r4 \repeat unfold 6 {
      d''32 bes' bes' d'
    } |
    
    r4 \repeat unfold 6 {
      d''32 bes' bes' d'
    } |
    
    r1 |
    r1 |
    
    \mark #3
    \barNumberCheck #42
    r4 d''16[ d'' d'' d''] d''16[ d'' d'' d''] d''16[ d'' d'' d''] \bar "|"
    d''16[ d'' d'' d''] \repeat unfold 6 { d''32 bes' g' bes' } |
    bes'16[ g' bes' g'] \repeat unfold 6 { bes'32 a' g' a' } |
    bes'16[ a' bes' a'] a'16[ a' a' a'] a'16[ a' a' a'] a'16[ a' a' a'] \bar "|"
    
    a'16[ a' a' a'] a'16[ a' a' a'] a'16[ a' a' a'] a'16[ a' a' a'] \bar "|"
    a'16[ a' a' a'] \repeat tremolo 12 { a'32 f'' } \bar "|"
    \repeat tremolo 16 { a'32 f'' } \bar "|"
    r1 |
    r1 |
    r1 |
    r1 |
    r1 |
    r1 |
    r1 |
    r1 |
    r1 |
    
    
    r4 r8 <a' d'' e'' f''>8-. r2 |
    r4 r8 <a' d'' e'' f''>8-. r2 |
    r4 r8 <a' d'' e'' f''>8-. r2 |
    r4 r8 <a' d'' e'' f''>8-. r2 |
    
    r4 r8 <g' bes' es''>8-. r2 | 
    r4 r8 <g' bes' es''>8-. r2 | 
    r4 r8 <g' bes' es''>8-. r2 | 
    r4 r8 <g' bes' es''>8-. r2 | 
    
    
    %% Section Three
    %% Mod Five third down
    \time 5/8 
    \mark #4
    r4 <g' g''>4. |
    r4 <g' g''>4. |
    r4 <g' g''>4. |
    \time 7/8
    r2 <g' g''>4. |
    
    \time 5/8
    r4 <g' g''>4. |
    r4 <g' g''>4. |
    r4 <g' g''>4. |
    \time 7/8
    r2 <g' g''>4. |
    
    \time 5/8
    r4 <c'' c'''>4. |
    r4 <c'' c'''>4. |
    r4 <c'' c'''>4. |
    \time 7/8
    r2 <a' a''>4. |
    
    \time 5/8
    r4 <c'' c'''>4. |
    r4 <c'' c'''>4. |
    r4 <c'' c'''>4. |
    \time 7/8
    r2 <a' a''>4. |
    
    \mark #5
    \time 5/8
    r4 <a' a''>4. |
    r4 <a' a''>4. |
    r4 <a' a''>4. |
    \time 7/8
    r2 <bes' bes''>4. |

    \time 5/8
    r4 <a' a''>4. |
    r4 <a' a''>4. |
    r4 <a' a''>4. |
    \time 7/8
    r2 <bes' bes''>4. |
    
    \time 5/8
    r4 <bes' bes''>4. |
    r4 <bes' bes''>4. |
    r4 <bes' bes''>4. |
    \time 7/8
    r2 <c' c''>4. |
    
    \time 5/8
    r4 <bes' bes''>4. |
    r4 <bes' bes''>4. |
    r4 <bes' bes''>4. |
    \time 7/8
    r2 <c' c''>4. |
    
    \time 5/8
    r4 <c' c''>4. |
    r4 <c' c''>4. |
    r4 <c' c''>4. |
    \time 7/8
    r2 <d'' d'''>4. |
    
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
    \tempo 4 = 50
    r1 \bar "|"
    
    
    r4 f'16[ f' f' f'] f'16[ f' f' f'] f'16[ f' f' f'] \bar "|" 
    \repeat tremolo 16 { d'32 f' } \bar "|"
    \repeat tremolo 16 { d'32 bes' } \bar "|"
    \repeat tremolo 16 { c''32 e' } \bar "|"
    
    
    \repeat unfold 8 { c''32[ bes' g' bes'] } | 
    
    \repeat unfold 8 { c''32[ bes' g' bes'] } | 
    bes'16[ bes' bes' bes'] bes'16[ bes' bes' bes'] bes'16[ bes' bes' bes'] bes'16[ bes' bes' bes'] \bar "|"
    \repeat unfold 8 { bes'32 c'' a' c'' } |
     \repeat unfold 8 { bes'32 c'' a' c'' } |
      \repeat unfold 8 { bes'32 c'' a' c'' } |

    
    r4 f'16[ f' f' f'] f'16[ f' f' f'] f'16[ f' f' f'] \bar "|" 
    f'16[ f' f' f'] \repeat tremolo 12 { d'32 f' } \bar "|"
    \repeat tremolo 16 { d'32 bes' } \bar "|"
    \repeat tremolo 16 { c''32 e' } |
    
    
    \repeat tremolo 16 { c''32 e' } |
    bes'16[ bes' bes' bes'] bes'16[ bes' bes' bes'] bes'16[ bes' bes' bes'] bes'16[ bes' bes' bes'] |
    \barNumberCheck #18
    bes'16[ bes' bes' bes'] c''16[ c'' c'' c''] c''16[ c'' c'' c''] a'16[ a' a' a'] \bar "|"
    a'16[ a' a' a'] bes'16[ bes' bes' bes'] bes'16[ bes' bes' bes'] bes'16[ bes' bes' bes'] \bar "|"
    
    r4 \repeat unfold 6 {
      f'32 a' a' d'
    }
    
    r4 \repeat unfold 6 {
      f'32 a' a' d'
    }
    
    r1
    \barNumberCheck #23
    r4 \repeat unfold 6 {
      f'32 a' a' d'
    }
    
    r4 \repeat unfold 6 {
      f'32 a' a' d'
    }
    
    r4 \repeat unfold 6 {
      f'32 a' a' d'
    }
    
    r4 r8 <a d'>8-. r2 |
    r4 r8 <a d'>8-. r2 |
    r4 r8 <a d'>8-. r2 |
    
    r1 | 
    r4 r8 <a d' f'>8-. r2 |
    r4 r8 <a d' f'>8-. r2 | 
    r4 r8 <a d' f'>8-. r2 | 
    
    r4 \repeat unfold 6 {
      a'32 f'' f'' a'
    }
    
    r4 \repeat unfold 6 {
      a'32 f'' f'' a'
    }
    
    r4 \repeat unfold 6 {
      a'32 f'' f'' a'
    }
    
    r1 
    
    \clef "bass"
    r4 \repeat unfold 6 {
      d'32 bes bes d
    } |
    
    r4 \repeat unfold 6 {
      d'32 bes bes d
    } |
    
    
    r4 \repeat unfold 6 {
      d'32 bes bes d
    } |
    
    r1 |
    r1 |
    
    \mark #3
    \barNumberCheck #42
    r4 bes16[ bes bes bes] bes16[ bes bes bes] bes16[ bes bes bes] \bar "|" 
    bes16[ bes bes bes] \repeat tremolo 12 { g32 bes } \bar "|"
    g16[ bes g bes] \repeat tremolo 12 { g32 es' } \bar "|"
    g16[ es' g es'] \repeat tremolo 12 { f'32 a } \bar "|"
    
    
    f'16[ a f' a] es'16[ es' es' es'] es'16[ es' es' es'] es'16[ es' es' es'] \bar "|"
    es'16[ es' es' es'] es'16[ es' es' es'] es'16[ es' es' es'] es'16[ es' es' es'] \bar "|"
    es'16[ es' es' es'] f'16[ f' f' f'] f'16[ f' f' f'] d'16[ d' d' d'] \bar "|"
    r1 |
    
    r1 |
    r1 |
    r1 |
    r1 |
    r1 |
    r1 |
    r1 |
    r1 |
    
    
    r4 r8 <a, d e>8-. r2 |
    r4 r8 <a, d e>8-. r2 |
    r4 r8 <a, d e>8-. r2 |
    r4 r8 <a, d e>8-. r2 |
    
    r4 r8 <g bes es'>8-. r2 |
    r4 r8 <g bes es'>8-. r2 |
    r4 r8 <g bes es'>8-. r2 |
    r4 r8 <g bes es'>8-. r2 |
    
   
    %% Section Three
    %% Mod Five third down
  
    \time 5/8 
    r4 <c g>4. |
    r4 <c g>4. |
    r4 <c g>4. |
    \time 7/8
    r2 <f c'>4. |
    
    \time 5/8
    r4 <c g>4. |
    r4 <c g>4. |
    r4 <c g>4. |
    \time 7/8
    r2 <d a>4. |
    
    \time 5/8
    r4 <d a>4. |
    r4 <d a>4. |
    r4 <d a>4. |
    \time 7/8
    r2 <d a>4. |
    
    \time 5/8
    r4 <d a>4. |
    r4 <d a>4. |
    r4 <d a>4. |
    \time 7/8
    r2 <d a>4. |
    
    \time 5/8
    r4 <f c'>4. |
    r4 <f c'>4. |
    r4 <f c'>4. |
    \time 7/8
    r2 <g d'>4. |

    \time 5/8
    r4 <g d'>4. |
    r4 <g d'>4. |
    r4 <g d'>4. |
    \time 7/8
    r2 <g d'>4. |
    
    \time 5/8
    r4 <g d'>4. |
    r4 <g d'>4. |
    r4 <g d'>4. |
    \time 7/8
    r2 <g d'>4. |
    
    \time 5/8
    r4 <g d'>4. |
    r4 <g d'>4. |
    r4 <f c'>4. |
    \time 7/8
    r2 <f c'>4. |
    
    \time 5/8
    r4 <f c'>4. |
    r4 <f c'>4. |
    r4 <f c'>4. |
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
