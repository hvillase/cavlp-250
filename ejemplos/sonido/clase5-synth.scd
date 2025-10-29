// Clase 5 CAVLP 25O
// SynthDef y Tocar con ProxySpace

// Prendemos SC y sus recursos gráficos

s.boot;
s.meter;
s.scope;
s.freqscope;
s.quit;

// SynthDef, represntación de un sintetizador
// Rpresentación del Synth, \nombre, |argumentos|, variables, UGen, Panorama estéreo, envolvente, salida, añadir a Server

(
SynthDef(\tri, {|freq=440, pan=0, at=0.01, sus,0.01 rel=0.1, amp=0.5, out=0|
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
a=Synth(\tri, [\freq, 500, \rel, 3]);

// Synth con Pulse, Saw, SinOsc, WhiteNoise

// Tocar con Proxy

p=ProxySpace.push(s.boot);


p.clear; // limpia el entorno Proxy
p.pop; // nos saca del entorno Proxy
