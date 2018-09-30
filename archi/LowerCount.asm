			org		$4
Vector_001	dc.l	Main
			org		$500
Main		move.l	#STRING,a0	; Initialise A0 avec l'adresse de la chaine

LowerCount	clr.l	d0

loop		tst.b	(a0)+
			beq		quit
			cmp.b	#'a',(a0)
			blo		loop
			cmp.b	#'z',(a0)
			bhi		loop
			addq.l	#1,d0
			bra		loop

quit
			illegal
			
			org		$550
STRING		dc.b	"Hello world.",0