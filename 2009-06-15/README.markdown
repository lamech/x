a little syncphasor exercise
---

I wanted to go back and deal with something that was bugging me about the
previous two pieces: instead of changing the length and speed of the phasor'd
portion of the original waveform, what if I want to keep those the same but
"stutter" the phasor; not always allowing it to finish a complete cycle, but
instead interrupting it and sending it back to the beginning? I discovered the
[syncphasor](http://www.csounds.com/manual/html/syncphasor.html) opcode [lets me do that](http://github.com/lamech/x/blob/master/2009-06-15/syncphasor.csd).

Using [mpulse](http://www.csounds.com/manual/html/mpulse.html) and
[random](http://www.csounds.com/manual/html/random.html) to decide how long to
go before "interrupting" the phasor gives a nice stuttery feeling. I can imagine using this technique to control all kinds of things for Tudor-esque effect.

*Side note:* I haven't generated an mp3 for this because I don't feel it's a finished
"piece"; it's more of an exercise to hear if I've controlled something the way
I want to.


- - -

Copyright (c) 2009 Dan Friedman

[Main](http://x.boywithmachine.net)|[RSS](http://feeds.delicious.com/v2/rss/lamech/x)|[Twitter](http://twitter.com/lamech)|[Elsewhere](http://boywithmachine.net/music)
