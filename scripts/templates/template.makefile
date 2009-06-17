# Default piece name is "PIECE"
piece=PIECE

# By default, work from .csd; but this can be changed to .orc
source=csd

# Sometimes I work on my mac; sometimes on Linux:
uname=`uname`
player=aplay
ifeq (${uname}, 'Linux')
    player=aplay
else ifeq (${uname}, 'Darwin')
    player=qtplay
endif

.PHONY: cycle clean csd orc wavfromorc wavfromsco

cycle:
	while [ 1 ] ; do \
		make ${source}; \
		sleep 2; \
	done

orc: clean .wavfromorc play

csd: clean .wavfromcsd play

.wavfromorc:
	INCDIR=../INCDIR csound -d -W -o ${piece}.wav ${piece}.orc ${piece}.sco

.wavfromcsd:
	INCDIR=../INCDIR csound -d -W -o ${piece}.wav ${piece}.csd

clean:
	- rm ${piece}.wav

play:
	${player} ${piece}.wav
