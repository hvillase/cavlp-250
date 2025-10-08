// Clase 2 - ProxySpace

// ProxySpace es un entorno de referencias en un servidor

// Para declarar código en el momento.

s.boot;

p=ProxySpace.push(s.boot); // activa el espacio Proxy

p.fadeTime=5; // creamos un desvanecimiento de amplitud

~out.play; // comenzar a tocar

~out.stop; // dejar de tocar

~out={SinOsc.ar(400, 0, 0.5)} // el sonido que queremos tocar

// Amplitud
// Presión sonora del sonido se mide en decibeles o dB
// EN SC está normalizada del 0 al 1

~out={SinOsc.ar(400, 0, 0.5)} // cambiar entre 0.1 y 0.5

// Frecuencia
// Ciclos por segundo se mide en hertz o Hz

~out={SinOsc.ar(800, 0, 0.5)} // cambiar entre 400 y 800

// Argumentos

~out={|freq=400| {SinOsc.ar(freq, 0, 0.5)}}
~out.set(\freq, 400);

// ENVOLVENTES
// Comportamiento de la amplitud del sonido en el tiempo

~out={SinOsc.ar(500, 0, 1)*EnvGen.kr(Env.perc(1, 0.5), 1, doneAction:2)}

// Patrones con ProxySpace

// ejemplos escritos en clase

s.boot;
s.meter;
s.scope;
// ctrl + enter
// ctrl + shift + p
// JITLib

p=ProxySpace.push(s.boot);

~out.play;

~out={SinOsc.ar(440, 0, 1)*EnvGen.kr(Env.perc(0.01, 1),1,doneAction:2)}

~out={SinOsc.ar(880, 0, 1)*EnvGen.kr(Env.perc(0.01, 2),1,doneAction:2)}

~out={SinOsc.ar(1080, 0, 1)*EnvGen.kr(Env.new([0,1,0.5,0.5,0],[0.1,0.2,0.5,1]),1,doneAction:2)}

~out.pause;
~out.resume;
~out.stop;

Env.perc(0.1,0.1).plot
Env.adsr(0.1,0.2,0.5,1).plot
Env.help
Env.new([0,1,0.5,0.5,0],[0.1,0.2,0.5,1]).plot