<CsoundSynthesizer>
;<CsOptions>
;</CsOptions>
; ==============================================
<CsInstruments>

sr    =    44100
kr    =    44100
ksmps    =    1
;nchnls    =    2

instr 1

aosc oscil ampdb(70), 440, 1
out aosc

endin

</CsInstruments>
; ==============================================
<CsScore>

f 1 0 16384 10 1 ; sine wave

i 1 0 1 ; play for 1 second

</CsScore>
</CsoundSynthesizer>
