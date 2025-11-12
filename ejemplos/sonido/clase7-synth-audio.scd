// Clase 7 CAVLP 25O
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

// Sintetizador de sonido MONO
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

// Sintetizador ESTEREO
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

// Llamado de synths de audio
Synth(\sonido1, [\rate, 1, \amp, 1]);
Synth(\sonido2, [\amp, 0.5]);

// Secuencias

(
~seq1=Pdef(\tacos, Pbind(\instrument,\sonido1,
	\amp,0.5,
	\dur, Pseq([0.5], inf),
	\sp, 0.2,
	\rate, Pseq([1, 2], inf)))
);

(
~seq2=Pdef(\tapa, Pbind(\instrument,\sonido2,
	\amp,0.5,
	\dur, Pseq([0.125], inf),
	\sp, Pseq([0.3, 0.6, 0.7, Pseq([0, 0.1, 0.91].mirror, 2)].mirror, inf),
	\rate, Pseq([1], inf),
	\sus, 0.009,
	\rel, 0.009
))
);

~seq1.play.quant(4);
~seq1.stop;

~seq2.play.quant(4);
~seq2.stop;

// Tocar con Proxy

p=ProxySpace.push(s.boot);
p.fadeTime=3

p.clear; // limpia el entorno Proxy
p.pop; // nos saca del entorno Proxy

























