% PARAMETRI GLOBALI
#(set-default-paper-size "a3landscape")
\include "date.ly"
% #(set-global-staff-size 20)

% Name
\markup { 
  \column {
    \vspace #8
    \center-column {
      \fill-line { 
        \override #'(font-family . "Times New Roman") % Cambia il font a "Times New Roman"
        \fontsize #12 \bold \line {Wires II} % Font grande e in grassetto
      }
      \override #'(font-family . "Helvetica") % Cambia il font a "Helvetica"
      \fontsize #4 \italic \line {Breath Given Breath Taken}
      \vspace #1
      \fontsize #4 \italic \line {for 2 identical wind instruments} % Font piccolo e in corsivo
      \vspace #1
      \fontsize #4 \line {Luca Spanedda}
      \fontsize #2 \line { \date }
    }
  }
}
\pageBreak

% Score Proprieties
stemOff = \hide Staff.Stem 
stemOn  = \undo \stemOff
rigo = \override Staff.StaffSymbol.line-count = #1
rigozero = \override Staff.StaffSymbol.line-count = #0
pentagramma = \revert Staff.StaffSymbol.line-count
iniziocorona = \set Score.repeatCommands = #'((volta #f) (volta "") end-repeat)
finecorona = \set Score.repeatCommands = #'((volta #f))
notainvisibile = \override Voice.NoteHead.color = #white
notavisibile = \override Voice.NoteHead.color = #black
stangheoff = \stemOff 
stangheon = \stemOn
dalnulla = \override Hairpin.circled-tip = ##t
revertdalnulla = \revert Hairpin.circled-tip

% Perfomance Notes
\markup {
  \column {
\fontsize #8 \line {Performance Notes}
\vspace #2
\fontsize #2 \line {- The composition is built on 3 layers of memory: primary, evoked, echoic.}
\vspace #1
\fontsize #2 \line {- The duration of each memory (A) lasts 20'', this can vary according to the indications provided below.}
\vspace #1
%
\line {  
  \fontsize #2 - {
    \vspace #1
      \score{
        \new Staff \with { instrumentName = \markup \center-align {\fontsize #2 \rounded-box \bold {Memory}} \remove "Time_signature_engraver" } 

    {
    \cadenzaOn
    
    % UN SOLO RIGO
    \stopStaff \rigo \startStaff
    \once \override Staff.Clef.color = #white
    \once \override Staff.Clef.layer = #-1
    \autoLineBreaksOff
    \override DynamicLineSpanner.staff-padding = #8
    
    s1
    \bar "|" 
    s1
    \bar "|" \mark"memory pointers"
    s1
    \bar "|"
    s1
    \bar "|"
    s1
    
    }
    
    }
  }
}
\vspace # 1
%
\fontsize #2 \line {- At the beginning of the performance, the two performers freely choose 2 different memory pointers from the primary memory and start playing from them simultaneously.}
\vspace #1
\fontsize #2 \line {- Except for the different indications below, the performance must occur at a single pitch, different for each layer and derived from the range of possible pitches for a given layer.}
\fontsize #2 \line {The note must be sustained as long as possible through the use of circular breathing, trying not to break the sound unless expressly requested.}
\vspace #1
\fontsize #2 \line {- So, performers on the same layer play the same pitch, chosen from the range of possible pitches at the layer change.}
\vspace #1
\fontsize #2 \line {- Each performer, within a time span ranging from 7'' to 20'', upon reaching a memory pointer,}
\fontsize #2 \line {must switch to another pointer of choice within the same current layer. The pointer can be any within the same layer.}
\vspace #1
\fontsize #2 \line {- Every Memory contain (A), (B), (C) time signature markers. Within a time frame ranging from 1' to 2', one of the two performers, upon reaching a memory pointer,}
\fontsize #2 \line {can change the time to (A), (B), (C), then signal the other performer who, upon reaching any memory pointer,} 
\fontsize #2 \line {must continue to perform at the same time chosen by the other performer.}
\vspace #1
\fontsize #2 \line {- The tempo change consists of a variation in the overall duration of the memory, which can transition from lasting 20'' (A) to globally lasting 40'' (B) or 60'' (C).}
\vspace #1
\fontsize #2 \line {- When reaching the end of the memory without having changed the pointer yet, the performer must perform a ''wrap around''}
\fontsize #2 \line {by returning to execute the memory from its beginning (thus completing the memory cycle; the memory is to be understood as cyclic).}
\vspace #1
\fontsize #2 \line {- Between 2' and 3', the performers, upon reaching a memory pointer of their choice within that time frame, must switch to a pointer in another memory,}
\fontsize #2 \line {thus executing a memory change. The second performer, in turn, between 2' and 3', will reach the first performer in the layer chosen by the first one. In these ranges,}
\fontsize #2 \line {since the two performers can switch at different moments within that time frame, overlapping pitches of different heights may occur.}
\vspace #1
\fontsize #2 \line {- The performance should last between approximately 8' and 10'. It concludes by reaching the end of the current memory layer, ceasing to play instead of performing}
\fontsize #2 \line {a ''wrap-around''.}
\vspace #1
  }
}
\pageBreak

% Staging
\markup {
  \column {
\fontsize #8 \line {Staging of the performance}
  }
}
\markup {
  \column {
    \vspace #8
    \center-column {
      \fill-line { 
      \general-align #Y #CENTER {\epsfile #X #80 #"scena.eps"}
      }
    }
  }
}
\pageBreak

% SEMIOGRAPHY
\markup {
  \column {
\fontsize #8 \line {Legend}
  }
}
ripetibattuta = \markup \center-align {\fontsize #8 { 𝄎 }}
acce = \markup \center-align {\rotate #15 \fontsize #2 {\italic ⟶}}
decce = \markup \left-align {\rotate #195 \fontsize #2 {\italic ⟶}}
fermatasymb = \markup \center-align {\fontsize #12 𝄐 }
caesura = \markup \center-align {\fontsize #12 𝄓 } 
noiseC = \markup \center-align {\rotate #45 \fontsize #4 {⊛} }
noiseB = \markup \center-align {\rotate #45 \fontsize #2 {⊕} } 
noiseA = \markup \center-align {\fontsize #2 {⊖} } 
flatterzungeC = \markup \center-align {\fontsize #8 {𝅬 } }
flatterzungeB = \markup \center-align {\fontsize #8 {𝅫 } }
flatterzungeA = \markup \center-align {\fontsize #8 {𝅪 } } 
harmonic = \markup \center-align {\fontsize #4 {⋄} }
pizzicatoA = \markup \center-align {\fontsize #2 {∨} }
pizzicatoAinv = \markup \center-align {\rotate #180 \fontsize #2 {∨} }
pizzicatoB = \markup \center-align {\fontsize #4 {⍱} }
keyclicks = \markup \center-align {\fontsize #1 {☓} } 
plus = \markup \center-align {\fontsize #2 {+} }
minus = \markup \center-align {\fontsize #4 {-} } 
accA = \markup \sharp
accB = \markup \semisharp
bemA = \markup \flat 
bemB = \markup \semiflat
% plot
\markup {
\column 
{
\vspace #2
\fontsize #1 \line {- The piece must be performed entirely on a continuous note indicated by the continuous line. Unless explicitly required,} 
\fontsize #1 \line {it is preferable not to break the continuous sound maintained with circular breathing.} 
\fontsize #1 \line {It is better to take a breath at the points where the continuous sound is necessarily interrupted.}
\vspace #2
%
\line {  
    {
    \vspace #1
      \score{
        \new Staff \with { instrumentName = \markup \center-align {\fontsize #2 \rounded-box \bold {Memory}} \remove "Time_signature_engraver" } 

    {
    \cadenzaOn
    
    % UN SOLO RIGO
    \stopStaff \rigo \startStaff
    \once \override Staff.Clef.color = #white
    \once \override Staff.Clef.layer = #-1
    \autoLineBreaksOff
    \override DynamicLineSpanner.staff-padding = #8
    
    s1 s1 s1 s1^\markup{sound continuum}
    }
    
    }
  }
}
\vspace # 1
%
\vspace # 2
%
\line {  
    {
    \vspace #1
      \score{
        \new Staff \with { instrumentName = \markup \center-align {\fontsize #2 \rounded-box \bold {Memory}} \remove "Time_signature_engraver" } 

    {
    \cadenzaOn
    
    % UN SOLO RIGO
    \stopStaff \rigo \startStaff
    \once \override Staff.Clef.color = #white
    \once \override Staff.Clef.layer = #-1
    \autoLineBreaksOff
    \override DynamicLineSpanner.staff-padding = #8
    
    s1
    s1^\accB
    s1^\plus^\noiseA^\pizzicatoA
    s1^\markup{example of articulations without breaking the sound continuum}
    
    }
    
    }
  }
}
%
\vspace # 2
%
\line {  
    {
    \vspace #1
      \score{
        \new Staff \with { instrumentName = \markup \center-align {\fontsize #2 \rounded-box \bold {Memory}} \remove "Time_signature_engraver" } 

    {
    \cadenzaOn
    
    % UN SOLO RIGO
    \stopStaff \rigo \startStaff
    \once \override Staff.Clef.color = #white
    \once \override Staff.Clef.layer = #-1
    \autoLineBreaksOff
    \override DynamicLineSpanner.staff-padding = #8
    
    s1
    \stopStaff \rigozero \startStaff
    s16
    {\notainvisibile [c''16^\pizzicatoA c''16_\acce c''16^\pizzicatoA] \notavisibile}
    \stopStaff \rigo \startStaff
    s1^\markup{example of articulations breaking the sound continuum}
    
    }
    
    }
  }
}
%
\vspace # 2
\line {\box \noiseA = Sound of the blow audible with a greater prevalence of the sound at a determined pitch.}
\vspace #2
\line {\box \noiseB = Sound of the blow audible with a mid prevalence of the sound at a determined pitch.}
\vspace #2
\line {\box \noiseC = Sound of the blow audible without presency of sound at a determined pitch.}
\vspace #2
\line {\box \flatterzungeC = Tongue Fluttering}
\vspace #2
\line {\box \harmonic = Overtone or Multiphonics, without specifying a determined pitch}
\vspace #2
\line {\box \pizzicatoA = Tongue or throat pizzicato, without producing an audible percussive effect}
\vspace #2
\line {\box \pizzicatoB = Tongue or throat pizzicato, producing an audible percussive effect}
\vspace #2
\line {\box \keyclicks = Key clicks, tapping the keys and producing an audible percussive effect}
\vspace #2
}
}
\pageBreak
\markup {
\column 
{
%
\line {  
    {
    \vspace #1
      \score{
        \new Staff \with { instrumentName = \markup \center-align {\fontsize #2 \rounded-box \bold {Memory}} \remove "Time_signature_engraver" } 

    {
    \cadenzaOn
    
    % UN SOLO RIGO
    \stopStaff \rigo \startStaff
    \once \override Staff.Clef.color = #white
    \once \override Staff.Clef.layer = #-1
    \autoLineBreaksOff
    \override DynamicLineSpanner.staff-padding = #8
    
    s1
    \stopStaff \rigozero \startStaff
    s16
    {\notainvisibile [c''16 c''16 c''16] \notavisibile}
    \stopStaff \rigo \startStaff
    s1^\markup{group of aperiodic base rythimc sounds}
    
    }
    
    }
  }
}
%
\vspace #2
%
\line {  
    {
    \vspace #1
      \score{
        \new Staff \with { instrumentName = \markup \center-align {\fontsize #2 \rounded-box \bold {Memory}} \remove "Time_signature_engraver" } 

    {
    \cadenzaOn
    
    % UN SOLO RIGO
    \stopStaff \rigo \startStaff
    \once \override Staff.Clef.color = #white
    \once \override Staff.Clef.layer = #-1
    \autoLineBreaksOff
    \override DynamicLineSpanner.staff-padding = #8
    
    s1
    \stopStaff \rigozero \startStaff
    s16
    {\notainvisibile [c''16 c''16_\acce c''16] \notavisibile}
    \stopStaff \rigo \startStaff
    s1^\markup{group of aperiodic base rythimc sounds in accelerando}
    
    }
    
    }
  }
}
%
\vspace #2
%
\line {  
    {
    \vspace #1
      \score{
        \new Staff \with { instrumentName = \markup \center-align {\fontsize #2 \rounded-box \bold {Memory}} \remove "Time_signature_engraver" } 

    {
    \cadenzaOn
    
    % UN SOLO RIGO
    \stopStaff \rigo \startStaff
    \once \override Staff.Clef.color = #white
    \once \override Staff.Clef.layer = #-1
    \autoLineBreaksOff
    \override DynamicLineSpanner.staff-padding = #8
    
    s1
    \stopStaff \rigozero \startStaff
    s16
    {\notainvisibile [c''16_\decce c''16 c''16] \notavisibile}
    \stopStaff \rigo \startStaff
    s1^\markup{group of aperiodic base rythimc sounds in decelerando}
    
    }
    
    }
  }
}
%
\vspace #2
\line {\box \accA = briefly produce a passage up a semitone}
\vspace #2
\line {\box \accB = Briefly produce a passage up a quarter tone}
\vspace #2
\line {\box \bemA = briefly produce a passage down a semitone}
\vspace #2
\line {\box \bemB = Briefly produce a passage down a quarter tone}
\vspace #2
\line {\box \plus or \box{\plus \plus} or \box{\plus \plus \plus} = Briefly produce a passage to an upper pitch (three possible graduations)}
\vspace #2
\line {\box \minus or \box{\minus \minus} or \box{\minus \minus \minus} = Briefly produce a passage to a lower pitch (three possible graduations)}
\vspace #2
}
}

\pageBreak


% Frequency Ranges
\markup {
  \column {
\fontsize #8 \line {Frequency Ranges}
\vspace # 2
\fontsize #2 \line {- The Frequency Ranges are the ambitus of the notes that the performers can play during the performance.}
\vspace #1
\fontsize #2 \line {- The performers can choose only 1 common range per performance.}
\vspace #1
\fontsize #2 \line {\rounded-box{H} = Highest note of the instrument that the performers can achieve, choosing a same pitch for both.}
\vspace #1
\fontsize #2 \line {\rounded-box{M} = Note in the Mid register of the instrument that the performers can achieve, choosing a same pitch for both.}
\vspace #1
\fontsize #2 \line {\rounded-box{L} = Lowest note of the instrument that the performers can achieve, choosing a same pitch for both.}
\vspace #1
\fontsize #2 \line {\rounded-box{t} = tone; \rounded-box{st} = semitone. }
\vspace #1
  }
}
% 1
\markup {
 \line { \fill-line {
\box
 \center-column{
  \vspace # 1
  \line \fontsize #4 \italic {Range 1}
  \vspace #1
    \score{
      % no time signature and instrument name
      \new Staff \with { instrumentName = \markup \center-align {\fontsize #2 \rounded-box \bold {Evoked}} \remove "Time_signature_engraver"} 
        {
          \cadenzaOn
          \once \override Staff.Clef.color = #white
          \once \override Staff.Clef.layer = #-1
          \stopStaff \rigo \startStaff
          \stangheoff
          b'4^\markup{H}\glissando s1 a'4_\markup{- 1t}
          s1
        }
    }
    \score{
      % no time signature and instrument name
      \new Staff \with { instrumentName = \markup \center-align {\fontsize #2 \rounded-box \bold {Primary}} \remove "Time_signature_engraver"} 
        {
          \cadenzaOn
          \once \override Staff.Clef.color = #white
          \once \override Staff.Clef.layer = #-1
          \stopStaff \rigo \startStaff
          \stangheoff
          b'4^\markup{H}\glissando s1 g'4_\markup{- 2t}
        }
    }
    \score{
      % no time signature and instrument name
      \new Staff \with { instrumentName = \markup \center-align {\fontsize #2 \rounded-box \bold {Echoic}} \remove "Time_signature_engraver"} 
        {
          \cadenzaOn
          \once \override Staff.Clef.color = #white
          \once \override Staff.Clef.layer = #-1
          \stopStaff \rigo \startStaff
          \stangheoff
          s4^\markup{H} a'4_\markup{- 1t}\glissando s1 g'4_\markup{- 1t}
        }
    }
  }
\box
 \center-column{
  \vspace # 1
  \line \fontsize #4 \italic {Range 2}
  \vspace #1
    \score{
      % no time signature and instrument name
      \new Staff \with { instrumentName = \markup \center-align {\fontsize #2 \rounded-box \bold {Evoked}} \remove "Time_signature_engraver"} 
        {
          \cadenzaOn
          \once \override Staff.Clef.color = #white
          \once \override Staff.Clef.layer = #-1
          \stopStaff \rigo \startStaff
          \stangheoff
          b'4^\markup{H}\glissando s1 a'4_\markup{- 1t}
          \stopStaff \rigozero \startStaff
          s1^\markup{\rounded-box OR}
          \stopStaff \rigo \startStaff
          s1^\markup{M} s4 a'4_\markup{- 1t}\glissando s1 g'4_\markup{- 1t}
        }
    }
    \score{
      % no time signature and instrument name
      \new Staff \with { instrumentName = \markup \center-align {\fontsize #2 \rounded-box \bold {Primary}} \remove "Time_signature_engraver"} 
        {
          \cadenzaOn
          \once \override Staff.Clef.color = #white
          \once \override Staff.Clef.layer = #-1
          \stopStaff \rigo \startStaff
          \stangheoff
          b'4^\markup{M}\glissando s1 g'4_\markup{- 2t}
        }
    }
    \score{
      % no time signature and instrument name
      \new Staff \with { instrumentName = \markup \center-align {\fontsize #2 \rounded-box \bold {Echoic}} \remove "Time_signature_engraver"} 
        {
          \cadenzaOn
          \once \override Staff.Clef.color = #white
          \once \override Staff.Clef.layer = #-1
          \stopStaff \rigo \startStaff
          \stangheoff
          s1^\markup{M} s4 a'4_\markup{- 1t}\glissando s1 g'4_\markup{- 1t}
          \stopStaff \rigozero \startStaff
          s1^\markup{\rounded-box OR}
          \stopStaff \rigo \startStaff
          b'4^\markup{L}\glissando s1 d''4^\markup{+ 2t}
        }
    }
  }
 }}
\vspace # 2
}
% 2
\markup {
 \line { \fill-line {
\box
 \center-column{
  \vspace # 1
  \line \fontsize #4 \italic {Range 3}
  \vspace #1
    \score{
      % no time signature and instrument name
      \new Staff \with { instrumentName = \markup \center-align {\fontsize #2 \rounded-box \bold {Evoked}} \remove "Time_signature_engraver"} 
        {
          \cadenzaOn
          \once \override Staff.Clef.color = #white
          \once \override Staff.Clef.layer = #-1
          \stopStaff \rigo \startStaff
          \stangheoff
          b'4^\markup{M}\glissando s1 g'4_\markup{- 2t}
        }
    }
    \score{
      % no time signature and instrument name
      \new Staff \with { instrumentName = \markup \center-align {\fontsize #2 \rounded-box \bold {Primary}} \remove "Time_signature_engraver"} 
        {
          \cadenzaOn
          \once \override Staff.Clef.color = #white
          \once \override Staff.Clef.layer = #-1
          \stopStaff \rigo \startStaff
          \stangheoff 
          s1^\markup{M} s4 a'4_\markup{- 1t}\glissando s1 g'4_\markup{- 1t}
          \stopStaff \rigozero \startStaff
          s1^\markup{\rounded-box OR}
          \stopStaff \rigo \startStaff
          b'4^\markup{L}\glissando s1 ces''4^\markup{+ 1st}
        }
    }
    \score{
      % no time signature and instrument name
      \new Staff \with { instrumentName = \markup \center-align {\fontsize #2 \rounded-box \bold {Echoic}} \remove "Time_signature_engraver"} 
        {
          \cadenzaOn
          \once \override Staff.Clef.color = #white
          \once \override Staff.Clef.layer = #-1
          \stopStaff \rigo \startStaff
          \stangheoff
          b'4^\markup{L}\glissando s1 d''4^\markup{+ 3t + 1st}
        }
    }
  }
\box
 \center-column{
  \vspace # 1
  \line \fontsize #4 \italic {Range 4}
  \vspace #1
    \score{
      % no time signature and instrument name
      \new Staff \with { instrumentName = \markup \center-align {\fontsize #2 \rounded-box \bold {Evoked}} \remove "Time_signature_engraver"} 
        {
          \cadenzaOn
          \once \override Staff.Clef.color = #white
          \once \override Staff.Clef.layer = #-1
          \stopStaff \rigo \startStaff
          \stangheoff
          b'4^\markup{L}\glissando s1 d''4^\markup{+ 2t}
        }
    }
    \score{
      % no time signature and instrument name
      \new Staff \with { instrumentName = \markup \center-align {\fontsize #2 \rounded-box \bold {Primary}} \remove "Time_signature_engraver"} 
        {
          \cadenzaOn
          \once \override Staff.Clef.color = #white
          \once \override Staff.Clef.layer = #-1
          \stopStaff \rigo \startStaff
          \stangheoff
          b'4^\markup{L}\glissando s1 d''4^\markup{+ 3t + 1st}
        }
    }
    \score{
      % no time signature and instrument name
      \new Staff \with { instrumentName = \markup \center-align {\fontsize #2 \rounded-box \bold {Echoic}} \remove "Time_signature_engraver"} 
        {
          \cadenzaOn
          \once \override Staff.Clef.color = #white
          \once \override Staff.Clef.layer = #-1
          \stopStaff \rigo \startStaff
          \stangheoff
          b'4^\markup{L}\glissando s1 ces''4^\markup{+ 1st}
        }
    }
  }
 }}
}
\pageBreak

% SCORE 
% white score
\new Staff \with { instrumentName = "" \remove "Time_signature_engraver" } 
    {
    \cadenzaOn
    % UN SOLO RIGO
    \stopStaff \rigo \startStaff
    \once \override Staff.Clef.color = #white
    \once \override Staff.Clef.layer = #-1
    \stopStaff \rigozero \startStaff
    s1 s1 s1 s1
    \stopStaff \rigo \startStaff
    }
    
% no time signature
\new Staff \with { instrumentName = \markup \center-align {\fontsize #2 \rounded-box \bold {Evoked}} \remove "Time_signature_engraver" } 

    {
    \cadenzaOn
    
    % UN SOLO RIGO
    \stopStaff \rigo \startStaff
    \once \override Staff.Clef.color = #white
    \once \override Staff.Clef.layer = #-1
    \autoLineBreaksOff
    \override DynamicLineSpanner.staff-padding = #8
    
    \dalnulla
    \iniziocorona
    s1_\bemB\<
    \revertdalnulla
    s1^\plus
    s1_\minus_\pizzicatoAinv\f\>
    \bar "|" \mark"" s1
    s1^\accB
    s1^\plus^\noiseA^\pizzicatoA
    \stopStaff \rigozero \startStaff
    s1
    s1^\noiseC\mf\<
    \stopStaff \rigo \startStaff
    s1
    s1^\noiseB
    \bar "|" \mark"" s1
    s1^\flatterzungeC
    s1^\noiseA
    \stopStaff \rigozero \startStaff
    s1\fff\>
    {\notainvisibile [c''16^\pizzicatoA c''16_\acce c''16^\pizzicatoA] \notavisibile}
    \stopStaff \rigo \startStaff
    s1
    s1^\noiseB^\plus^\plus\f\<
    \bar "|" \mark"" s1
    s1_\minus_\minus_\noiseA
    s1^\keyclicks
    \stopStaff \rigozero \startStaff
    s1
    {\notainvisibile [c''16^\keyclicks_\decce c''16^\pizzicatoA c''16^\pizzicatoB] \notavisibile}\ff\>
    \stopStaff \rigo \startStaff
    s1
    s1^\noiseC
    \bar "|" \mark"" s1
    s1_\bemB
    s1^\noiseA
    \stopStaff \rigozero \startStaff
    s1
    s1^\noiseC\mf\<
    \stopStaff \rigo \startStaff
    \bar "|" \mark"" s1
    s1^\flatterzungeC
    s1^\keyclicks
    s1^\keyclicks
    s1^\keyclicks^\noiseB\fff\>
    \stopStaff \rigozero \startStaff
    s1
    {\notainvisibile [c''16 c''16^\pizzicatoA_\acce c''16^\pizzicatoB] \notavisibile} 
    \stopStaff \rigo \startStaff
    s1
    s1_\minus_\noiseA\f\>
    \bar "|" \mark"" s1
    s1^\noiseC
    \stopStaff \rigozero \startStaff
    s1
    {\notainvisibile [c''16^\keyclicks c''16^\keyclicks c''16^\keyclicks c''16^\keyclicks c''16^\keyclicks] \notavisibile} 
    \stopStaff \rigo \startStaff
    s1
    \dalnulla
    s1^\plus^\plus\mf\>
    \bar "|" \mark"" s1
    s1^\accB
    s1^\plus^\noiseA
    s1_\minus_\minus_\pizzicatoAinv
    s1^\noiseA
    s1^\plus
    s1^\accA\!
    \revertdalnulla
    s1^\markup \center-align {\fontsize #1 {}} 
    \finecorona
    \bar "|" \mark 
    \markup {
      \column {
        {
        \fontsize # 0.1 \line {60'' [C]}
        \fontsize # 0.1 \line {40'' [B]}
        \fontsize # 0.1 \line {20'' [A]}
        }
      }
    }
    \break
    }

 % no time signature
\new Staff \with { instrumentName = \markup \center-align {\fontsize #2 \rounded-box \bold {Primary}} \remove "Time_signature_engraver" } 

    {
    \cadenzaOn
    
    % UN SOLO RIGO
    \stopStaff \rigo \startStaff
    \once \override Staff.Clef.color = #white
    \once \override Staff.Clef.layer = #-1
    \autoLineBreaksOff
    \override DynamicLineSpanner.staff-padding = #8
     
    \iniziocorona
    \dalnulla
    s1_\bemB\<
    \revertdalnulla
    s1^\noiseA
    s1_\minus_\pizzicatoAinv\mf\>
    s1^\accB
    s1^\plus^\noiseA
    \stopStaff \rigozero \startStaff
    s1
    s1^\noiseC\p\<
    \stopStaff \rigo \startStaff
    \bar "|" \mark"" s1
    s1^\flatterzungeC
    s1^\noiseB\f\>
    \stopStaff \rigozero \startStaff
    s1
    {\notainvisibile [c''16^\pizzicatoA c''16_\acce c''16] \notavisibile} 
    \stopStaff \rigo \startStaff
    \bar "|" \mark"" s1
    s1^\plus^\noiseA\mf\<
    s1^\keyclicks
    \stopStaff \rigozero \startStaff
    s1
    {\notainvisibile [c''16^\keyclicks_\decce c''16 c''16^\pizzicatoB] \notavisibile} 
    \stopStaff \rigo \startStaff
    s1_\bemB\f\>
    \bar "|" \mark"" s1
    s1_\minus
    \stopStaff \rigozero \startStaff
    s1
    s1^\noiseC\p\<
    \stopStaff \rigo \startStaff
    \bar "|" \mark"" s1
    s1^\flatterzungeC
    s1^\noiseB\mf\<
    \stopStaff \rigozero \startStaff
    s1
    {\notainvisibile [c''16^\pizzicatoA c''16^\pizzicatoB_\acce c''16^\pizzicatoA] \notavisibile} 
    \stopStaff \rigo \startStaff
    \bar "|" \mark"" s1
    s1_\minus_\noiseA\f\>
    s1^\noiseC
    \stopStaff \rigozero \startStaff
    s1
    {\notainvisibile [c''16^\keyclicks_\decce c''16^\keyclicks c''16^\keyclicks] \notavisibile} 
    \stopStaff \rigo \startStaff
    \bar "|" \mark"" s1
    \dalnulla
    s1^\accB\p\>
    s1^\plus^\noiseA
    s1_\minus_\pizzicatoAinv
    s1^\noiseA
    s1_\bemB\!
    \revertdalnulla
    s1^\markup \center-align {\fontsize #1 {}} 
    \finecorona
    \bar "|" \mark 
    \markup {
      \column {
        {
        \fontsize # 0.1 \line {60'' [C]}
        \fontsize # 0.1 \line {40'' [B]}
        \fontsize # 0.1 \line {20'' [A]}
        }
      }
    }
    \break
    }

 % no time signature
\new Staff \with { instrumentName = \markup \center-align {\fontsize #2 \rounded-box \bold {Echoic}} \remove "Time_signature_engraver" } 

    {
    \cadenzaOn
    
    % UN SOLO RIGO
    \stopStaff \rigo \startStaff
    \once \override Staff.Clef.color = #white
    \once \override Staff.Clef.layer = #-1
    \autoLineBreaksOff
    \override DynamicLineSpanner.staff-padding = #8

    \iniziocorona
    \dalnulla
    s1^\noiseA\<
    \revertdalnulla
    s1_\bemB_\noiseB\p\>
    s1^\noiseA
    s1^\markup \center-align {\fontsize #1 {}} 
    s1^\accB\pp\>
    s1^\markup \center-align {\fontsize #1 {}} 
    \bar "|" \mark"" s1
    s1^\flatterzungeC
    s1^\noiseB\ppp\<
    \stopStaff \rigozero \startStaff
    s1
    {\notainvisibile [c''16 c''16] \notavisibile} 
    \stopStaff \rigo \startStaff
    s1
    s1^\noiseC
    s1^\accB^\noiseA\p\>
    \bar "|" \mark"" 
    \stopStaff \rigozero \startStaff
    s1
    {\notainvisibile [c''16 c''16] \notavisibile} 
    \stopStaff \rigo \startStaff
    s1
    \stopStaff \rigozero \startStaff
    s1
    {\notainvisibile [c''16_\acce c''16] \notavisibile}\ppp\<
    \stopStaff \rigo \startStaff
    s1
    s1_\bemB
    s1^\noiseC
    s1^\markup \center-align {\fontsize #1 {}} 
    \bar "|" \mark"" s1
    s1^\flatterzungeC\pp\<
    \stopStaff \rigozero \startStaff
    s1
    {\notainvisibile [c''16 c''16] \notavisibile} 
    \stopStaff \rigo \startStaff
    s1
    \stopStaff \rigozero \startStaff
    s1
    {\notainvisibile [c''16_\decce c''16] \notavisibile}\p\>
    \stopStaff \rigo \startStaff
    \bar "|" \mark"" s1
    s1^\noiseB
    \stopStaff \rigozero \startStaff
    s1
    {\notainvisibile [c''16 c''16] \notavisibile}\pp\>
    \stopStaff \rigo \startStaff
    \bar "|" \mark"" s1
    s1^\accB
    \dalnulla
    s1_\bemB\ppp\>
    s1^\markup \center-align {\fontsize #1 {}} 
    s1^\noiseA\!
    \revertdalnulla
    s1^\markup \center-align {\fontsize #1 {}} 
    \finecorona
    \bar "|" \mark 
    \markup {
      \column {
        {
        \fontsize # 0.1 \line {60'' [C]}
        \fontsize # 0.1 \line {40'' [B]}
        \fontsize # 0.1 \line {20'' [A]}
        }
      }
    }
    \break
    }

% white score
\new Staff \with { instrumentName = "" \remove "Time_signature_engraver" } 
    {
    \cadenzaOn
    % UN SOLO RIGO
    \stopStaff \rigo \startStaff
    \once \override Staff.Clef.color = #white
    \once \override Staff.Clef.layer = #-1
    \stopStaff \rigozero \startStaff
    s1 s1 s1 s1
    \stopStaff \rigo \startStaff
    }

\include "mytag.ly"