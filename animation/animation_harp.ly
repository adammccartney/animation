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
    

    %% Section Three
    \time 5/8 
    \mark #4
    \time 5/8 
    r4 <g'' g'''>4.\p\arpeggio |
    r4 <g'' g'''>4.\arpeggio |
    r4 <g'' g'''>4.\arpeggio |
    \time 7/8
    r2 <g'' g'''>4.\arpeggio |
    
    \time 5/8
    r4 <g'' g'''>4.\arpeggio |
    r4 <g'' g'''>4.\arpeggio |
    r4 <g'' g'''>4.\arpeggio |
    \time 7/8
    r2 <g'' g'''>4.\arpeggio |
    
    \time 5/8
    r4 <c''' c''''>4.\arpeggio |
    r4 <c''' c''''>4.\arpeggio |
    r4 <c''' c''''>4.\arpeggio |
    \time 7/8
    r2 <a'' a'''>4.\arpeggio |
    
    \time 5/8
    r4 <c''' c''''>4.\arpeggio |
    r4 <c''' c''''>4.\arpeggio |
    r4 <c''' c''''>4.\arpeggio |
    \time 7/8
    r2 <a'' a'''>4.\arpeggio |
    
    \mark #5
    \time 5/8
    r4 <a'' a'''>4.\arpeggio |
    r4 <a'' a'''>4.\arpeggio |
    r4 <a'' a'''>4.\arpeggio |
    \time 7/8
    r2 <bes'' bes'''>4.\arpeggio |

    \time 5/8
    r4 <a'' a'''>4.\arpeggio |
    r4 <a'' a'''>4.\arpeggio |
    r4 <a'' a'''>4.\arpeggio |
    \time 7/8
    r2 <bes'' bes'''>4.\arpeggio |
    
    \time 5/8
    r4 <bes'' bes'''>4.\arpeggio |
    r4 <bes'' bes'''>4.\arpeggio |
    r4 <bes'' bes'''>4.\arpeggio |
    \time 7/8
    r2 <c'' c'''>4.\arpeggio |
    
    \time 5/8
    r4 <bes'' bes'''>4.\arpeggio |
    r4 <bes'' bes'''>4.\arpeggio |
    r4 <bes'' bes'''>4.\arpeggio |
    \time 7/8
    r2 <c'' c'''>4.\arpeggio |
    
    \time 5/8
    r4 <c'' c'''>4.\arpeggio |
    r4 <c'' c'''>4.\arpeggio |
    r4 <c'' c'''>4.\arpeggio |
    \time 7/8
    r2 <d''' d''''>4.\arpeggio |
    
    \time 2/4
    r2\fermata |
    
    \time 4/4
    \tempo 4 = 80
    \break
    \mark #6
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
    \mark #7
    \barNumberCheck 116
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
    
    %% Repeat 4
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
    
    %% Repeat 5
    \mark #10
    \barNumberCheck #152
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
    d'8\p-._\markup { \harp-pedal #"--^|v--v" } r8 
    \repeat tremolo 12 { d'32 f' }\bar "|" 
    d'8-. r8 \repeat tremolo 12{ <d' eis'>32 \staffUpper f' } \staffLower  \bar "|"
    f'8-. r8 \repeat tremolo 12{ eis'32 f' } 
    \bar "|"
    <bes f'>8-. r8 \repeat tremolo 12{ <eis' ais'>32 \staffUpper <f' bes'> } \staffLower
    \bar "|"
    bes'8-. r8 \repeat tremolo 12{ ais'32 bes' }  
    \bar "|"
    \repeat tremolo 4 { ais'16 \staffUpper <bes' c''>} \staffLower 
    \repeat tremolo 4 { <ais c''>16 \staffUpper <g' bes'> } \staffLower
    \bar "|"
    <f' g'>8-. r8 \repeat tremolo 12{ eis'32 \staffUpper <f' g'> } \staffLower 
    \bar "|"
    <f' g'>8-. r8 \repeat tremolo 12{ eis'32 \staffUpper <f' g'> } \staffLower
    \bar "|"
    <g' bes'>8-. r8 \repeat tremolo 12{ bes'32 \staffUpper <g' ais'> } \staffLower 
    \bar "|"
    <g' bes'>8-. r8 \repeat tremolo 12{ bes'32 \staffUpper <g' ais'> } \staffLower 
    \bar "|"
    \mark #1
    <g' bes'>8-. r8 \repeat tremolo 12{ bes'32 \staffUpper <g' ais'> } \staffLower
    \bar "|"
    bes'8-. r8 \repeat tremolo 12{ ais'32 bes' }
    \bar "|"
    bes'8-. r8 \repeat tremolo 12{ ais'32 bes' } 
    \bar "|"
    
    
    bes8-. r8 \repeat tremolo 12{ ais32 bes}  \bar "|" 
    bes8-. r8 \repeat tremolo 12{ ais32 \staffUpper <bes d> } \staffLower  \bar "|"
    <bes d'>8-. r8 \repeat tremolo 12{ ais32 \staffUpper <bes d'> \staffLower } \bar "|" 
    d'8-. r8 \repeat tremolo 12{ <bes c'>32 \staffUpper d' } \staffLower \bar "|" 
    \repeat tremolo 8 { <bes c'>16 \staffUpper d' } \staffLower \bar "|" 
    <bes c'>8-. r8 \repeat tremolo 12{ e'32 \staffUpper <bes d'> } \staffLower \bar "|"
    d'8-. r8 \repeat tremolo 12{ bes32 \staffUpper <ais d'> } \staffLower \bar "|"  
    \repeat tremolo 8 { bes16 \staffUpper <ais d'> } \staffLower \bar "|"
    <bes f'>8-. r8 \repeat tremolo 12{ <ais eis'>32 \staffUpper <bes f'> } \staffLower \bar "|" 
    \repeat tremolo 8 { eis'16 f' } \bar "|"
    \repeat tremolo 8 { eis'16 f' } \bar "|" 
    <eis' g'>8-. r8 \repeat tremolo 12{ f'32 \staffUpper <eis' g'> } \staffLower \bar "|"
    \repeat tremolo 8 { eis'16 f' } 
    \bar "|"
    
    g'8-. r8 \repeat tremolo 12{ f'32 g' } \bar "|" 
    \repeat tremolo 8 { f'16 g' } \bar "|"
    <g' bes'>8-. r8 \repeat tremolo 12{ ais'32 \staffUpper <g' bes'> } \staffLower \bar "|" 
    \mark #2
    g'8-. r8 \repeat tremolo 12{ ais'32 bes' } \bar "|"
    g'8-. r8 \repeat tremolo 12{ ais'32 bes' } \bar "|" 
    c''8-. r8 \repeat tremolo 12{ ais'32 \staffUpper <bes' c''> } \staffLower \bar "|"
    d''8-. r8 \repeat tremolo 12{ ais'32 \staffUpper <bes' c''> } \staffLower \bar "|" 
    d''8-. r8 \repeat tremolo 12{ ais'32 \staffUpper <bes' c''> } \staffLower \bar "|"
    <bes' d''>8-. r8 \repeat tremolo 12{ <ais' c''>32 \staffUpper <bes' d''> } \staffLower \bar "|" 
    g'8-. r8 \repeat tremolo 12{ <ais' c''>32 \staffUpper <bes' d''> } \staffLower \bar "|"
    g'8-. r8 \repeat tremolo 12{ <ais' c''>32 \staffUpper <bes' d''> } \staffLower \bar "|" 
    <c'' e''>8-. r8 \repeat tremolo 12{ <bes' d''>32 \staffUpper <c'' e''> } \staffLower \bar "|"
    d''8-. r8 \repeat tremolo 12{ c''32 d'' } 
    \bar "|"
    
    f'8-. r8 \repeat tremolo 12{ eis'32 f' } \bar "|" 
    f'8-. r8 \repeat tremolo 12{ eis'32 \staffUpper <f' g'> } \staffLower  \bar "|"
    \mark #3
    \barNumberCheck #42
    <eis' g'>8-. r8 \repeat tremolo 12{ <f' ais'>32 \staffUpper <eis' g'> } \staffLower  \bar "|" 
    <eis' g'>8-. r8 \repeat tremolo 12{ <f' ais'>32 \staffUpper <eis' g'> } \staffLower  \bar "|"
    <eis' g'>8-. r8 \repeat tremolo 12{ <f' ais'>32 \staffUpper <eis' g'> } \staffLower \bar "|" 
    <f' ais' c'>8-. r8 \repeat tremolo 12{ <eis' g' bes'>32 \staffUpper <f' ais' c'> } \staffLower  \bar "|"
    <eis' g' bes'>8-. r8 \repeat tremolo 12{ <f' ais' c'>32 \staffUpper <eis' g' bes'> } \staffLower  \bar "|" 
    <f' ais' c'>8-. r8 \repeat tremolo 12{ <eis' g' bes'>32 \staffUpper <f' ais' c'> } \staffLower \bar "|"
    <ais' c'' eis''>8-. r8 \repeat tremolo 12{ <bes' f'' g''>32 \staffUpper <ais' c'' eis''> } \staffLower \bar "|" 
    <bes' f'' g''>8-. r8 \repeat tremolo 12{ <ais' c'' eis''>32 \staffUpper <bes' f'' g''> } \staffLower \bar "|"
    <ais' c'' eis''>8-. r8 \repeat tremolo 12{ <bes' f'' g''>32 \staffUpper <ais' c'' eis''> } \staffLower \bar "|" 
    <bes' d''>8-. r8 \repeat tremolo 12{ <ais' c'' eis''>32 \staffUpper <bes' d''> } \staffLower \bar "|"
    <ais' c'' eis''>8-. r8 \repeat tremolo 12{ <bes' d'>32 \staffUpper <ais' c'' eis''> } \staffLower 
    \bar "|"
    
    <bes' d''>8-. r8 \repeat tremolo 12{ <f'' ais''>32 \staffUpper <bes' d''> } \staffLower \bar "|" 
    <bes' d''>8-. r8 \repeat tremolo 12{ <f'' ais''>32 \staffUpper <bes' d''> } \staffLower \bar "|"
    f''8-. r8 \repeat tremolo 12{ eis''32 f'' } \bar "|" 
    eis''8-. r8 \repeat tremolo 12{ f''32 eis'' } \bar "|"
    <f'' g''>8-. r8 \repeat tremolo 12{ eis''32 \staffUpper <f'' g'> } \staffLower \bar "|" 
    <c'' eis''>8-. r8 \repeat tremolo 12{ <f'' g''>32 \staffUpper <c'' eis''>} \staffLower \bar "|"
    f''8-. r8 \repeat tremolo 12{ <c'' eis''>32 \staffUpper f'' } \staffLower \bar "|" 
    <ais' c'' eis''>8-. r8 \repeat tremolo 12{ f''32 \staffUpper <ais' c'' eis''> } \staffLower \bar "|"
    f'8-. r8 \repeat tremolo 6 { \staffUpper <ais' c'' eis'>16 \staffLower f' } \bar "|" 
    <ais' c'' eis'>8-. r8 \repeat tremolo 12{ <f' g'>32 \staffUpper <ais' c'' eis'> } \staffLower \bar "|"
    <f' g'>8-. r8 \repeat tremolo 12{ <ais' c'' eis''>32 \staffUpper <f' g'> } \staffLower \bar "|" 
    <ais' c'' eis''>8-. r8 \repeat tremolo 12{ <f' g' bes'>32 \staffUpper <ais' c'' eis''> } \staffLower \bar "|"
    <f' g' bes'>8-. r8 \repeat tremolo 12{ <ais' c'' eis''>32 \staffUpper <f' g' bes'> } \staffLower  
    \bar "|"
    

    %% Section Three
    %%%% Mod Five third down
  
    \time 5/8 
    r4 <c g>4.\arpeggio |
    r4 <c g>4.\arpeggio |
    r4 <c g>4.\arpeggio |
    \time 7/8
    r2 <f, c>4.\arpeggio |
    
    \time 5/8
    r4 <c g>4.\arpeggio |
    r4 <c g>4.\arpeggio |
    r4 <c g>4.\arpeggio |
    \time 7/8
    r2 <d, a,>4.\arpeggio |
    
    \time 5/8
    r4 <d a>4.\arpeggio |
    r4 <d a>4.\arpeggio |
    r4 <d a>4.\arpeggio |
    \time 7/8
    r2 <d, a,>4.\arpeggio |
    
    \time 5/8
    r4 <d a>4.\arpeggio |
    r4 <d a>4.\arpeggio |
    r4 <d a>4.\arpeggio |
    \time 7/8
    r2 <d, a,>4.\arpeggio |
    
    \time 5/8
    r4 <f c'>4.\arpeggio |
    r4 <f c'>4.\arpeggio |
    r4 <f c'>4.\arpeggio |
    \time 7/8
    r2 <g, d>4.\arpeggio |

    \time 5/8
    r4 <g d'>4.\arpeggio |
    r4 <g d'>4.\arpeggio |
    r4 <g d'>4.\arpeggio |
    \time 7/8
    r2 <g, d>4.\arpeggio |
    
    \time 5/8
    r4 <g d'>4.\arpeggio |
    r4 <g d'>4.\arpeggio |
    r4 <g d'>4.\arpeggio |
    \time 7/8
    r2 <g, d>4.\arpeggio |
    
    \time 5/8
    r4 <g d'>4.\arpeggio |
    r4 <g d'>4.\arpeggio |
    r4 <f c'>4.\arpeggio |
    \time 7/8
    r2 <f, c>4.\arpeggio |
    
    \time 5/8
    r4 <f c'>4.\arpeggio |
    r4 <f c'>4.\arpeggio |
    r4 <f c'>4.\arpeggio |
    \time 7/8
    r2 <f, c>4.\arpeggio |
    
    \time 2/4
    r2\fermata |
    
    
   
   
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

