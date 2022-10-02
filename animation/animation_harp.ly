\version "2.18.2"

% Macros %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

staffUpper = {\change Staff = "1" \stemDown}
staffLower = {\change Staff = "2" \stemUp}
startRepeat = {\set Score.repeatCommands = #'(start-repeat)}
endRepeat = {\set Score.repeatCommands = #'(end-repeat)}
beamAccel = { \override Beam.grow-direction = #RIGHT }
beamDeccel = { \override Beam.grow-direction = #LEFT }
beamNeutral = { \override Beam.grow-direction = #f }

startRit = { \override TextSpanner.bound-details.left.text =
             \markup { \upright "rit." } }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

animation_harp_right = {
  {

        %% Ostinato
    \time 4/4
    \tempo 4 = 55
    s1 \bar "|"
    \repeat unfold 16 {
    s1 \bar "|"
    s1 \bar "|"
    s1 \bar "|"
    s1 \bar "|"
    }
    

    %% Section Two

    \time 4/4
    \tempo 4 = 110
    \mark \markup { \box 2 }
    r1
    \repeat unfold 3 {
    r4 <f' a''>2 <d' f''>4 ~ \bar "!"
    <d' f''>4 <bes' e''>2. ~ \bar "!"
    <bes' e''>4 <c'' e''>2 <a' e''>4 ~ \bar "!"
    <a' e''>4 <bes' d''>2. \bar "!"
    }
    
    r4 <f' a''>2 <d' f''>4 ~ \bar "!"
    <d' f''>4 <bes' e''>2. ~ \bar "!"
    \mark #3
    <bes' e''>4 <c'' e''>2 <a' e''>4 ~ \bar "!"
    <a' e''>4 <bes' d''>2. \bar "!"
    
    \repeat unfold 4 {
    r4 <f' a''>2 <d' f''>4 ~ \bar "!"
    <d' f''>4 <bes' e''>2. ~ \bar "!"
    <bes' e''>4 <c'' e''>2 <a' e''>4 ~ \bar "!"
    <a' e''>4 <bes' d''>2. \bar "!"
    }
    

    r4 <f' a''>2 <d' f''>4 ~ \bar "!"
    <d' f''>4 <bes' e''>2. ~ \bar "!"
    <bes' e''>4 <c'' e''>2 <a' e''>4 ~ \bar "!"
    <a' e''>4 <bes' d''>2. \bar "!"
    
    \mark #4
    r4 <f' a''>2 <d' f''>4 ~ \bar "!"
    <d' f''>4 <bes' e''>2. ~ \bar "!"
    <bes' e''>4 <c'' e''>2 <a' e''>4 ~ \bar "!"
    <a' e''>4 <bes' d''>2. \bar "!"
    
    
   
    r4 <f' a''>2 <d' f''>4 ~ \bar "!"
    <d' f''>4 <bes' e''>2. ~ \bar "!"
    <bes' e''>4 <c'' e''>2 <a' e''>4 ~ \bar "!"
    <a' e''>4 <bes' d''>2. \bar "!"
    
    r4 <f' a''>2 <d' f''>4 ~ \bar "!"
    <d' f''>4 <bes' e''>2. ~ \bar "!"
    <bes' e''>4 <c'' e''>2 <a' e''>4 ~ \bar "!"
    <a' e''>4 <bes' d''>2. \bar "!"

    
    r4 <f' a''>2 <d' f''>4 ~ \bar "!"
    <d' f''>4 <bes' e''>2. ~ \bar "!"
    <bes' e''>4 <c'' e''>2 <a' e''>4 ~ \bar "!"
    <a' e''>4 <bes' d''>2. \bar "!"
    
    r4 <f' a''>2 <d' f''>4 ~ \bar "!"
    <d' f''>4 <bes' e''>2. ~ \bar "!"
    <bes' e''>4 <c'' e''>2 <a' e''>4 ~ \bar "!"
    <a' e''>4 <bes' d''>2. \bar "!"
    
    r4 <f' a''>2 <d' f''>4 ~ \bar "!"
    <d' f''>4 <bes' e''>2. ~ \bar "!"
    \mark #5
    <bes' e''>4 <c'' e''>2 <a' e''>4 ~ \bar "!"
    <a' e''>4 <bes' d''>2. \bar "!"
    
    r4 <f' a''>2 <d' f''>4 ~ \bar "!"
    <d' f''>4 <bes' e''>2. ~ \bar "!"
    <bes' e''>4 <c'' e''>2 <a' e''>4 ~ \bar "!"
    <a' e''>4 <bes' d''>2. \bar "!"
   
    
    
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
    e'8[( g')] 
    e'[( g' d'')] \bar "!"
    \time 7/8
    e'8[( g' d' g')] e'[( g' d'')] \bar "!"
    
    \time 5/8
    e'8[( g')] e'[( g' d'')] \bar "!"
    e'8[( g')] e'[( g' d'')] \bar "!"
    e'8[( g')] e'[( g' d'')] \bar "!"
    \time 7/8
    e'8[( g' d' g')] e'[( g' d'')] \bar "!"
    
    \time 5/8
    \mark #6
    c'8[( e')] c'[( e' bes')] \bar "!"
    c'8[( e')] c'[( e' bes')] \bar "!"
    c'8[( e')] c'[( e' bes')] \bar "!"
    \time 7/8
    c'8[( e' bes e')] c'[( e' bes')] \bar "!"
    
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
    r4. r4 \bar "!"
    r4. r4 \bar "!"
    r4. r4 \bar "!"
    \time 7/8
    r2 r4. \bar "!"
    
    
    \time 5/8
    \mark #7
    c'8[( e')] c'[( e' bes')] \bar "!"
    c'8[( e')] c'[( e' bes')] \bar "!"
    c'8[( e')] c'[( e' bes')] \bar "!"
    \time 7/8
    c'8[( e' bes e')] c'[( e' bes')] \bar "!"
    
    \time 5/8
    a8[( c')] a[( c' g')] \bar "!"
    a8[( c')] a[( c' g')] \bar "!"
    a8[( c')] a[( c' g')] \bar "!"
    \time 7/8
    a8[( c' g c')] a[( c' g')] \bar "!"
    
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
  
    \time 5/8 
    \mark \markup { \box 3 }
    \time 5/8 
    r4 <g'' g'''>4.\p\arpeggio \bar "!"
    r4 <g'' g'''>4.\arpeggio \bar "!"
    r4 <g'' g'''>4.\arpeggio \bar "!"
    \time 7/8
    r2 <g'' g'''>4.\arpeggio \bar "!"
    
    \time 5/8
    r4 <g'' g'''>4.\arpeggio \bar "!"
    r4 <g'' g'''>4.\arpeggio \bar "!"
    r4 <g'' g'''>4.\arpeggio \bar "!"
    \time 7/8
    r2 <g'' g'''>4.\arpeggio \bar "!"
    
    \time 5/8
    r4 <c''' c''''>4.\arpeggio \bar "!"
    r4 <c''' c''''>4.\arpeggio \bar "!"
    r4 <c''' c''''>4.\arpeggio \bar "!"
    \time 7/8
    r2 <a'' a'''>4.\arpeggio \bar "!"
    
    \time 5/8
    r4 <c''' c''''>4.\arpeggio \bar "!"
    r4 <c''' c''''>4.\arpeggio \bar "!"
    r4 <c''' c''''>4.\arpeggio \bar "!"
    \time 7/8
    r2 <a'' a'''>4.\arpeggio \bar "!"
    
    \time 5/8
    r4 <a'' a'''>4.\arpeggio \bar "!"
    r4 <a'' a'''>4.\arpeggio \bar "!"
    r4 <a'' a'''>4.\arpeggio \bar "!"
    \time 7/8
    r2 <bes'' bes'''>4.\arpeggio \bar "!"

    \time 5/8
    r4 <a'' a'''>4.\arpeggio \bar "!"
    r4 <a'' a'''>4.\arpeggio \bar "!"
    r4 <a'' a'''>4.\arpeggio \bar "!"
    \time 7/8
    r2 <bes'' bes'''>4.\arpeggio \bar "!"
    
    \time 5/8
    r4 <bes'' bes'''>4.\arpeggio \bar "!"
    r4 <bes'' bes'''>4.\arpeggio \bar "!"
    r4 <bes'' bes'''>4.\arpeggio \bar "!"
    \time 7/8
    r2 <c'' c'''>4.\arpeggio \bar "!"
    
    \time 5/8
    r4 <bes'' bes'''>4.\arpeggio \bar "!"
    r4 <bes'' bes'''>4.\arpeggio \bar "!"
    r4 <bes'' bes'''>4.\arpeggio \bar "!"
    \time 7/8
    r2 <c'' c'''>4.\arpeggio \bar "!"
    
    \time 5/8
    r4 <c'' c'''>4.\arpeggio \bar "!"
    r4 <c'' c'''>4.\arpeggio \bar "!"
    r4 <c'' c'''>4.\arpeggio \bar "!"
    \time 7/8
    r2 <d''' d''''>4.\arpeggio \bar "!"
    
    \time 2/4
    r2\fermata \bar "!"
    
    \time 4/4
    \tempo 4 = 80
    \break
    \mark \markup { \box 4 }
    r1 \bar "|" 
    
    %% Section Three 
    %% Repeat One
	
    f8[\p cis' f cis'] <bes' bes''>2 ~ \bar"|"
    <bes' bes''>1 \bar"|"
    a8[ cis' a cis'] <e'' e'''>2 ~  \bar"|"
    <e'' e'''>1 \bar"|"
    f8[ d f d] <a' a''>2 ~ \bar"|"
    <a' a''>1 \bar"|"
    g8[ d' g d'] <bes' bes''>2 ~ \bar"|"
    <bes' bes''>1 \bar"|"
    g8[ d' g d'] <bes' bes''>2 ~ \bar"|"
    <bes' bes''>1 \bar"|"
    bes8[ es' bes' es'] <es'' es'''>2 ~ \bar"|"
    <es'' es'''>1 \bar"|"
    
    %% Repeat 2
    \mark #8
    f8[ cis' f cis'] <bes' bes''>2 ~ \bar"|"
    <bes' bes''>1 \bar"|"
    a8[ cis' a cis'] <e'' e'''>2 ~  \bar"|"
    <e'' e'''>1 \bar"|"
    f8[ d f d] <a' a''>2 ~ \bar"|"
    <a' a''>1 \bar"|"
    g8[ d' g d'] <bes' bes''>2 ~ \bar"|"
    <bes' bes''>1 \bar"|"
    g8[ d' g d'] <bes' bes''>2 ~ \bar"|"
    <bes' bes''>1 \bar"|"
    bes8[ es' bes' es'] <es'' es'''>2 ~ \bar"|"
    <es'' es'''>1 \bar"|"
    
    %% Repeat 3
    \mark #9
    f8[ cis' f cis'] <bes' bes''>2 ~ \bar"|"
    <bes' bes''>1 \bar"|"
    a8[ cis' a cis'] <e'' e'''>2 ~  \bar"|"
    <e'' e'''>1 \bar"|"
    f8[ d f d] <a' a''>2 ~ \bar"|"
    <a' a''>1 \bar"|"
    g8[ d' g d'] <bes' bes''>2 ~ \bar"|"
    <bes' bes''>1 \bar"|"
    g8[ d' g d'] <bes' bes''>2 ~ \bar"|"
    <bes' bes''>1 \bar"|"
    bes8[ es' bes' es'] <es'' es'''>2 ~ \bar"|"
    <es'' es'''>1 \bar"|"
    
    %% Repeat 4
    \mark #10
    f8[ cis' f cis'] <bes' bes''>2 ~ \bar"|"
    <bes' bes''>1 \bar"|"
    a8[ cis' a cis'] <e'' e'''>2 ~  \bar"|"
    <e'' e'''>1 \bar"|"
    f8[ d f d] <a' a''>2 ~ \bar"|"
    <a' a''>1 \bar"|"
    g8[ d' g d'] <bes' bes''>2 ~ \bar"|"
    <bes' bes''>1 \bar"|"
    g8[ d' g d'] <bes' bes''>2 ~ \bar"|"
    <bes' bes''>1 \bar"|"
    bes8[ es' bes' es'] <es'' es'''>2 ~ \bar"|"
    <es'' es'''>1 \bar"|"
    
    %% Repeat 5
    \mark #11
    f8[ cis' f cis'] <bes' bes''>2 ~ \bar"|"
    <bes' bes''>1 \bar"|"
    a8[ cis' a cis'] <e'' e'''>2 ~  \bar"|"
    <e'' e'''>1 \bar"|"
    f8[ d f d] <a' a''>2 ~ \bar"|"
    <a' a''>1 \bar"|"
    \startRit
    g8[\startTextSpan d' g d'] <bes' bes''>2 ~ \bar"|"
    <bes' bes''>1 \bar"|"
    g8[ d' g d'] <bes' bes''>2 ~ \bar"|"
    <bes' bes''>1 \bar"|"
    bes8[ es' bes' es'] <es'' es'''>2 ~ \bar"|"
    <es'' es'''>1\stopTextSpan
	%}
	\bar "|."
  }
}


animation_harp_left = 
  {
    
    %% Ostinato
    \time 4/4
    \clef treble
    \tempo 4 = 55
    \mark \markup { \box 1 }
    d'8\p-._\markup { \harp-pedal #"--^|v--v" } r8 
    \repeat tremolo 6 { d'16 f' }\bar "|" 
    d'8-. r8 \repeat tremolo 6 { <d' eis'>16 \staffUpper f' } \staffLower  \bar "|"
    f'8-. r8 \repeat tremolo 6 { eis'16 f' } 
    \bar "|"
    <bes f'>8-. r8 \repeat tremolo 6 { <eis' ais'>16 \staffUpper <f' bes'> } \staffLower
    \bar "|"
    bes'8-. r8 \repeat tremolo 6 { ais'16 bes' }  
    \bar "|"
    \repeat tremolo 4 { ais'16 \staffUpper <bes' c''>} \staffLower 
    \repeat tremolo 4 { <ais c''>16 \staffUpper <g' bes'> } \staffLower
    \bar "|"
    <f' g'>8-. r8 \repeat tremolo 6 { eis'16 \staffUpper <f' g'> } \staffLower 
    \bar "|"
    <f' g'>8-. r8 \repeat tremolo 6 { eis'16 \staffUpper <f' g'> } \staffLower
    \bar "|"
    <g' bes'>8-. r8 \repeat tremolo 6 { bes'16 \staffUpper <g' ais'> } \staffLower 
    \bar "|"
    <g' bes'>8-. r8 \repeat tremolo 6 { bes'16 \staffUpper <g' ais'> } \staffLower 
    \bar "|"
    \mark #1
    <g' bes'>8-. r8 \repeat tremolo 6 { bes'16 \staffUpper <g' ais'> } \staffLower
    \bar "|"
    bes'8-. r8 \repeat tremolo 6 { ais'16 bes' }
    \bar "|"
    bes'8-. r8 \repeat tremolo 6 { ais'16 bes' } 
    \bar "|"
    
    
    bes8-. r8 \repeat tremolo 6 { ais16 bes}  \bar "|" 
    bes8-. r8 \repeat tremolo 6 { ais16 \staffUpper <bes d> } \staffLower  \bar "|"
    <bes d'>8-. r8 \repeat tremolo 6 { ais16 \staffUpper <bes d'> \staffLower } \bar "|" 
    d'8-. r8 \repeat tremolo 6 { <bes c'>16 \staffUpper d' } \staffLower \bar "|" 
    \repeat tremolo 8 { <bes c'>16 \staffUpper d' } \staffLower \bar "|" 
    <bes c'>8-. r8 \repeat tremolo 6 { e'16 \staffUpper <bes d'> } \staffLower \bar "|"
    d'8-. r8 \repeat tremolo 6 { bes16 \staffUpper <ais d'> } \staffLower \bar "|"  
    \repeat tremolo 8 { bes16 \staffUpper <ais d'> } \staffLower \bar "|"
    <bes f'>8-. r8 \repeat tremolo 6 { <ais eis'>16 \staffUpper <bes f'> } \staffLower \bar "|" 
    \repeat tremolo 8 { eis'16 f' } \bar "|"
    \repeat tremolo 8 { eis'16 f' } \bar "|" 
    <eis' g'>8-. r8 \repeat tremolo 6 { f'16 \staffUpper <eis' g'> } \staffLower \bar "|"
    \repeat tremolo 8 { eis'16 f' } 
    \bar "|"
    
    g'8-. r8 \repeat tremolo 6 { f'16 g' } \bar "|" 
    \repeat tremolo 8 { f'16 g' } \bar "|"
    <g' bes'>8-. r8 \repeat tremolo 6 { ais'16 \staffUpper <g' bes'> } \staffLower \bar "|" 
    \mark #2
    g'8-. r8 \repeat tremolo 6 { ais'16 bes' } \bar "|"
    g'8-. r8 \repeat tremolo 6 { ais'16 bes' } \bar "|" 
    c''8-. r8 \repeat tremolo 6 { ais'16 \staffUpper <bes' c''> } \staffLower \bar "|"
    d''8-. r8 \repeat tremolo 6 { ais'16 \staffUpper <bes' c''> } \staffLower \bar "|" 
    d''8-. r8 \repeat tremolo 6 { ais'16 \staffUpper <bes' c''> } \staffLower \bar "|"
    <bes' d''>8-. r8 \repeat tremolo 6 { <ais' c''>16 \staffUpper <bes' d''> } \staffLower \bar "|" 
    g'8-. r8 \repeat tremolo 6 { <ais' c''>16 \staffUpper <bes' d''> } \staffLower \bar "|"
    g'8-. r8 \repeat tremolo 6 { <ais' c''>16 \staffUpper <bes' d''> } \staffLower \bar "|" 
    <c'' e''>8-. r8 \repeat tremolo 6 { <bes' d''>16 \staffUpper <c'' e''> } \staffLower \bar "|"
    d''8-. r8 \repeat tremolo 6 { c''16 d'' } 
    \bar "|"
    
    f'8-. r8 \repeat tremolo 6 { eis'16 f' } \bar "|" 
    f'8-. r8 \repeat tremolo 6 { eis'16 \staffUpper <f' g'> } \staffLower  \bar "|"
    <eis' g'>8-. r8 \repeat tremolo 6 { <f' ais'>16 \staffUpper <eis' g'> } \staffLower  \bar "|" 
    <eis' g'>8-. r8 \repeat tremolo 6 { <f' ais'>16 \staffUpper <eis' g'> } \staffLower  \bar "|"
    <eis' g'>8-. r8 \repeat tremolo 6 { <f' ais'>16 \staffUpper <eis' g'> } \staffLower \bar "|" 
    <f' ais' c'>8-. r8 \repeat tremolo 6 { <eis' g' bes'>16 \staffUpper <f' ais' c'> } \staffLower  \bar "|"
    <eis' g' bes'>8-. r8 \repeat tremolo 6 { <f' ais' c'>16 \staffUpper <eis' g' bes'> } \staffLower  \bar "|" 
    <f' ais' c'>8-. r8 \repeat tremolo 6 { <eis' g' bes'>16 \staffUpper <f' ais' c'> } \staffLower \bar "|"
    <ais' c'' eis''>8-. r8 \repeat tremolo 6 { <bes' f'' g''>16 \staffUpper <ais' c'' eis''> } \staffLower \bar "|" 
    <bes' f'' g''>8-. r8 \repeat tremolo 6 { <ais' c'' eis''>16 \staffUpper <bes' f'' g''> } \staffLower \bar "|"
    <ais' c'' eis''>8-. r8 \repeat tremolo 6 { <bes' f'' g''>16 \staffUpper <ais' c'' eis''> } \staffLower \bar "|" 
    <bes' d''>8-. r8 \repeat tremolo 6 { <ais' c'' eis''>16 \staffUpper <bes' d''> } \staffLower \bar "|"
    <ais' c'' eis''>8-. r8 \repeat tremolo 6 { <bes' d'>16 \staffUpper <ais' c'' eis''> } \staffLower 
    \bar "|"
    
    <bes' d''>8-. r8 \repeat tremolo 6 { <f'' ais''>16 \staffUpper <bes' d''> } \staffLower \bar "|" 
    <bes' d''>8-. r8 \repeat tremolo 6 { <f'' ais''>16 \staffUpper <bes' d''> } \staffLower \bar "|"
    f''8-. r8 \repeat tremolo 6 { eis''16 f'' } \bar "|" 
    eis''8-. r8 \repeat tremolo 6 { f''16 eis'' } \bar "|"
    <f'' g''>8-. r8 \repeat tremolo 6 { eis''16 \staffUpper <f'' g'> } \staffLower \bar "|" 
    <c'' eis''>8-. r8 \repeat tremolo 6 { <f'' g''>16 \staffUpper <c'' eis''>} \staffLower \bar "|"
    f''8-. r8 \repeat tremolo 6 { <c'' eis''>16 \staffUpper f'' } \staffLower \bar "|" 
    <ais' c'' eis''>8-. r8 \repeat tremolo 6 { f''16 \staffUpper <ais' c'' eis''> } \staffLower \bar "|"
    f'8-. r8 \repeat tremolo 6 { \staffUpper <ais' c'' eis'>16 \staffLower f' } \bar "|" 
    <ais' c'' eis'>8-. r8 \repeat tremolo 6 { <f' g'>16 \staffUpper <ais' c'' eis'> } \staffLower \bar "|"
    <f' g'>8-. r8 \repeat tremolo 6 { <ais' c'' eis''>16 \staffUpper <f' g'> } \staffLower \bar "|" 
    <ais' c'' eis''>8-. r8 \repeat tremolo 6 { <f' g' bes'>16 \staffUpper <ais' c'' eis''> } \staffLower \bar "|"
    <f' g' bes'>8-. r8 \repeat tremolo 6 { <ais' c'' eis''>16 \staffUpper <f' g' bes'> } \staffLower  
    \bar "|"
    

    %%Section Two
    %% Ostinato
    \time 4/4
    \clef bass
    \tempo 4 = 110

    \stemNeutral
    <d d'>8-.^\markup{arpeggio}\mp r8 <d d'>2. \bar "!" 
    <d d'>8-.^\markup{sim.} r8 <d d'>2. \bar "!"
    <f d'>8-. r8 <f d'>2. \bar "!" 
    <e e'>8-. r8 <e e'>2. \bar "!"
    <e e'>8-. r8 <e e'>2. \bar "!"
    <g bes>8-. r8 <g bes>2. \bar "!"
    <f, g>8-. r8 <f, g>2. \bar "!"
    <f, g>8-. r8 <f, g>2. \bar "!"
    <a, e>8-. r8 <a, e>2. \bar "!"  
    <g, g>8-. r8 <g, g>2. \bar "!"
    <g, g>8-. r8 <g, g>2. \bar "!"  
    <bes, g>8-. r8 <bes, g>2. \bar "!"
    <c a>8-. r8 <c a>2. \bar "!"
    
    <bes, bes>8-. r8 <bes, bes>2. \bar "!" 
    <bes, bes>8-. r8 <bes, bes>2. \bar "!"
    <bes, f>8-. r8 <bes, f>2. \bar "!"  
    <bes, c f>8-. r8  <bes, c f>2. \bar "!"
    <bes, c f>8-. r8 <bes, c f>2. \bar "!" 
    <c e>8-. r8 <c e>2. \bar "!"
    <d e'>8-. r8 <d e'>2. \bar "!" 
    <d e'>8-. r8 <d e'>2. \bar "!" 
    <d d'>8-. r8 <d d'>2. \bar "!" 
    <a e'>8-. r8 <a e'>2. \bar "!" 
    <a e'>8-. r8 <a e'>2. \bar "!" 
    <g e'>8-. r8 <g e'>2. \bar "!"
    <f e'>8-. r8 <f e'>2. \bar "!" 
    \bar "!"
    
    r1 \bar "!" 
    r1 \bar "!"
    <bes, bes>8-. r8 <bes, bes>2. \bar"!"  
    <bes, a>8-. r8 <bes, a>2. \bar "!"
    <bes, a>8-. r8 <bes, a>2. \bar "!"
    <bes, c a>8-. r8 <bes, c a>2. \bar "!"
    <bes, bes>8-. r8 <bes, bes>2. \bar"!"  
    <bes, bes>8-. r8 <bes, bes>2. \bar"!"  
    <d bes>8-. r8 <d bes>2. \bar "!" 
    <d bes c'>8-. r8 <d bes c'>2. \bar "!" 
    <d bes c'>8-. r8 <d bes c'>2. \bar "!"  
    <c' e'>8-. r8 <c' e'>2. \bar "!"
    <c' d'>8-. r8 <c' d'>2. 
    \bar "!"
    
    <f f'>8-. r8 <f f'>2. \bar "!" 
    <f f'>8-. r8 <f f'>2. \bar "!"
    <a a'>8-. r8 <a a'>2. \bar "!"  
    <g g'>8-. r8 <g g'>2. \bar "!"
    <g g'>8-. r8 <g g'>2. \bar "!"  
    <bes g'>8-. r8 <bes g'>2. \bar "!"
    r1 \bar "!"
    r1 \bar "!"
    r1 \bar "!"  
    <bes, bes>8-. r8 <bes, bes>2. \bar "!"
    <bes, bes>8-. r8 <bes, bes>2. \bar "!" 
    <d bes>8-. r8 <d bes>2. \bar "!"
    <c bes>8-. r8 <c bes>2. \bar "!" 
    \bar "!"
    
    r1 \bar "!" r1 \bar "!"
    <bes, f>8-. r8 <bes, f>2. \bar "!" 
    <bes, e>8-. r8 <bes, e>2. \bar "!" 
    <bes, e>8-. r8 <bes, e>2. \bar "!" 
    r1 \bar "!"
    <bes, f>8-. r8 <bes, f>2. \bar "!"
    <bes, f>8-. r8 <bes, f>2. \bar "!"
    r1 \bar "!" 
    r1 \bar "!" 
    r1 \bar "!" 
    r1 \bar "!"
    r1 
    \bar "!"
    

    %% Section Two A
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
    r4. r4 \bar "!"
    r4. r4 \bar "!"
    r4. r4 \bar "!"
    \time 7/8
    r2 r4. \bar "!"
    
    \pageTurn
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
    r4 <c g>4.\arpeggio \bar "!"
    r4 <c g>4.\arpeggio \bar "!"
    r4 <c g>4.\arpeggio \bar "!"
    \time 7/8
    r2 <f, c>4.\arpeggio \bar "!"
    
    \time 5/8
    r4 <c g>4.\arpeggio \bar "!"
    r4 <c g>4.\arpeggio \bar "!"
    r4 <c g>4.\arpeggio \bar "!"
    \time 7/8
    r2 <d, a,>4.\arpeggio \bar "!"
    
    \time 5/8
    r4 <d a>4.\arpeggio \bar "!"
    r4 <d a>4.\arpeggio \bar "!"
    r4 <d a>4.\arpeggio \bar "!"
    \time 7/8
    r2 <d, a,>4.\arpeggio \bar "!"
    
    \time 5/8
    r4 <d a>4.\arpeggio \bar "!"
    r4 <d a>4.\arpeggio \bar "!"
    r4 <d a>4.\arpeggio \bar "!"
    \time 7/8
    r2 <d, a,>4.\arpeggio \bar "!"
    
    \time 5/8
    r4 <f c'>4.\arpeggio \bar "!"
    r4 <f c'>4.\arpeggio \bar "!"
    r4 <f c'>4.\arpeggio \bar "!"
    \time 7/8
    r2 <g, d>4.\arpeggio \bar "!"

    \time 5/8
    r4 <g d'>4.\arpeggio \bar "!"
    r4 <g d'>4.\arpeggio \bar "!"
    r4 <g d'>4.\arpeggio \bar "!"
    \time 7/8
    r2 <g, d>4.\arpeggio \bar "!"
    
    \time 5/8
    r4 <g d'>4.\arpeggio \bar "!"
    r4 <g d'>4.\arpeggio \bar "!"
    r4 <g d'>4.\arpeggio \bar "!"
    \time 7/8
    r2 <g, d>4.\arpeggio \bar "!"
    
    \time 5/8
    r4 <g d'>4.\arpeggio \bar "!"
    r4 <g d'>4.\arpeggio \bar "!"
    r4 <f c'>4.\arpeggio \bar "!"
    \time 7/8
    r2 <f, c>4.\arpeggio \bar "!"
    
    \time 5/8
    r4 <f c'>4.\arpeggio \bar "!"
    r4 <f c'>4.\arpeggio \bar "!"
    r4 <f c'>4.\arpeggio \bar "!"
    \time 7/8
    r2 <f, c>4.\arpeggio \bar "!"
    
    \time 2/4
    r2\fermata \bar "!"
    
    
   
   
   %% Section Three
    \time 4/4
    \tempo 4 = 80
    \clef bass
    r1_\markup { \harp-pedal #"-v^|^---" } \bar"|"

    
    %% Repeat One
    <cis, cis>2  f8[ cis' f cis'] \bar"|"
    f[ cis' f cis'] f[ cis' f cis'] \bar"|"
    <cis, cis>2 a8[ cis' a cis'] \bar"|"
    a[ cis' a cis'] a8[ cis' a cis'] \bar"|"
    <d, d>2 f8[ d f d] \bar"|"
    f[ d f d] f8[ d f d] \bar"|"
    <d, d>2 g8[ d' g d'] \bar"|"
    g[ d' g d'] g8[ d' g d'] \bar"|"
    <d, d>2 g8[ d' g d'] \bar"|"
    g[ d' g d'] g8[ d' g d'] \bar"|"
    <es, es>2 bes8[ es' bes' es'] \bar"|"
    bes[ es' bes' es'] bes[ es' bes' es'] \bar"|"
    
    %%repeat 2
    <cis, cis>2 f8[ cis' f cis'] \bar"|"
    f[ cis' f cis'] f[ cis' f cis'] \bar"|"
    <cis, cis>2 a8[ cis' a cis'] \bar"|"
    a[ cis' a cis'] a8[ cis' a cis'] \bar"|"
    <d, d>2 f8[ d f d] \bar"|"
    f[ d f d] f8[ d f d] \bar"|"
    <d, d>2 g8[ d' g d'] \bar"|"
    g[ d' g d'] g8[ d' g d'] \bar"|"
    <d, d>2 g8[ d' g d'] \bar"|"
    g[ d' g d'] g8[ d' g d'] \bar"|"
    <es, es>2 bes8[ es' bes' es'] \bar"|"
    bes[ es' bes' es'] bes[ es' bes' es'] \bar"|"
    
    %%repeat 3
    <cis,, cis,>2 f8[ cis' f cis'] \bar"|"
    f[ cis' f cis'] f[ cis' f cis'] \bar"|"
    <cis,, cis,>2 a8[ cis' a cis'] \bar"|"
    a[ cis' a cis'] a8[ cis' a cis'] \bar"|"
    <d,, d,>2 f8[ d f d] \bar"|"
    f[ d f d] f8[ d f d] \bar"|"
    <d,, d,>2 g8[ d' g d'] \bar"|"
    g[ d' g d'] g8[ d' g d'] \bar"|"
    <d,, d,>2 g8[ d' g d'] \bar"|"
    g[ d' g d'] g8[ d' g d'] \bar"|"
    <es,, es,>2 bes8[ es' bes' es'] \bar"|"
    bes[ es' bes' es'] bes[ es' bes' es'] \bar"|"
    
    %%repeat 4
    <cis,, cis,>2 f8[ cis' f cis'] \bar"|"
    f[ cis' f cis'] f[ cis' f cis'] \bar"|"
    <cis,, cis,>2 a8[ cis' a cis'] \bar"|"
    a[ cis' a cis'] a8[ cis' a cis'] \bar"|"
    <d,, d,>2 f8[ d f d] \bar"|"
    f[ d f d] f8[ d f d] \bar"|"
    <d,, d,>2 g8[ d' g d'] \bar"|"
    g[ d' g d'] g8[ d' g d'] \bar"|"
    <d,, d,>2 g8[ d' g d'] \bar"|"
    g[ d' g d'] g8[ d' g d'] \bar"|"
    <es,, es,>2 bes8[ es' bes' es'] \bar"|"
    bes[ es' bes' es'] bes[ es' bes' es'] \bar"|"
    
    %%repeat 5
    <cis,, cis,>2 f8[ cis' f cis'] \bar"|"
    f[ cis' f cis'] f[ cis' f cis'] \bar"|"
    <cis,, cis,>2 a8[ cis' a cis'] \bar"|"
    a[ cis' a cis'] a8[ cis' a cis'] \bar"|"
    <d,, d,>2 f8[ d f d] \bar"|"
    f[ d f d] f8[ d f d] \bar"|"
    <d,, d,>2 g8[ d' g d'] \bar"|"
    g[ d' g d'] g8[ d' g d'] \bar"|"
    <d,, d,>2 g8[ d' g d'] \bar"|"
    g[ d' g d'] g8[ d' g d'] \bar"|"
    <es,, es,>2 bes8[ es' bes' es'] \bar"|"
    bes[ es'] bes'2. \bar"|"
   %}
	\bar "|."
  }

