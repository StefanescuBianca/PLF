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

(defun eliminare(el list)
	(if (null list)
		nil
		
		(if (not (eq (first list) el))
			(delete el list :count 1)
			
			nil
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

