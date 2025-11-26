// *********
// unoTres
// *********

// preder
s.boot;

// Buffers de sonido
(
b = Buffer.read(s, "/home/hvillase/cavlp-250/ejemplos/sonido/sonidosEditados/01monedas.wav");
c = Buffer.read(s, "/home/hvillase/cavlp-250/ejemplos/sonido/sonidosEditados/02monedas2.wav");
d = Buffer.read(s, "/home/hvillase/cavlp-250/ejemplos/sonido/sonidosEditados/03envoltura.wav");
e = Buffer.read(s, "/home/hvillase/cavlp-250/ejemplos/sonido/sonidosEditados/04calculadora.wav");
f = Buffer.read(s, "/home/hvillase/cavlp-250/ejemplos/sonido/sonidosEditados/05cierre.wav");
g = Buffer.read(s, "/home/hvillase/cavlp-250/ejemplos/sonido/sonidosEditados/06percusion.wav");
h = Buffer.read(s, "/home/hvillase/cavlp-250/ejemplos/sonido/sonidosEditados/07claps.wav");
i = Buffer.read(s, "/home/hvillase/cavlp-250/ejemplos/sonido/sonidosEditados/08kling.wav");
j = Buffer.read(s, "/home/hvillase/cavlp-250/ejemplos/sonido/sonidosEditados/09tijeras.wav");
k = Buffer.read(s, "/home/hvillase/cavlp-250/ejemplos/sonido/sonidosEditados/10klak.wav");
);

// sintetizadores

(
(
SynthDef(\sonido1, {|rate=1, sp=0, pan=0, amp=1, at=0.001, sus=1, rel=0.1|
	var sonido, hpf, env, paneo;
	sonido=PlayBuf.ar(b.numChannels, b.bufnum, rate, 1, sp * b.numFrames, 0);
	hpf=HPF.ar(sonido, 20);
	paneo=Pan2.ar(hpf, pan, amp);
	env=EnvGen.ar(Env([0,1,1,0], [at, sus * b.duration, rel]), doneAction:2);
	Out.ar(0, paneo * env)
}).add;
);

(
SynthDef(\sonido2, {|rate=1, sp=0, pan=0, amp=1, at=0.001, sus=1, rel=0.1|
	var sonido, hpf, env, paneo;
	sonido=PlayBuf.ar(c.numChannels, c.bufnum, rate, 1, sp * c.numFrames, 0);
	hpf=HPF.ar(sonido, 20);
	paneo=Pan2.ar(hpf, pan, amp);
	env=EnvGen.ar(Env([0,1,1,0], [at, sus * c.duration, rel]), doneAction:2);
	Out.ar(0, paneo * env)
}).add;
);

(
SynthDef(\sonido3, {|rate=1, sp=0, pan=0, amp=1, at=0.001, sus=1, rel=0.1|
	var sonido, hpf, env, paneo;
	sonido=PlayBuf.ar(d.numChannels, d.bufnum, rate, 1, sp * d.numFrames, 0);
	hpf=HPF.ar(sonido, 20);
	paneo=Pan2.ar(hpf, pan, amp);
	env=EnvGen.ar(Env([0,1,1,0], [at, sus * d.duration, rel]), doneAction:2);
	Out.ar(0, paneo * env)
}).add;
);

(
SynthDef(\sonido6, {|rate=1, sp=0, pan=0, amp=1, at=0.001, sus=1, rel=0.1|
	var sonido, hpf, env, paneo;
	sonido=PlayBuf.ar(g.numChannels, g.bufnum, rate, 1, sp * g.numFrames, 0);
	hpf=HPF.ar(sonido, 20);
	paneo=Pan2.ar(hpf, pan, amp);
	env=EnvGen.ar(Env([0,1,1,0], [at, sus * d.duration, rel]), doneAction:2);
	Out.ar(0, paneo * env)
}).add;
);

// sinte de sintesis
(
SynthDef(\tri, {|freq=440, pan=0, at=0.01, sus=0.01 rel=0.1, amp=0.5, out=0|
	var sen, paneo, env;
	sen= LFTri.ar(freq, 0, amp);
	paneo= Pan2.ar(sen, pan);
	env=EnvGen.kr(Env.new([0, 1, 0.9, 0], [at, sus, rel]), doneAction: 2);
	Out.ar(out, paneo * env)
}).add
);
);

// Secuencias
(
(
~seq1=Pdef(\grabacion1, Pbind(\instrument, \sonido1,
	\amp, 0.25,
	\dur, 0.25,
	\sp, 0.2,
	\rate, Pseq([2, 2, 2, 1.9], inf),
	\at, 0.01,
	\sus, 0.09,
	\rel, 0.01
))
);

(
~seq2=Pdef(\grabacion2, Pbind(\instrument, \sonido2,
	\amp,1,
	\dur, Pseq([0.125], inf),
	\sp, Pseq([0.3, 0.6, 0.7, Pseq([0, 0.1, 0.91].mirror, 2)].mirror, inf),
	\rate, Pseq([0.125], inf),
	\sus, 0.009,
	\rel, 0.009
))
);

(
~seq3=Pdef(\grabacion3, Pbind(\instrument, \sonido3,
	\amp,0.1,
	\dur, Pseq([0.125, 0.5], inf),
	\sp, Pseq([0.3, 0.6, 0.7, Pseq([0, 0.1, 0.91].mirror, 2)].mirror, inf),
	\rate, Pseq([0.125, 0.5], inf),
	\sus, 0.9,
	\rel, 0.009
))
);

(
~seq6=Pdef(\grabacion6, Pbind(\instrument, \sonido6,
	\amp, 0.2,
	\dur, 0.5,
	\sp, Pseq([0, 0.45], inf),
	\rate, Pseq([0.5, 1, 1.1, 1], inf),
	\at, 0.01,
	\sus, 0.09,
	\rel, 0.01
))
);

(
~seq7=Pdef(\seq4, Pbind(\instrument, \tri,
	\amp, 0.5,
	\dur, Pseq([0.5],inf),
	\freq, Pseq([100, 100, 100, 100],inf)))
);
);

// control

//(
~seq1.play.quant(4);
~seq2.play.quant(4);
~seq3.play.quant(4);
~seq6.play.quant(4);
~seq7.play.quant(4);
);

(
~seq1.stop;
~seq2.stop;
~seq3.stop;
~seq6.stop;
~seq7.stop;
);
























