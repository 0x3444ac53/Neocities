(define w3css 
  '(link 
     (@ (rel "stylesheet")
	(href 
	  "https://www.w3schools.com/w3css/4/w3.css"))))

(define charset
  '(meta 
     (@ (charset "utf-8"))))

(define viewport
  '(meta 
     (@ (name "viewport")
	(content "width=device-width, initial-scale=1"))))

(define (head title)
  `(head 
     ,charset
     ,w3css
     ,viewport
     (title ,title)))
