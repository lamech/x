<CsoundSynthesizer>
<CsOptions>
; realtime audio
;-odac -iadc
; comment that out, and uncomment this for non-realtime:
; -o test.wav -W
</CsOptions>
; ==============================================
<CsInstruments>

sr          =    44100
kr          =    4410
ksmps       =    10
;nchnls     =    2

seed 0

instr 1

ifmod init 1  ; modulation ftable
ifcar init 1  ; carrier ftable

icf init 440
iphasfrq init 5

istart init 0
islicesize init ftlen(ifmod)/4

knextpulse random .1, .5
ampulse mpulse ampdb(70), knextpulse

aphase, adummy syncphasor iphasfrq, ampulse
ascaled = aphase * islicesize
afrqcoeff table int(ascaled + istart), ifmod, 0, 0, 1

aout oscil ampdb(70), icf * afrqcoeff, ifcar

out aout

endin

</CsInstruments>
; ==============================================
<CsScore>

; a sine wave table.
f 1 0 16384 10 1

i 1 0 10
e

</CsScore>
</CsoundSynthesizer>

