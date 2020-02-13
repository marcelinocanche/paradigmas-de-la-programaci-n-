esPadre(pedro,luis).
esPadre(fer,paty).
esPadre(juan,susi).
esPadre(miguel,ale).
esPadre(yadira,maria).
esPadre(yamile,mili).
esPadre(adrian,jose).
esPadre(martin,ceci).
esHijo(H,P):-esPadre(P,H).
esHermano(H1,H2):-esPadre(P,H1),esPadre(P,H2).
esPrimo(PR1,PR2):-esPadre(P1,PR1),esPadre(P2,PR2),esHermano(P1,P2).
esNieto(N,A):-esHijo(H,A),esPadre(H,N).
esSobrino(S,T):-esPadre(P,S),esHermano(T,P).
esTio(T,S):-esPadre(P,S),esHermano(P,T).




