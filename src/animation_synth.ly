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

animation_synth = {
  {
    
    %% Ostinato
    \time 4/4
    \tempo 4 = 50
    \clef "bass"
    r1^\markup{\bold{Mode j}} |

    <f g a d'>1:32\pppp\<^\markup{\bold\large{{\bold\large{{\circle{1}}}}}} ~ |
    <f g a d'>1:32\p\> ~ |
    <f g a d'>2:32\pppp r2 |

    <bes g d' f'>1:32\pppp\<^\markup{\bold\large{{\circle{2}}}} ~ |
    <bes g d' f'>1:32\p\> ~ |
    <bes g d' f'>2:32\pppp r2 |
    
    <bes g d' f'>1:32\pppp\<^\markup{\bold\large{{\circle{2}}}} ~ |
    <bes g d' f'>1:32\p\> ~ |
    <bes g d' f'>2:32\pppp r2 |

    \mark #1
    \barNumberCheck #11
    \break
    <d f a bes es'>1:32\pppp\<^\markup{\bold\large{{\circle{3}}}} ~ |
    <d f a bes es'>1:32\pp\> ~ |
    <d f a bes es'>1:32\p\> ~ |
    <d f a bes es'>2:32\pppp r2 |
    
    <d f a bes es'>1:32\pppp\<^\markup{\bold\large{{\circle{3}}}} ~ |
    <d f a bes es'>1:32\p\> ~ |
    <d f a bes es'>2:32\pppp r2 |
    \break

    <f a bes c' es'>1:32\pppp\<^\markup{\bold\large{{\circle{4}}}} ~ |
    <f a bes c' es'>1:32\p\> ~ |
    \barNumberCheck #20
    <f a bes c' es'>2:32\pppp r2 | 
    <f a bes c' es'>1:32\pppp\<^\markup{\bold\large{{\circle{4}}}} ~ |
    <f a bes c' es'>1:32\p\> ~ |
    <f a bes c' es'>2:32\pppp r2 |
    
    r1 |
    \break
    \barNumberCheck #25
    <d bes f' g'>1:32\pppp\<^\markup{\bold\large{{\circle{5}}}} ~ |
    <d bes f' g'>1:32\pp\> ~ |
    <d bes f' g'>1:32\p\> ~  |
    <d bes f' g'>1:32\pp\> ~ |
    <d bes f' g'>2:32\pppp r2 |
     
     \mark #2
     \barNumberCheck #30
     \break
     r1 | 
     r1 | 
     <g bes c' es' f>1:32\pppp\<^\markup{\bold\large{{\circle{6}}}} ~ | 
     <g bes c' es' f>1:32\pp\< ~ | 
     <g bes c' es' f>1:32\p\> ~ | 
     \barNumberCheck #35
     <g bes c' es' f>1:32\pp ~ | 
     <g bes c' es' f>1:32\pppp | 
     r1 | 
     \break
     r1 | 
     <bes, d bes f'>1:32\pppp\<^\markup{\bold\large{{\circle{7}}}} ~ |
     <bes, d bes f'>1:32\pp\> ~ |
     <bes, d bes f'>1:32\pppp |
    
    \mark #3
    \barNumberCheck #42
    r1 | 
    <bes, d bes f'>1:32\pppp\<^\markup{\bold\large{{\circle{7}}}} ~ | 
    <bes, d bes f'>1:32\pp\< ~ | 
    <bes, d bes f'>1:32\p\> ~ | 
    <bes, d bes f'>1:32\pp\> ~ | 
    <bes, d bes f'>1:32\pppp  | 
    r1 | 
    r1 | 
    \break
    \barNumberCheck #50
    <f, f c' d'>1:32\pppp\<^\markup{\bold\large{{\circle{8}}}} ~ | 
    <f, f c' d'>1:32\pp\< ~ | 
    <f, f c' d'>1:32\p\> ~ | 
    <f, f c' d'>1:32\pp\> ~ | 
    <f, f c' d'>1:32\pppp | 
    r1 | 
    <f, f c' d'>1:32\pppp\<^\markup{\bold\large{{\circle{8}}}} ~ | 
    <f, f c' d'>1:32\p\> ~ | 
    <f, f c' d'>2:32\pppp r2 | 
    \break
    \barNumberCheck #59
    \clef treble
    <a' bes' d'' f''>1:32\pppp\<^\markup{\bold\large{{\circle{9}}}} ~ | 
    <a' bes' d'' f''>1:32\p\> ~ | 
    <a' bes' d'' f''>1:32\pppp  | 
    r1 | 
    <g g' d'' f'' bes''>1:32\pppp\<^\markup{\bold\large{{\circle{0}}}} ~ | 
    <g g' d' f'' bes''>1:32\p\> ~ | 
    <g g' d'' f'' bes''>1:32\pppp  | 
        
    %% Section Three
    %% Mod Five third down
    \time 5/8 
    \mark #4
    r4 r4. |
    r4 r4. |
    r4 r4. |
    \time 7/8 |
    r2 r4.
    
    \time 5/8
    r4 r4. |
    r4 r4. |
    r4 r4. |
    \time 7/8 |
    r2 r4.

    \time 5/8
    r4 r4. |
    r4 r4. |
    r4 r4. |
    \time 7/8 |
    r2 r4.

     \time 5/8
    r4 r4. |
    r4 r4. |
    r4 r4. |
    \time 7/8 |
    r2 r4.

     \time 5/8
    r4 r4. |
    r4 r4. |
    r4 r4. |
    \time 7/8 |
    r2 r4.

     \time 5/8
    r4 r4. |
    r4 r4. |
    r4 r4. |
    \time 7/8 |
    r2 r4.

    \time 5/8
    r4 r4. |
    r4 r4. |
    r4 r4. |
    \time 7/8 |
    r2 r4.

    \time 5/8
    r4 r4. |
    r4 r4. |
    r4 r4. |
    \time 7/8 |
    r2 r4.

    \time 5/8
    r4 r4. |
    r4 r4. |
    r4 r4. |
    \time 7/8 |
    r2 r4.
    
    \time 2/4
    r2\fermata |

    \time 4/4 
    \tempo 4 = 80
    \mark #6
    \clef treble
    \break
    r1 \bar"|"
    
    %repeat 1
    f''1\ppp\<^\markup{\bold{Mode k}}^\markup{\bold\large{{\bold\large{{\circle{1}}}}}}~ | f''1\p\> |
    e''1\ppp\< ^\markup{\bold\large{{\bold\large{{\circle{2}}}}}}~ | e''1\p\> |
    d''1\ppp\< ^\markup{\bold\large{{\bold\large{{\circle{3}}}}}}~ | d''1\p\> |
    f'1\ppp\< ^\markup{\bold\large{{\bold\large{{\circle{4}}}}}}~ | f'1\p\> |
    g'1\ppp\< ^\markup{\bold\large{{\bold\large{{\circle{5}}}}}}~ | g'1\p\> ~ |
    g'1\ppp\< ~ | g'1\p\> |
    \break
    
    %repeat 2
    \mark #7
    \barNumberCheck 116
    f''1\ppp\<^\markup{\bold\large{{\bold\large{{\circle{1}}}}}}~ | f''1\p\> |
    e''1\ppp\< ^\markup{\bold\large{{\bold\large{{\circle{2}}}}}}~ | e''1\p\> |
    d''1\ppp\< ^\markup{\bold\large{{\bold\large{{\circle{3}}}}}}~ | d''1\p\> |
    f'1\ppp\< ^\markup{\bold\large{{\bold\large{{\circle{4}}}}}}~ | f'1\p\> |
    g'1\ppp\< ^\markup{\bold\large{{\bold\large{{\circle{5}}}}}}~ | g'1\p\> ~ |
    g'1\ppp\< ~ | g'1\p\> |
    \break
  
    %repeat 3
    \mark #8
    f''1\ppp\<^\markup{\bold\large{{\bold\large{{\circle{1}}}}}}~ | f''1\p\> |
    e''1\ppp\< ^\markup{\bold\large{{\bold\large{{\circle{2}}}}}}~ | e''1\p\> |
    d''1\ppp\< ^\markup{\bold\large{{\bold\large{{\circle{3}}}}}}~ | d''1\p\> |
    f'1\ppp\< ^\markup{\bold\large{{\bold\large{{\circle{4}}}}}}~ | f'1\p\> |
    g'1\ppp\< ^\markup{\bold\large{{\bold\large{{\circle{5}}}}}}~ | g'1\p\> ~ |
    g'1\ppp\< ~ | g'1\p\> |
    \break
    
    %repeat 4
    \mark #9

    f''1\ppp\<^\markup{\bold\large{{\bold\large{{\circle{1}}}}}}~ | f''1\p\> |
    e''1\ppp\< ^\markup{\bold\large{{\bold\large{{\circle{2}}}}}}~ | e''1\p\> |
    d''1\ppp\< ^\markup{\bold\large{{\bold\large{{\circle{3}}}}}}~ | d''1\p\> |
    f'1\ppp\< ^\markup{\bold\large{{\bold\large{{\circle{4}}}}}}~ | f'1\p\> |
    g'1\ppp\< ^\markup{\bold\large{{\bold\large{{\circle{5}}}}}}~ | g'1\p\> ~ |
    g'1\ppp\< ~ | g'1\p\> |
    \break
    
    %repeat 5
    \mark #10
    \barNumberCheck #152
    f''1\ppp\<^\markup{\bold\large{{\bold\large{{\circle{1}}}}}}~ | f''1\p\> |
    e''1\ppp\< ^\markup{\bold\large{{\bold\large{{\circle{2}}}}}}~ | e''1\p\> |
    d''1\ppp\< ^\markup{\bold\large{{\bold\large{{\circle{3}}}}}}~ | d''1\p\> |
    f'1\ppp\< ^\markup{\bold\large{{\bold\large{{\circle{4}}}}}}~\startTextSpan | f'1\p\> |
    g'1\ppp\< ^\markup{\bold\large{{\bold\large{{\circle{5}}}}}}~ | g'1\p\> ~ |
    g'1\ppp\< ~ | g'1\p\>\stopTextSpan |

    
	\bar "|."
  }
}

