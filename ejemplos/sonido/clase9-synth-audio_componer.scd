// Clase 9 CAVLP 25O
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
)

// Sintetizadores ESTEREO
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
SynthDef(\sonido4, {|rate=1, sp=0, pan=0, amp=1, at=0.001, sus=1, rel=0.1|
	var sonido, hpf, env, paneo;
	sonido=PlayBuf.ar(e.numChannels, e.bufnum, rate, 1, sp * e.numFrames, 0);
	hpf=HPF.ar(sonido, 20);
	paneo=Pan2.ar(hpf, pan, amp);
	env=EnvGen.ar(Env([0,1,1,0], [at, sus * e.duration, rel]), doneAction:2);
	Out.ar(0, paneo * env)
}).add;
);

(
SynthDef(\sonido5, {|rate=1, sp=0, pan=0, amp=1, at=0.001, sus=1, rel=0.1|
	var sonido, hpf, env, paneo;
	sonido=PlayBuf.ar(f.numChannels, f.bufnum, rate, 1, sp * f.numFrames, 0);
	hpf=HPF.ar(sonido, 20);
	paneo=Pan2.ar(hpf, pan, amp);
	env=EnvGen.ar(Env([0,1,1,0], [at, sus * f.duration, rel]), doneAction:2);
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
)
// Llamado de synths de audio
Synth(\sonido1, [\rate, 1, \amp, 1]);
Synth(\sonido2, [\amp, 1]);
Synth(\sonido3, [\amp, 1]);
Synth(\sonido4, [\amp, 1]);
Synth(\sonido5, [\rate, 0.25, \amp, 1]);
Synth(\sonido6, [\amp, 1]);
Synth(\sonido7, [\amp, 1]);
Synth(\sonido8, [\amp, 1]);
Synth(\sonido9, [\amp, 1]);
Synth(\sonido10, [\amp, 1]);

// Secuencias

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
~seq4=Pdef(\grabacion4, Pbind(\instrument, \sonido4,
	\amp,0.3,
	\dur, Pseq([0.125], inf),
	\sp, Pseq([0.3, 0.6, 0.7, Pseq([0, 0.1, 0.91].mirror, 2)].mirror, inf),
	\rate, Pseq([1,2,3,1], inf),
	\sus, 0.9,
	\rel, 0.009
))
);

(
~seq5=Pdef(\grabacion5, Pbind(\instrument, \sonido5,
	\amp, 0.1,
	\dur, 0.5,
	\sp, Pseq([0, 0.5, 0.7, 0.8], inf),
	\rate, Pseq([1, 0.5], inf),
	\at, 0.01,
	\sus, 0.2,
	\rel, 0.01
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
~seq7=Pdef(\grabacion7, Pbind(\instrument, \sonido7,
	\amp, 0.2,
	\dur, 0.25,
	\sp, Pseq([0, 0.2, 0.7, 0.8, 0.5, 0.4].mirror, inf),
	\rate, Pseq([0.5, 0.5, 0.7, 0.9], inf),
	\at, 0.01,
	\sus, 0.2,
	\rel, 0.01
))
);

(
~seq8=Pdef(\grabacion8, Pbind(\instrument, \sonido8,
	\amp, 0.2,
	\dur, 0.25,
	\sp, Pseq([0, 0.2, 0.7, 0.8, 0.5, 0.4].mirror, inf),
	\rate, Pseq([0.5, 0.5, 0.7, 0.9, 1, 1.5].pyramid, inf),
	\at, 0.01,
	\sus, 0.2,
	\rel, 0.01
))
);

(
~seq9=Pdef(\grabacion9, Pbind(\instrument, \sonido9,
	\amp, 0.4,
	\dur, 0.25,
	\sp, Pseq([0, 0.2, 0.7, 0.8, 0.5, 0.4].mirror, inf),
	\rate, Pseq([0.5, 0.5, 0.7, 0.9, 1, 1.5].pyramid, inf),
	\at, 0.01,
	\sus, 0.3,
	\rel, 0.01
))
);

(
~seq10=Pdef(\grabacion10, Pbind(\instrument, \sonido10,
	\amp, 0.4,
	\dur, 0.5,
	\sp, Pseq([0, 0.2, 0.7, 0.8, 0.5, 0.4].mirror, inf),
	\rate, Pseq([0.5, 0.5, 0.7, 0.9, 1, 1.5].pyramid, inf),
	\at, 0.01,
	\sus, 0.3,
	\rel, 0.01
))
);

~seq1.play.quant(4); //
~seq1.stop;

~seq2.play.quant(4); //
~seq2.stop;

~seq3.play.quant(4); //
~seq3.stop;

~seq4.play.quant(4);
~seq4.stop;

~seq5.play.quant(4);
~seq5.stop;

~seq6.play.quant(4); //
~seq6.stop;

~seq7.play.quant(4);
~seq7.stop;

~seq8.play.quant(4);
~seq8.stop;

~seq9.play.quant(4)
~seq9.stop;

~seq10.play.quant(4);
~seq10.stop;

























