			org $4
Vector_001 	dc.l Main
			org $500

Main 		move.l #-2147483648,d0 ; Initialise D0.

Abs			tst.l	d0
			bmi		next
			bra		quit

next		neg.l	d0
quit		illegal