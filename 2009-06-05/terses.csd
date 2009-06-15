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
icfamp exprand 10000 ; was p5
imaxphasfrq = 25
iphasfrq unirand imaxphasfrq
istart unirand ftlen(ifrqfn)
islicesize unirand ftlen(ifrqfn)
iwav unirand 4
iwav = int(iwav) + 1

print ifrqfn, icfamp, imaxphasfrq, iphasfrq, istart, islicesize, iwav

kslicejit jitter (ftlen(ifrqfn)/10), 1, 100

aphase phasor iphasfrq
ascaled = aphase * islicesize
afrqcoeff table int(ascaled + istart + kslicejit), ifrqfn, 0, 0, 1

aosc oscil ampdb(70), afrqcoeff * icfamp, iwav
out aosc

endin

</CsInstruments>
; ==============================================
<CsScore>

f 1 0 16384 10 1
f 2 0 16384 9 1 1 0 ; inverse cosine
f 3 0 64 5 1 2 120 60 1 1 0.001 1 ; "percussive" envelope shape
f 4 0 256 7 0 128 1 0 -1 128 0 ; sawtooth

i 1 0 60 2 400
i 1 0 60 3 1000

</CsScore>
</CsoundSynthesizer>
