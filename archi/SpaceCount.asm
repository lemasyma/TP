 			org 	$4
Vector_001 	dc.l 	Main
 			org 	$500

Main 		movea.l #STRING,a0 ; Initialise A0 avec l'adresse de la chaîne.

SpaceCount 	clr.l	d0			; Initialise compteur à zero

loop		tst.b	(a0)+
			beq		quit		; Si caractere nul, quitte la boucle
			cmp.b	#' ',(a0)
			bne		loop		; Si caractere pas un espace, relance la boucle
			addq.l	#1,d0		; Sinon rajoute 1 au compteur
			bra		loop
quit
 			illegal
 			org 	$550

STRING 		dc.b	"Samuel Lea",0
