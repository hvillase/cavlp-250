// Clase 4 CAVLP 25O
// PATRONES Pbind
// Prendemos SC y sus recursos gráficos

s.boot;
s.meter;
s.scope;
s.freqscope;
s.quit;

// Patrones: ciclos computacionales que repiten eventos en el tiempo
// \llave, valor
// la llave es una entrada que viene de un argumento
// valor es la unidad para el argumento, puede ser tiempo, amplitud, frecuencia, nota etc.
// Pbind empaqueta secuencias de patrones en un solo flujo
// Patrón tiene un arreglo de valores y un número de repeticiones, se coloca en el valor.

p=ProxySpace.push(s.boot);

(
~seq=Pbind(
	\dur, 1/8,
	\amp, 0.1,
	\degree, Pseq([0,1,2,3,4,5,6], inf),
	\scale, Scale.major
)
);

~seq.play;
~seq.pause;
~seq.resume;
~seq.stop;

p.clear; // limpia el entorno Proxy
p.pop; // nos saca del entorno Proxy
