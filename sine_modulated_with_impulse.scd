





Ndef(\t, {


	var freq = Impulse.kr(LFNoise0.kr(3.2).range(0.01,3000.0)).range(110,880);
	var f1 = LFSaw.kr(freq*0.25).range(0.5,1.5);
	var index = SinOsc.kr(0.01,pi).range(0.1,80.0);
	var index2 = SinOsc.kr(0.02,-2pi).range(0.1,50.0);
	var sig = SinOsc.ar(freq * (f1 * index), -pi, 0.25);
	var sig2 = SinOsc.ar(freq * (f1 * index2), pi, 0.25);
	[sig,sig2];

}).play;