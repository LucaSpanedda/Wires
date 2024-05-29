% PARAMETRI GLOBALI
#(set-default-paper-size "a3landscape")
\include "date.ly"
% #(set-global-staff-size 20)

% TITOLO
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

% PAGINA A CAPO
\pageBreak

% TESTO
\markup {
  \column {
\fontsize #8 \line {Performance Notes}
\vspace #2
\fontsize #2 \line {- The composition is built on 3 layers of memory: primary, evoked, echoic.}
\vspace #1
\fontsize #2 \line {- The duration of each memory (A) lasts 20'', this can vary according to the indications provided below regarding memory pointers.}
\vspace #1
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
\fontsize #2 \line {- Memory pointers contain (A), (B), (C) time signature markers. Within a time frame ranging from 1' to 2', one of the two performers, upon reaching a pointer with a marker,}
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

% PAGINA A CAPO
\pageBreak

% SEMIOGRAPHY
\markup {
  \column {
\fontsize #8 \line {Staging of the performance}
  }
}
% TITOLO
\markup {
  \column {
    \vspace #8
    \center-column {
      \fill-line { 
      \general-align #Y #CENTER {\epsfile #X #40 #"scena.eps"}
      }
    }
  }
}

% PAGINA A CAPO
\pageBreak

% SEMIOGRAPHY
\markup {
  \column {
\fontsize #8 \line {Legend}
  }
}
% SEMIOGRAPHY VARIABLES
% note^variables-name or Note_variables-name

% 
% EPS
%
%aperiodicA = \markup{\rotate #180 {\epsfile #X #6 #"prova.eps"}}

% GENERIC
ripetibattuta = \markup \center-align {\fontsize #8 { 𝄎 }}
continua = \markup \center-align {\fontsize #4 {\italic continua → }}
fermatasymb = \markup \center-align {\fontsize #12 𝄐 }
caesura = \markup \center-align {\fontsize #12 𝄓 } 
noiseA = \markup \center-align {\fontsize #8 {⌖} }
noiseB = \markup \center-align {\fontsize #2 {∅} } 
noiseC = \markup \center-align {\fontsize #2 {〇} } 
flatterzungeC = \markup \center-align {\fontsize #8 {𝅬 } }
flatterzungeB = \markup \center-align {\fontsize #8 {𝅫 } }
flatterzungeA = \markup \center-align {\fontsize #8 {𝅪 } } 

respirarect = \markup \center-align {\fontsize #2 {⊗} }
aspirarect = \markup \center-align {\fontsize #2 {◪} }
aspirarest = \markup \center-align {\fontsize #2 {⧄} }
espirarect = \markup \center-align {\rotate #135 \fontsize #4 {◧} }
espirarest = \markup \center-align {\rotate #45 \fontsize #1 {⊟} }

gutturale = \markup \center-align {\fontsize #4 {◉} } 
growl = \markup \center-align {GRWL}
scream = \markup \center-align {SCRM}
letteraa = \markup \center-align {\fontsize #6 \circle {A}} 
ha = \markup \center-align {\fontsize #1 \circle {HA}}
tosse = \markup \center-align {\fontsize #2 {⋫} }
pianto = \markup \center-align {\fontsize #2 {⍋} }
risata = \markup \center-align {\fontsize #2 {ℏ} } 
urlo = \markup \center-align {\fontsize #2 {Д} }
orgasmo = \markup \center-align {\fontsize #2 {ḿ} }
morph = \markup \center-align {morphing}

% WIND
soffio = \markup \center-align {\fontsize #2 {∇} }
highestn = \markup \center-align {\fontsize #8 {▴} }
lowestn = \markup \center-align {\fontsize #8 {▾} }

% DEFINIZIONE DELLE VARIABILI DA RICHIAMARE
% (i markup che richiami sopra le note riguardanti la semiografia)
aspirarect = \markup \center-align {\fontsize #2 {◪} }
aspirarest = \markup \center-align {\fontsize #2 {⧄} }
espirarect = \markup \center-align {\rotate #135 \fontsize #2 {◧} }
espirarest = \markup \center-align {\rotate #45 \fontsize #2 {⊟} }
espirarest = \markup \center-align {\rotate #45 \fontsize #2 {⊟} }
boccachiusa = \markup \center-align {\fontsize #8 {⌖} }
boccasemiaperta = \markup \center-align {\fontsize #2 {∅} } 
boccaaperta = \markup \center-align {\fontsize #2 {〇} } 
gutturale = \markup \center-align {\fontsize #4 {◉} } 
growl = \markup \center-align {GRWL}
scream = \markup \center-align {SCRM}
letteraa = \markup \center-align {\fontsize #6 \circle {A}} 
ha = \markup \center-align {\fontsize #1 \circle {HA}}
tosse = \markup \center-align {\fontsize #2 {⋫} }
pianto = \markup \center-align {\fontsize #2 {⍋} }
risata = \markup \center-align {\fontsize #2 {ⓗ} }
morph = \markup \center-align {morphing}

freeze = \markup \center-align \box {\fontsize #4 \line {☞⇥}}
trigs = \markup \center-align \box {\fontsize #4 \line {☞⇆}}
trigstop = \markup \center-align \box {\fontsize #4 \line {☞x}}
scenen = \markup \center-align {\fontsize #1 \box {sceneN}} 
scenezero = \markup \center-align {\fontsize #1 \box {scene0}} 
sceneuno = \markup \center-align {\fontsize #1 \box {scene1}}
scenedue = \markup \center-align {\fontsize #1 \box {scene2}}
scenedueb = \markup \center-align {\fontsize #1 \box {scene2b}}
scenetre = \markup \center-align {\fontsize #1 \box {scene3}}
scenequattro = \markup \center-align {\fontsize #1 \box {scene4}} 
scenecinque = \markup \center-align {\fontsize #1 \box {scene5}}
scenesei = \markup \center-align {\fontsize #1 \box {scene6}}
scenesette = \markup \center-align {\fontsize #1 \box {scene7}}
sceneotto = \markup \center-align {\fontsize #1 \box {scene8}} 
scenenove = \markup \center-align {\fontsize #1 \box {scene9}}
scenedieci = \markup \center-align {\fontsize #1 \box {scene10}}
sceneundici = \markup \center-align {\fontsize #1 \box {scene11}}
scenedodici = \markup \center-align {\fontsize #1 \box {scene12}}
scenedodicib = \markup \center-align {\fontsize #1 \box {scene12b}}


% SEMIOGRAFIA

% ---- voce
\markup {
\column 
{
\vspace #2
\line {\noiseA - prova}
\vspace #2
\line {\noiseB - prova}
\vspace #2
\line {\noiseC - prova}
\vspace #2
\line {\flatterzungeA - prova}
\vspace #2
\line {\flatterzungeB - prova}
\vspace #2
\line {\flatterzungeC - prova}
\vspace #2
}
}

% PAGINA A CAPO
\pageBreak


glissandoSkipOn = {
  \override NoteColumn.glissando-skip = ##t
  \hide NoteHead
  \override NoteHead.no-ledgers = ##t
}


stemOff = \hide Staff.Stem 
stemOn  = \undo \stemOff
rigo = \override Staff.StaffSymbol.line-count = #1
pentagramma = \revert Staff.StaffSymbol.line-count
iniziocorona = \set Score.repeatCommands = #'((volta #f) (volta "") end-repeat)
finecorona = \set Score.repeatCommands = #'((volta #f))
notainvisibile = \override Voice.NoteHead.color = #white
notavisibile = \override Voice.NoteHead.color = #black
stangheoff = \stemOff 
stangheon = \stemOn


\include "mytag.ly"