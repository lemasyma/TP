			org		$4
Vector_001	dc.l	Main
			org		$500
Main		move.w	NUMBER1,d0	;(NUMBER1) -> DO.W
			add.w	NUMBER2,d0	;(NUMBER2) + DO.W -> D0.W
			move.w	d0,SUM		;DO.W -> (SUM)
			illegal
			org		$550
NUMBER1		dc.w	$2222		;Le nombre $2222 est stocke a l'adresse NUMBER1
NUMBER2		dc.w	$5555		;Le nombre $5555 est stocke a l'adresse NUMBER2
SUM			dc.w	1			;On reserve 16 bits pour stocker la somme
