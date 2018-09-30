 			org 	$4
Vector_001 	dc.l 	Main
 			org $500
Main 	; Initialise A0 avec l'adresse de la cha�ne.
 		movea.l #STRING,a0
StrLen 	; Initialise le compteur de caract�res � 0
 		; (D0 = compteur de caract�res).
 		clr.l d0
loop 	; On teste si le caract�re de la cha�ne est nul.
 		; On profite �galement de ce test pour faire pointer
 		; le registre A0 sur le caract�re suivant.
		tst.b (a0)+
 		; Si le caract�re test� est nul, il s'agit de la fin de la cha�ne.
 		; On peut quitter.
 		beq quit
 		; Sinon, on incr�mente le compteur de caract�res.
 		; Puis on reboucle.
 		addq.l #1,d0
 		bra 	loop
quit 	; Arr�t du programme.
 		illegal
 		org 	$550
STRING 	dc.b 	"Cette chaine comporte 36 caracteres.",0