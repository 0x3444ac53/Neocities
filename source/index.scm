(load "libs/listpage.scm")
(load "libs/sources.scm")
(import (chicken format))

(define socials
  '(ul (@ (class "w3-ul"))
       (li (a (@ (href "https://instagram.com/discounted_dyke")) "@discounted_dyke | instagram"))
       (li (a (@ (href "https://instagram.com/squid_leafs")) "@squid_leafs | instagram"))
       (li (a (@ (href "https://github.com/0x3444ac53")) "0x3444ac53 | github"))
       (li (a (@ (href "https://ambidexterous-lesbian.tumblr.com/")) "ambidexterous-lesbian | tumblr"))
       ))

(define projects
  '(ul (@ (class "w3-ul"))
       (li (a (@ (href "https://github.com/0x3444ac53/HCSL")) "Hand Coded Stringy Lisp"))
       (li (a (@ (href "https://github.com/0x3444ac53/FileOrganiser")) "Modal File Organiser"))
       (li (a (@ (href "https://github.com/0x3444ac53/Neocities")) "Github Repo for this site"))
       (li (a (@ (href "https://github.com/0x3444ac53/Not-Important")) "Repo for my old website"))
       ))

(define pages
  '(ul (@ (class "w3-ul"))
       (li (a (@ (href "/hazel.html")) "Haydyn's List"))))

(define (doos word)
  `(a (@ (href ,(format "https://dictionaryofobscuresorrows.com/search/~a" word)))
      ,word))

(write-file "../build/index.html"
  `(html
     ,(head "Nora's website")
     (body
       (div (@ (class "w3-container w3-teal"))
	    (a (@ (href "/index.html"))
	       (h1 "Nora's Website"
		   (span (@ (class "w3-right"))
			 (img (@ 
				(src "src/imgs/squid.png")
				(alt "squid")
				(width "auto")
				(height "150px")))))))
       (div
	 (@ (class "w3-container w3-pale-green"))
	 (div (@ (class "w3-cell-middle w3-content w3-padding"))
	      (p (@ (class "w3-margin w3-container"))
		 "Being me is kind of like reading a sequel to the Voynich Manuscript, and the entire time there is a crushing feeling of " 
		 ,(doos "agnosthesia") " references to books I've never read, and a lot of meandering about " ,(doos "midding") 
		 ". There is a trend towards " ,(doos "altschmerz") " somewhere in the middle, and a longing for "
		 ,(doos "flashover") "s that may never come. The " ,(doos "liberosis") " is palpable. With this last chapter of my life closing "
		 "there is a focus on " ,(doos "adronitis") ", and a desperation towards creating a new " ,(doos "rigor samsa") " knowing "
		 "that this will only exacerbate the disconnected " ,(doos "sonder") " sonder I am prone to. "
		 "I do what I can to submit myself to the mortifying ordeal, and yet whenever I have I've only felt mortified and never known.")
	      ))
       (div (@ (class "w3-row-padding w3-section"))
	    (div (@ (class "w3-col s4"))
		 (h5 "Socials: ")
		 ,socials)
	    (div (@ (class "w3-col s4"))
		 (h5 "Projects: ")
		 ,projects)
	    (div (@ (class "w3-col s4"))
		 (h5 "Pages: ")
		 ,pages))
       )))
