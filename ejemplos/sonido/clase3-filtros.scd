// Clase 3 CAVLP 25O

// Prendemos SC y sus recursos gráficos
s.boot;
s.meter;
s.scope;
s.freqscope;
s.quit;

// Filtros de sonido
// Amplitud: la presión sonora del sonido se mide en dB spl (decibeles)
// Frecuencia: los cíclos por segundo del sonido se miden en Hz (hertz)

// los filtros dejan pasar un rango de frecuencias y cortan otro
// hay tres filtros HPF, LPF y BPF

p=ProxySpace.push(s.boot);

~out.play;
~out.pause;
~out.resume;
~out.stop;

// ruido blanco

~out={WhiteNoise.ar(0.1).dup(2)};

// HPF es un filtro pasa altos, sus parámetros son: señal, corte de frecuencia y amplitud

~out={HPF.ar(WhiteNoise.ar(0.1), 400, 1.0).dup(2)};

// LPF es el filtro pasa bajos, sus parámetros son: señal, corte de frecuencia y amplitud

~out={LPF.ar(WhiteNoise.ar(0.1), 400).dup(2)};

// BPF es un filtro pasa banda, sus parámetros son: señal, corte de frecuencia y rq

~out={BPF.ar(WhiteNoise.ar(0.1), 400, 1.0).dup(2)};