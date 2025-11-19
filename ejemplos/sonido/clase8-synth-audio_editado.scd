// Clase 8 CAVLP 25O
// SynthDef, pattern y Tocar con ProxySpace

// Prendemos SC y sus recursos gráficos

s.boot;
s.meter;
s.scope;
s.freqscope;
s.quit;

// SynthDefcon audio
// Utiliza Buffer

// Cargar sonido en Buffer, arrastra sonido después de la coma
b = Buffer.read(s, );
c = Buffer.read(s, );
d = Buffer.read(s, );
e = Buffer.read(s, );
f = Buffer.read(s, );
g = Buffer.read(s, );
h = Buffer.read(s, );
i = Buffer.read(s, );
j = Buffer.read(s, );
k = Buffer.read(s, );

// Sintetizadores ESTEREO
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
SynthDef(\sonido4, {|rate=1, sp=0, pan=0, amp=1, at=0.001, sus=1, rel=0.1|
	var sonido, hpf, env, paneo;
	sonido=PlayBuf.ar(e.numChannels, b.bufnum, rate, 1, sp * b.numFrames, 0);
	hpf=HPF.ar(sonido, 20);
	paneo=Pan2.ar(hpf, pan, amp);
	env=EnvGen.ar(Env([0,1,1,0], [at, sus * b.duration, rel]), doneAction:2);
	Out.ar(0, paneo * env)
}).add;
);

(
SynthDef(\sonido5, {|rate=1, sp=0, pan=0, amp=1, at=0.001, sus=1, rel=0.1|
	var sonido, hpf, env, paneo;
	sonido=PlayBuf.ar(f.numChannels, c.bufnum, rate, 1, sp * c.numFrames, 0);
	hpf=HPF.ar(sonido, 20);
	paneo=Pan2.ar(hpf, pan, amp);
	env=EnvGen.ar(Env([0,1,1,0], [at, sus * c.duration, rel]), doneAction:2);
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

(
SynthDef(\sonido7, {|rate=1, sp=0, pan=0, amp=1, at=0.001, sus=1, rel=0.1|
	var sonido, hpf, env, paneo;
	sonido=PlayBuf.ar(h.numChannels, h.bufnum, rate, 1, sp * h.numFrames, 0);
	hpf=HPF.ar(sonido, 20);
	paneo=Pan2.ar(hpf, pan, amp);
	env=EnvGen.ar(Env([0,1,1,0], [at, sus * h.duration, rel]), doneAction:2);
	Out.ar(0, paneo * env)
}).add;
);

(
SynthDef(\sonido8, {|rate=1, sp=0, pan=0, amp=1, at=0.001, sus=1, rel=0.1|
	var sonido, hpf, env, paneo;
	sonido=PlayBuf.ar(i.numChannels, i.bufnum, rate, 1, sp * i.numFrames, 0);
	hpf=HPF.ar(sonido, 20);
	paneo=Pan2.ar(hpf, pan, amp);
	env=EnvGen.ar(Env([0,1,1,0], [at, sus * i.duration, rel]), doneAction:2);
	Out.ar(0, paneo * env)
}).add;
);

(
SynthDef(\sonido9, {|rate=1, sp=0, pan=0, amp=1, at=0.001, sus=1, rel=0.1|
	var sonido, hpf, env, paneo;
	sonido=PlayBuf.ar(j.numChannels, j.bufnum, rate, 1, sp * j.numFrames, 0);
	hpf=HPF.ar(sonido, 20);
	paneo=Pan2.ar(hpf, pan, amp);
	env=EnvGen.ar(Env([0,1,1,0], [at, sus * j.duration, rel]), doneAction:2);
	Out.ar(0, paneo * env)
}).add;
);

(
SynthDef(\sonido10, {|rate=1, sp=0, pan=0, amp=1, at=0.001, sus=1, rel=0.1|
	var sonido, hpf, env, paneo;
	sonido=PlayBuf.ar(k.numChannels, k.bufnum, rate, 1, sp * k.numFrames, 0);
	hpf=HPF.ar(sonido, 20);
	paneo=Pan2.ar(hpf, pan, amp);
	env=EnvGen.ar(Env([0,1,1,0], [at, sus * k.duration, rel]), doneAction:2);
	Out.ar(0, paneo * env)
}).add;
);

// Llamado de synths de audio
Synth(\sonido1, [\rate, 1, \amp, 1]);
Synth(\sonido2, [\amp, 0.5]);
Synth(\sonido3, [\amp, 0.5]);

// Secuencias

(
~seq1=Pdef(\grabacion1, Pbind(\instrument, \sonido1,
	\amp, 0.1,
	\dur, Pseq([2], inf),
	\sp, Pseq([0.5], inf),
	\rate, Pseq([0.5, 0.2, 0.1].mirror, inf),
	\sus, 0.01
))
);

(
~seq2=Pdef(\grabacion2, Pbind(\instrument, \sonido2,
	\amp,0.1,
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
	\dur, Pseq([0.125], inf),
	\sp, Pseq([0.3, 0.6, 0.7, Pseq([0, 0.1, 0.91].mirror, 2)].mirror, inf),
	\rate, Pseq([0.125, 0.5], inf),
	\sus, 0.009,
	\rel, 0.009
))
);

~seq1.play.quant(4);
~seq1.stop;

~seq2.play.quant(4)
~seq2.stop;

~seq3.play.quant(4)
~seq3.stop;

~seq4.play.quant(4);
~seq4.stop;

~seq5.play.quant(4)
~seq5.stop;

~seq6.play.quant(4)
~seq6.stop;

~seq7.play.quant(4);
~seq7.stop;

~seq8.play.quant(4)
~seq8.stop;

~seq9.play.quant(4)
~seq9.stop;

~seq10.play.quant(4);
~seq10.stop;

























