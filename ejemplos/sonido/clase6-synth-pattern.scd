// Clase 6 CAVLP 25O
// SynthDef, pattern y Tocar con ProxySpace

// Prendemos SC y sus recursos gráficos

s.boot;
s.meter;
s.scope;
s.freqscope;
s.quit;

// SynthDef, represntación de un sintetizador
// Rpresentación del Synth, \nombre, |argumentos|, variables, UGen, Panorama estéreo, envolvente, salida, añadir a Server

(
SynthDef(\tri, {|freq=440, pan=0, at=0.01, sus=0.01 rel=0.1, amp=0.5, out=0|
	var sen, paneo, env;
	sen= LFTri.ar(freq, 0, amp);
	paneo= Pan2.ar(sen, pan);
	env=EnvGen.kr(Env.new([0, 1, 0.9, 0], [at, sus, rel]), doneAction: 2);
	Out.ar(out, paneo * env)
}).add
);

// Llamado del synth
a=Synth(\tri);

// llamado con argumentos
a=Synth(\tri, [\freq, 800, \pan,0 ,\rel, 2, \amp, 0.7]);
a.set(\freq, 900)

// Synth con Pulse, Saw, SinOsc, WhiteNoise

(
SynthDef(\pulse, {|freq=440, pan=0, at=0.01, sus=0.01 rel=0.1, amp=0.5, out=0|
	var sen, paneo, env;
	sen= Pulse.ar(freq, 0.5, amp);
	paneo= Pan2.ar(sen, pan);
	env=EnvGen.kr(Env.new([0, 1, 0.9, 0], [at, sus, rel]), doneAction: 2);
	Out.ar(out, paneo * env)
}).add
);

Synth(\pulse, [\amp, 1, \rel, 2])

// diente de sierra o saw

(
SynthDef(\saw, {|freq=440, pan=0, at=0.01, sus=0.01 rel=0.1, amp=0.5, out=0|
	var sen, paneo, env;
	sen= Saw.ar(freq, amp);
	paneo= Pan2.ar(sen, pan);
	env=EnvGen.kr(Env.new([0, 1, 0.9, 0], [at, sus, rel]), doneAction: 2);
	Out.ar(out, paneo * env)
}).add
);

Synth(\saw, [\freq, 700, \amp, 1, \rel, 2])

// Sinte sinosc

(
SynthDef(\sine, {|freq=440, pan=0, at=0.01, sus=0.01 rel=0.1, amp=0.5, out=0|
	var sen, paneo, env;
	sen= SinOsc.ar(freq, 0, amp);
	paneo= Pan2.ar(sen, pan);
	env=EnvGen.kr(Env.new([0, 1, 0.9, 0], [at, sus, rel]), doneAction: 2);
	Out.ar(out, paneo * env)
}).add
);

Synth(\sine, [\amp, 1, \rel, 2])

// sinte de ruido blanco
(
SynthDef(\ruido, {|freq=440, pan=0, at=0.01, sus=0.01 rel=0.1, amp=0.5, out=0|
	var sen, paneo, env;
	sen= WhiteNoise.ar(amp);
	paneo= Pan2.ar(sen, pan);
	env=EnvGen.kr(Env.new([0, 1, 0.9, 0], [at, sus, rel]), doneAction: 2);
	Out.ar(out, paneo * env)
}).add
);

Synth(\ruido, [\amp, 1, \rel, 0.2])

// Pattern con Pdef > Pattern definition

(
~seq1=Pdef(\seq, Pbind(\instrument,\saw,
	\dur, Pseq([0.125],inf),
	\amp, 0.25,
	\note, Pseq([2,  4, 5, 7, 12].mirror,inf),
	\rel, Pseq([0.4], inf)
));
);

(
~seq2=Pdef(\seq2, Pbind(\instrument,\pulse,
	\dur, Pseq([0.5, 0.25, 0.25], inf),
	\amp, 0.6,
	\degree, Pseq([0,4,6,7].mirror, inf),
	\scale, Scale.major
))
);

(
~seq3=Pdef(\seq3, Pbind(\instrument, \ruido,
	\dur, 0.5,
	\amp, Pseq([0,1,0,1], inf)
))
);

(
~seq4=Pdef(\seq4, Pbind(\instrument, \sine,
	\amp, 1,
	\dur, 0.5,
	\freq, 200))
);


~seq1.play.quant_(1);
~seq2.play.quant_(1);
~seq3.play.quant_(1);
~seq4.play.quant_(1);


~seq1.stop;
~seq2.stop;
~seq3.stop;
~seq4.stop;

// Tocar con Proxy

p=ProxySpace.push(s.boot);
p.fadeTime=3

~salida1.play
~salida2.play
~salida3.play

~salida1={Pan2.ar(SinOsc.ar(347,0,0.2))}

~salida2={Pan2.ar(LFTri.ar(200,0,LFTri.ar(8,0,-0.2,0.2)),0)}

~salida3={PinkNoise.ar(0.4).dup(2)}

~salida1.stop(10)
~salida2.stop(10)
~salida3.stop(10)

p.clear; // limpia el entorno Proxy
p.pop; // nos saca del entorno Proxy

























