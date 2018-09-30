 			org 	$4
Vector_001 	dc.l 	Main
 			org $500
Main 	; Initialise A0 avec l'adresse de la chaîne.
 		movea.l #STRING,a0
StrLen 	; Initialise le compteur de caractères à 0
 		; (D0 = compteur de caractères).
 		clr.l d0
loop 	; On teste si le caractère de la chaîne est nul.
 		; On profite également de ce test pour faire pointer
 		; le registre A0 sur le caractère suivant.
		tst.b (a0)+
 		; Si le caractère testé est nul, il s'agit de la fin de la chaîne.
 		; On peut quitter.
 		beq quit
 		; Sinon, on incrémente le compteur de caractères.
 		; Puis on reboucle.
 		addq.l #1,d0
 		bra 	loop
quit 	; Arrêt du programme.
 		illegal
 		org 	$550
STRING 	dc.b 	"Cette chaine comporte 36 caracteres.",0