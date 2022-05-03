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
    \tempo 4 = 55
    \mark \markup { \box 1 }
    r1^\markup{Sequencer plays variation on the notated patterns} \bar "|"
    
    
%{    \repeat unfold 13 { r4 d'4.\pp bes'8 ~ bes'4 ~ \bar "!" 
                          bes'8[ f'8] c''4. a'8 c''4 \bar "!" }
  %}
  
    r4 d'4.\ppp bes'8 ~ bes'4 ~ \bar "!" 
    bes'8[ f'8] c''4. a'8 c''4 \bar "!"
    
    r4 d'4. bes'8 ~ bes'4 ~ \bar "!" 
    bes'8[ f'8] c''4. a'8 c''4 \bar "!"
    
    r4 d'4. bes'8 ~ bes'4 ~ \bar "!" 
    bes'8[ f'8] c''4. a'8 c''4 \bar "!"
    
    r4 d'4. bes'8 ~ bes'4 ~ \bar "!" 
    bes'8[ f'8] c''4. a'8 c''4 \bar "!"
    
    r4 d'4. bes'8 ~ bes'4 ~ \bar "!" 
    \mark #1
    bes'8[ f'8] c''4. a'8 c''4 \bar "!"
    
    r4 d'4. bes'8 ~ bes'4 ~ \bar "!" 
    bes'8[ f'8] c''4. a'8 c''4 \bar "!"
    
    r4 d'4. bes'8 ~ bes'4 ~ \bar "!" 
    bes'8[ f'8] c''4. a'8 c''4 \bar "!"
    
    r4 d'4. bes'8 ~ bes'4 ~ \bar "!" 
    bes'8[ f'8] c''4. a'8 c''4 \bar "!"
    
    r4 d'4. bes'8 ~ bes'4 ~ \bar "!" 
    bes'8[ f'8] c''4. a'8 c''4 \bar "!"
    
    r4 d'4. bes'8 ~ bes'4 ~ \bar "!" 
    bes'8[ f'8] c''4. a'8 c''4 \bar "!"
    
    r4 d'4.\< bes'8 ~ bes'4 ~ \bar "!" 
    bes'8[ f'8] c''4. a'8 c''4 \bar "!"
    
    r4 d'4. bes'8 ~ bes'4 ~ \bar "!" 
    bes'8[ f'8] c''4. a'8 c''4 \bar "!"
    
    r4 d'4. bes'8 ~ bes'4 ~ \bar "!" 
    bes'8[ f'8] c''4. a'8 c''4 \bar "!"
    
    
   
   % \repeat unfold 7 { r4 <d' a'>4.\mp <bes' f''>8 ~ <bes' f''>4 ~ \bar "!" 
    %                      <bes' f''>8[ <f' c''>8] <c'' g''>4. <a' e''>8 <c'' g''>4 \bar "!" }
    
    r4 <d' a'>4.\mp\! <bes' f''>8 ~ <bes' f''>4 ~ \bar "!" 
    <bes' f''>8[ <f' c''>8] <c'' g''>4. <a' e''>8 <c'' g''>4 \bar "!" 
     \mark #2
     r4 <d' a'>4. <bes' f''>8 ~ <bes' f''>4 ~ \bar "!" 
    <bes' f''>8[ <f' c''>8] <c'' g''>4. <a' e''>8 <c'' g''>4 \bar "!" 
     r4 <d' a'>4. <bes' f''>8 ~ <bes' f''>4 ~ \bar "!" 
    <bes' f''>8[ <f' c''>8] <c'' g''>4. <a' e''>8 <c'' g''>4 \bar "!" 
     r4 <d' a'>4. <bes' f''>8 ~ <bes' f''>4 ~ \bar "!" 
    <bes' f''>8[ <f' c''>8] <c'' g''>4. <a' e''>8 <c'' g''>4 \bar "!" 
     r4 <d' a'>4. <bes' f''>8 ~ <bes' f''>4 ~ \bar "!" 
    <bes' f''>8[ <f' c''>8] <c'' g''>4. <a' e''>8 <c'' g''>4 \bar "!" 
     r4 <d' a'>4. <bes' f''>8 ~ <bes' f''>4 ~ \bar "!" 
    <bes' f''>8[ <f' c''>8] <c'' g''>4. <a' e''>8 <c'' g''>4 \bar "!" 
     r4 <d' a'>4. <bes' f''>8 ~ <bes' f''>4 ~ \bar "!" 
    <bes' f''>8[ <f' c''>8] <c'' g''>4. <a' e''>8 <c'' g''>4 \bar "!" 
    
    %\repeat unfold 12 { r4 d'4.\pp bes'8 ~ bes'4 ~ \bar "!" 
                         % bes'8[ f'8] c''4. a'8 c''4 \bar "!" }
                         
    r4 d'4.\pp bes'8 ~ bes'4 ~ \bar "!" 
    bes'8[ f'8] c''4. a'8 c''4 \bar "!"
    
    r4 d'4. bes'8 ~ bes'4 ~ \bar "!" 
    bes'8[ f'8] c''4. a'8 c''4 \bar "!"
    
    r4 d'4. bes'8 ~ bes'4 ~ \bar "!" 
    bes'8[ f'8] c''4. a'8 c''4 \bar "!"
    
    r4 d'4. bes'8 ~ bes'4 ~ \bar "!" 
    bes'8[ f'8] c''4. a'8 c''4 \bar "!"
    
    r4 d'4. bes'8 ~ bes'4 ~ \bar "!" 
    bes'8[ f'8] c''4. a'8 c''4 \bar "!"
    
    r4 d'4. bes'8 ~ bes'4 ~ \bar "!" 
    bes'8[ f'8] c''4. a'8 c''4 \bar "!"
    
    r4 d'4. bes'8 ~ bes'4 ~ \bar "!" 
    bes'8[ f'8] c''4. a'8 c''4 \bar "!"
    
    r4 d'4. bes'8 ~ bes'4 ~ \bar "!" 
    bes'8[ f'8] c''4. a'8 c''4 \bar "!"
    
    r4 d'4. bes'8 ~ bes'4 ~ \bar "!" 
    bes'8[ f'8] c''4. a'8 c''4 \bar "!"
    
    r4 d'4.\> bes'8 ~ bes'4 ~ \bar "!" 
    bes'8[ f'8] c''4. a'8 c''4 \bar "!"
    
    r4 d'4. bes'8 ~ bes'4 ~ \bar "!" 
    bes'8[ f'8] c''4. a'8 c''4 \bar "!"
    
    r4 d'4. bes'8 ~ bes'4 ~ \bar "!" 
    bes'8[ f'8] c''4. a'8 c''4\ppp \bar "!"
    
    
    %% Section Two

    \time 4/4
    \tempo 4 = 110
    \mark \markup { \box 2 }
    r1 \bar "!"
    
    %\repeat unfold 25 { r8 <d' f'>8.\pp <bes' d''>16 ~ <bes' d''>8 ~ <bes' d''>16[ <f' a'>16] <c'' e''>8. <a' c''>16 <c'' e''>8 \bar "!" }
    r1 \bar "!"
    r1 \bar "!"
    r1 \bar "!"
    r1 \bar "!"
    r1 \bar "!"
    
    r1 \bar "!"
    r1 \bar "!"
    r1 \bar "!"
    r1 \bar "!"
    r1 \bar "!"
    
    r1 \bar "!"
    r1 \bar "!"
    r1 \bar "!"
    r1 \bar "!"
    \mark #3
    r8 <d' f'>8.\pp <bes' d''>16 ~ <bes' d''>8 ~ <bes' d''>16[ <f' a'>16] <c'' e''>8. <a' c''>16 <c'' e''>8 \bar "!"
    
    r8 <d' f'>8. <bes' d''>16 ~ <bes' d''>8 ~ <bes' d''>16[ <f' a'>16] <c'' e''>8. <a' c''>16 <c'' e''>8 \bar "!"
    r8 <d' f'>8. <bes' d''>16 ~ <bes' d''>8 ~ <bes' d''>16[ <f' a'>16] <c'' e''>8. <a' c''>16 <c'' e''>8 \bar "!"
    r8 <d' f'>8. <bes' d''>16 ~ <bes' d''>8 ~ <bes' d''>16[ <f' a'>16] <c'' e''>8. <a' c''>16 <c'' e''>8 \bar "!"
    r8 <d' f'>8. <bes' d''>16 ~ <bes' d''>8 ~ <bes' d''>16[ <f' a'>16] <c'' e''>8. <a' c''>16 <c'' e''>8 \bar "!"
    r8 <d' f'>8. <bes' d''>16 ~ <bes' d''>8 ~ <bes' d''>16[ <f' a'>16] <c'' e''>8. <a' c''>16 <c'' e''>8 \bar "!"
    
    r8 <d' f'>8. <bes' d''>16 ~ <bes' d''>8 ~ <bes' d''>16[ <f' a'>16] <c'' e''>8. <a' c''>16 <c'' e''>8 \bar "!"
    r8 <d' f'>8. <bes' d''>16 ~ <bes' d''>8 ~ <bes' d''>16[ <f' a'>16] <c'' e''>8. <a' c''>16 <c'' e''>8 \bar "!"
    r8 <d' f'>8.\< <bes' d''>16 ~ <bes' d''>8 ~ <bes' d''>16[ <f' a'>16] <c'' e''>8. <a' c''>16 <c'' e''>8 \bar "!"
    r8 <d' f'>8. <bes' d''>16 ~ <bes' d''>8 ~ <bes' d''>16[ <f' a'>16] <c'' e''>8. <a' c''>16 <c'' e''>8 \bar "!"
    r8 <d' f'>8. <bes' d''>16 ~ <bes' d''>8 ~ <bes' d''>16[ <f' a'>16] <c'' e''>8. <a' c''>16 <c'' e''>8 \bar "!"
    
    
   % \repeat unfold 15 { r8 d'8.\mp bes'16 ~ bes'8 ~ bes'16[ f'16] c''8. a'16 c''8 \bar "!" }
    
    r8 d'8.\p\! bes'16 ~ bes'8 ~ bes'16[ f'16] c''8. a'16 c''8 \bar "!"
    r8 d'8. bes'16 ~ bes'8 ~ bes'16[ f'16] c''8. a'16 c''8 \bar "!"
    r8 d'8. bes'16 ~ bes'8 ~ bes'16[ f'16] c''8. a'16 c''8 \bar "!"
    r8 d'8. bes'16 ~ bes'8 ~ bes'16[ f'16] c''8. a'16 c''8 \bar "!"
    r8 d'8. bes'16 ~ bes'8 ~ bes'16[ f'16] c''8. a'16 c''8 \bar "!"
    
    r8 d'8. bes'16 ~ bes'8 ~ bes'16[ f'16] c''8. a'16 c''8 \bar "!"
    r8 d'8. bes'16 ~ bes'8 ~ bes'16[ f'16] c''8. a'16 c''8 \bar "!"
    r8 d'8. bes'16 ~ bes'8 ~ bes'16[ f'16] c''8. a'16 c''8 \bar "!"
    r8 d'8. bes'16 ~ bes'8 ~ bes'16[ f'16] c''8. a'16 c''8 \bar "!"
    r8 d'8. bes'16 ~ bes'8 ~ bes'16[ f'16] c''8. a'16 c''8 \bar "!"
    
    
    r8 d'8. bes'16 ~ bes'8 ~ bes'16[ f'16] c''8. a'16 c''8 \bar "!"
    \mark #4
    r8 d'8. bes'16 ~ bes'8 ~ bes'16[ f'16] c''8. a'16 c''8 \bar "!"
    r8 d'8. bes'16 ~ bes'8 ~ bes'16[ f'16] c''8. a'16 c''8 \bar "!"
    r8 d'8. bes'16 ~ bes'8 ~ bes'16[ f'16] c''8. a'16 c''8 \bar "!"
    r8 d'8. bes'16 ~ bes'8 ~ bes'16[ f'16] c''8. a'16 c''8 \bar "!"
    
    %\repeat unfold 24 { r8 <d' f'>8. <bes' d''>16 ~ <bes' d''>8 ~ <bes' d''>16[ <f' a'>16] <c'' e''>8. <a' c''>16 <c'' e''>8 \bar "!" }
    
    r8 <d' f'>8. <bes' d''>16 ~ <bes' d''>8 ~ <bes' d''>16[ <f' a'>16] <c'' e''>8. <a' c''>16 <c'' e''>8 \bar "!"
    r8 <d' f'>8. <bes' d''>16 ~ <bes' d''>8 ~ <bes' d''>16[ <f' a'>16] <c'' e''>8. <a' c''>16 <c'' e''>8 \bar "!"
    r8 <d' f'>8. <bes' d''>16 ~ <bes' d''>8 ~ <bes' d''>16[ <f' a'>16] <c'' e''>8. <a' c''>16 <c'' e''>8 \bar "!"
    r8 <d' f'>8. <bes' d''>16 ~ <bes' d''>8 ~ <bes' d''>16[ <f' a'>16] <c'' e''>8. <a' c''>16 <c'' e''>8 \bar "!"
    r8 <d' f'>8. <bes' d''>16 ~ <bes' d''>8 ~ <bes' d''>16[ <f' a'>16] <c'' e''>8. <a' c''>16 <c'' e''>8 \bar "!"
    r8 <d' f'>8. <bes' d''>16 ~ <bes' d''>8 ~ <bes' d''>16[ <f' a'>16] <c'' e''>8. <a' c''>16 <c'' e''>8 \bar "!"
 
    r8 <d' f'>8. <bes' d''>16 ~ <bes' d''>8 ~ <bes' d''>16[ <f' a'>16] <c'' e''>8. <a' c''>16 <c'' e''>8 \bar "!"
    r8 <d' f'>8. <bes' d''>16 ~ <bes' d''>8 ~ <bes' d''>16[ <f' a'>16] <c'' e''>8. <a' c''>16 <c'' e''>8 \bar "!"
    r8 <d' f'>8. <bes' d''>16 ~ <bes' d''>8 ~ <bes' d''>16[ <f' a'>16] <c'' e''>8. <a' c''>16 <c'' e''>8 \bar "!"
    r8 <d' f'>8. <bes' d''>16 ~ <bes' d''>8 ~ <bes' d''>16[ <f' a'>16] <c'' e''>8. <a' c''>16 <c'' e''>8 \bar "!"
    r8 <d' f'>8. <bes' d''>16 ~ <bes' d''>8 ~ <bes' d''>16[ <f' a'>16] <c'' e''>8. <a' c''>16 <c'' e''>8 \bar "!"
    r8 <d' f'>8. <bes' d''>16 ~ <bes' d''>8 ~ <bes' d''>16[ <f' a'>16] <c'' e''>8. <a' c''>16 <c'' e''>8 \bar "!"
    
    r8 <d' f'>8.\> <bes' d''>16 ~ <bes' d''>8 ~ <bes' d''>16[ <f' a'>16] <c'' e''>8. <a' c''>16 <c'' e''>8 \bar "!"
    r8 <d' f'>8. <bes' d''>16 ~ <bes' d''>8 ~ <bes' d''>16[ <f' a'>16] <c'' e''>8. <a' c''>16 <c'' e''>8 \bar "!"
    r8 <d' f'>8. <bes' d''>16 ~ <bes' d''>8 ~ <bes' d''>16[ <f' a'>16] <c'' e''>8. <a' c''>16 <c'' e''>8 \bar "!"
    r8 <d' f'>8. <bes' d''>16 ~ <bes' d''>8 ~ <bes' d''>16[ <f' a'>16] <c'' e''>8. <a' c''>16 <c'' e''>8 \bar "!"
    r8 <d' f'>8. <bes' d''>16 ~ <bes' d''>8 ~ <bes' d''>16[ <f' a'>16] <c'' e''>8. <a' c''>16 <c'' e''>8 \bar "!"
    r8 <d' f'>8. <bes' d''>16 ~ <bes' d''>8 ~ <bes' d''>16[ <f' a'>16] <c'' e''>8. <a' c''>16 <c'' e''>8\ppp\! \bar "!"
    
    \mark #5
    r1 \bar "!"
    r1 \bar "!"
    r1 \bar "!"
    r1 \bar "!"
    r1 \bar "!"
    r1 \bar "!"

 
    %% Section Two A

    \time 3/4
    r2. \bar "!"
    
    \time 4/4
    %\repeat unfold 22 { r8 d'8\pp ~ d'16[ bes'16 ~ bes'8] ~ bes'16[ f'16] c''8~] c''16[ a'16 c''8] \bar "!" }
    r1 \bar "!"
    r1 \bar "!"
    
    r1 \bar "!"
    r1 \bar "!"
    r1 \bar "!"
    r1 \bar "!"
    r1 \bar "!"
    
    r1 \bar "!"
    r1 \bar "!"
    r1 \bar "!"
    r1 \bar "!"
    r1 \bar "!"
    
    r1 \bar "!"
    r1 \bar "!"
    r8 d'8\pp ~ d'16[ bes'16 ~ bes'8] ~ bes'16[ f'16] c''8~] c''16[ a'16 c''8] \bar "!"
    r8 d'8 ~ d'16[ bes'16 ~ bes'8] ~ bes'16[ f'16] c''8~] c''16[ a'16 c''8] \bar "!"
    r8 d'8 ~ d'16[ bes'16 ~ bes'8] ~ bes'16[ f'16] c''8~] c''16[ a'16 c''8] \bar "!"
    
    r8 d'8 ~ d'16[ bes'16 ~ bes'8] ~ bes'16[ f'16] c''8~] c''16[ a'16 c''8] \bar "!"
    \mark #6
    r8 d'8 ~ d'16[ bes'16 ~ bes'8] ~ bes'16[ f'16] c''8~] c''16[ a'16 c''8] \bar "!"
    r8 d'8 ~ d'16[ bes'16 ~ bes'8] ~ bes'16[ f'16] c''8~] c''16[ a'16 c''8] \bar "!"
    r8 d'8\< ~ d'16[ bes'16 ~ bes'8] ~ bes'16[ f'16] c''8~] c''16[ a'16 c''8] \bar "!"
    r8 d'8 ~ d'16[ bes'16 ~ bes'8] ~ bes'16[ f'16] c''8~] c''16[ a'16 c''8] \bar "!"
    
    %\repeat unfold 14 { r8 <d' a'>8\mp ~ <d' a'>16[ <bes' f''>16 ~ <bes' f''>8] ~ <bes' f''>16[ <f' c''>16] <c'' g''>8~] <c'' g''>16[ <a' e''>16 <c'' g''>8] \bar "!" }
    
    r8 <d' a'>8\mp\! ~ <d' a'>16[ <bes' f''>16 ~ <bes' f''>8] ~ <bes' f''>16[ <f' c''>16] <c'' g''>8~] <c'' g''>16[ <a' e''>16 <c'' g''>8] \bar "!"
    r8 <d' a'>8 ~ <d' a'>16[ <bes' f''>16 ~ <bes' f''>8] ~ <bes' f''>16[ <f' c''>16] <c'' g''>8~] <c'' g''>16[ <a' e''>16 <c'' g''>8] \bar "!"
    
    r8 <d' a'>8 ~ <d' a'>16[ <bes' f''>16 ~ <bes' f''>8] ~ <bes' f''>16[ <f' c''>16] <c'' g''>8~] <c'' g''>16[ <a' e''>16 <c'' g''>8] \bar "!"
    r8 <d' a'>8 ~ <d' a'>16[ <bes' f''>16 ~ <bes' f''>8] ~ <bes' f''>16[ <f' c''>16] <c'' g''>8~] <c'' g''>16[ <a' e''>16 <c'' g''>8] \bar "!"
    r8 <d' a'>8 ~ <d' a'>16[ <bes' f''>16 ~ <bes' f''>8] ~ <bes' f''>16[ <f' c''>16] <c'' g''>8~] <c'' g''>16[ <a' e''>16 <c'' g''>8] \bar "!"
    r8 <d' a'>8 ~ <d' a'>16[ <bes' f''>16 ~ <bes' f''>8] ~ <bes' f''>16[ <f' c''>16] <c'' g''>8~] <c'' g''>16[ <a' e''>16 <c'' g''>8] \bar "!"
    
    r8 <d' a'>8 ~ <d' a'>16[ <bes' f''>16 ~ <bes' f''>8] ~ <bes' f''>16[ <f' c''>16] <c'' g''>8~] <c'' g''>16[ <a' e''>16 <c'' g''>8] \bar "!"
    r8 <d' a'>8 ~ <d' a'>16[ <bes' f''>16 ~ <bes' f''>8] ~ <bes' f''>16[ <f' c''>16] <c'' g''>8~] <c'' g''>16[ <a' e''>16 <c'' g''>8] \bar "!"
    r8 <d' a'>8 ~ <d' a'>16[ <bes' f''>16 ~ <bes' f''>8] ~ <bes' f''>16[ <f' c''>16] <c'' g''>8~] <c'' g''>16[ <a' e''>16 <c'' g''>8] \bar "!"
    r8 <d' a'>8 ~ <d' a'>16[ <bes' f''>16 ~ <bes' f''>8] ~ <bes' f''>16[ <f' c''>16] <c'' g''>8~] <c'' g''>16[ <a' e''>16 <c'' g''>8] \bar "!"
    
    r8 <d' a'>8 ~ <d' a'>16[ <bes' f''>16 ~ <bes' f''>8] ~ <bes' f''>16[ <f' c''>16] <c'' g''>8~] <c'' g''>16[ <a' e''>16 <c'' g''>8] \bar "!"
    r8 <d' a'>8\> ~ <d' a'>16[ <bes' f''>16 ~ <bes' f''>8] ~ <bes' f''>16[ <f' c''>16] <c'' g''>8~] <c'' g''>16[ <a' e''>16 <c'' g''>8] \bar "!"
    r8 <d' a'>8 ~ <d' a'>16[ <bes' f''>16 ~ <bes' f''>8] ~ <bes' f''>16[ <f' c''>16] <c'' g''>8~] <c'' g''>16[ <a' e''>16 <c'' g''>8] \bar "!"
    r8 <d' a'>8 ~ <d' a'>16[ <bes' f''>16 ~ <bes' f''>8] ~ <bes' f''>16[ <f' c''>16] <c'' g''>8~] <c'' g''>16[ <a' e''>16 <c'' g''>8] \bar "!"
    

    %\repeat unfold 22 { r8 d'8\pp ~ d'16[ bes'16 ~ bes'8] ~ bes'16[ f'16] c''8~] c''16[ a'16 c''8] \bar "!" }
    
    r8 d'8\pp ~ d'16[ bes'16 ~ bes'8] ~ bes'16[ f'16] c''8~] c''16[ a'16 c''8] \bar "!" 
    
    r8 d'8 ~ d'16[ bes'16 ~ bes'8] ~ bes'16[ f'16] c''8~] c''16[ a'16 c''8] \bar "!" 

    r8 d'8 ~ d'16[ bes'16 ~ bes'8] ~ bes'16[ f'16] c''8~] c''16[ a'16 c''8] \bar "!" 
    r8 d'8 ~ d'16[ bes'16 ~ bes'8] ~ bes'16[ f'16] c''8~] c''16[ a'16 c''8] \bar "!" 
    \mark #7
    r8 d'8 ~ d'16[ bes'16 ~ bes'8] ~ bes'16[ f'16] c''8~] c''16[ a'16 c''8] \bar "!" 
    r8 d'8 ~ d'16[ bes'16 ~ bes'8] ~ bes'16[ f'16] c''8~] c''16[ a'16 c''8] \bar "!" 
    r8 d'8 ~ d'16[ bes'16 ~ bes'8] ~ bes'16[ f'16] c''8~] c''16[ a'16 c''8] \bar "!" 

    r8 d'8 ~ d'16[ bes'16 ~ bes'8] ~ bes'16[ f'16] c''8~] c''16[ a'16 c''8] \bar "!" 
    r8 d'8 ~ d'16[ bes'16 ~ bes'8] ~ bes'16[ f'16] c''8~] c''16[ a'16 c''8] \bar "!" 
    r8 d'8 ~ d'16[ bes'16 ~ bes'8] ~ bes'16[ f'16] c''8~] c''16[ a'16 c''8] \bar "!" 
    r8 d'8 ~ d'16[ bes'16 ~ bes'8] ~ bes'16[ f'16] c''8~] c''16[ a'16 c''8] \bar "!"
    r8 d'8 ~ d'16[ bes'16 ~ bes'8] ~ bes'16[ f'16] c''8~] c''16[ a'16 c''8] \bar "!"  

    r8 d'8 ~ d'16[ bes'16 ~ bes'8] ~ bes'16[ f'16] c''8~] c''16[ a'16 c''8] \bar "!" 
    r8 d'8 ~ d'16[ bes'16 ~ bes'8] ~ bes'16[ f'16] c''8~] c''16[ a'16 c''8] \bar "!" 
    r8 d'8 ~ d'16[ bes'16 ~ bes'8] ~ bes'16[ f'16] c''8~] c''16[ a'16 c''8] \bar "!" 
    r8 d'8 ~ d'16[ bes'16 ~ bes'8] ~ bes'16[ f'16] c''8~] c''16[ a'16 c''8] \bar "!"
    r8 d'8 ~ d'16[ bes'16 ~ bes'8] ~ bes'16[ f'16] c''8~] c''16[ a'16 c''8] \bar "!"  

    r8 d'8 ~ d'16[ bes'16 ~ bes'8] ~ bes'16[ f'16] c''8~] c''16[ a'16 c''8] \bar "!" 
    r8 d'8 ~ d'16[ bes'16 ~ bes'8] ~ bes'16[ f'16] c''8~] c''16[ a'16 c''8] \bar "!" 
    r8 d'8 ~ d'16[ bes'16 ~ bes'8] ~ bes'16[ f'16] c''8~] c''16[ a'16 c''8] \bar "!" 
    r8 d'8 ~ d'16[ bes'16 ~ bes'8] ~ bes'16[ f'16] c''8~] c''16[ a'16 c''8] \bar "!"
    r8 d'8 ~ d'16[ bes'16 ~ bes'8] ~ bes'16[ f'16] c''8~] c''16[ a'16 c''8] \bar "!"  

    \time 5/8
    r4. r4 \bar "!"
    r4. r4 \bar "!"
    
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
    \clef bass
    \break
    r1 \bar"|"
    
    
    %repeat 1
    f1\pp ~ \bar "|" f1 \bar "|"
    e1 ~ \bar "|" e1 \bar "|"
    d1 ~ \bar "|" d1 \bar "|"
    f1 ~ \bar "|" f1 \bar "|"
    d1 ~ \bar "|" d1 \bar "|"
    es1 ~ \bar "|" es1 \bar "|"
    
    %repeat 2
    \mark #8
    f1 ~ \bar "|" f1 \bar "|"
    e1 ~ \bar "|" e1 \bar "|"
    d1 ~ \bar "|" d1 \bar "|"
    f1 ~ \bar "|" f1 \bar "|"
    d1 ~ \bar "|" d1 \bar "|"
    es1 ~ \bar "|" es1 \bar "|"
    
    %repeat 3
    \mark #9
    f1 ~ \bar "|" f1 \bar "|"
    e1 ~ \bar "|" e1 \bar "|"
    d1 ~ \bar "|" d1 \bar "|"
    f1 ~ \bar "|" f1 \bar "|"
    d1 ~ \bar "|" d1 \bar "|"
    es1 ~ \bar "|" es1 \bar "|"
    
    
    %repeat 4
    \mark #10
    f1 ~ \bar "|" f1 \bar "|"
    e1 ~ \bar "|" e1 \bar "|"
    d1 ~ \bar "|" d1 \bar "|"
    f1 ~ \bar "|" f1 \bar "|"
    d1 ~ \bar "|" d1 \bar "|"
    es1 ~ \bar "|" es1 \bar "|"
    
    %repeat 5
    \mark #11
    f1 ~ \bar "|" f1 \bar "|"
    e1 ~ \bar "|" e1 \bar "|"
    d1 ~ \bar "|" d1 \bar "|"
    \startRit
    f1\startTextSpan ~ \bar "|" f1 \bar "|"
    d1 ~ \bar "|" d1 \bar "|"
    es1 ~ \bar "|" es1\stopTextSpan 
    
    %}
    
	\bar "|."
  }
}

