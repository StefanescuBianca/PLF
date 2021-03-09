;ex1

(defun sum_nr(l)
	( if(null l)
		0
		(if (numberp(car l))
			(+ (car l) (sum_nr(cdr l)))
			(sum_nr(cdr l))
		)
	)
)

;ex2
(defun nr(l)
	( if(null l)
		0
		(if (numberp(car l))
			(+ 1 (nr(cdr l)))
			(nr(cdr l))
		)
	)
)
(defun ma(l)
	(if(null l)
		0
		(/ (sum_nr l) (nr l))
	)
)

;ex3

(defun eliminare (el l)
	(if (null l)
		nil
		(if (eq (car l) el)
			nil	
			(remove el l)
			
		)
	)
)

;ex4

(defun pozpare(l)
	(if (null (rest l))
		'() 
		(cons (second l) (pozpare (rest (rest l))))
	)
)

