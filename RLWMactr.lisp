;;; yelp, This is a model of the associatoin learning task by collins and Frank

(clear-all)

(define-model RLWM-learner

; From response-monkey
(sgp :esc nil
	 :er t
	 :auto-attend t
     )

; chunk to represent task features like pictures, fixation and reward, response
;

(chunk-type learning-task
		taskBlocks
		pics-inBlock
		done
		goal
		)

(chunk-type trial
		picture
		fixation		
		)


(chunk-type response
		response-key
		outcome
		
		)

(chunk-type feedback
			value
			reward
			)

;Chunks --------------------------------------------------
(add-dm taskBlock Block1
				pics-inBlock 3
				done no
				goal "gain more reward"
				)


(add-dm (trial1 isa chunk)
	trial1 isa trial
				piture yes
				fixation no
	)

(add-dm (trial-response isa chunk)
			(resp-V		isa response
						response-key "v"
						outcome nil)

			(resp-B		isa response
						response-key "b"
						outcome nil)
			
			(resp-N    isa response
						response-key "n"
						outcome nil)
	)


; productions to represent response and learning

)