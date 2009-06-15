<CsoundSynthesizer>
;<CsOptions>
;</CsOptions>
; ==============================================
<CsInstruments>

sr    =    44100
kr    =    44100
ksmps    =    1
;nchnls    =    2
seed 0

instr 1

ifrqfn = p4
kcfamp randh 10000, 1, 2
imaxphasfrq = 10
kphasfrq randh imaxphasfrq, 1, 2
kstart randh ftlen(ifrqfn), 1, 2
kslicesize randh ftlen(ifrqfn)/2, 1, 2
iwav = p5

aphase phasor abs(kphasfrq)
ascaled = aphase * kslicesize
afrqcoeff table int(ascaled + kstart), ifrqfn, 0, 0, 1

aosc oscil ampdb(70), afrqcoeff * kcfamp, iwav

afilt resony aosc, 8, 100, 10, 1
out afilt

endin

</CsInstruments>
; ==============================================
<CsScore>

f 1 0 16384 10 1
f 2 0 16384 9 1 1 0 ; inverse cosine
f 3 0 64 5 1 2 120 60 1 1 0.001 1 ; "percussive" envelope shape
f 4 0 256 7 0 128 1 0 -1 128 0 ; sawtooth

i 1 0 30 1 4
i 1 30 30 4 1

</CsScore>
</CsoundSynthesizer>
