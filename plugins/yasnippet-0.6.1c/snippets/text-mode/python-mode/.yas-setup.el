;; .yas-setup.el for Python.tmbundle-mode
;; 
;; --**--
;; Automatically generated code, do not edit this part
;; 
;; Translated menu
;; 
(yas/define-menu 'Python.tmbundle-mode
                 '(
                   
                   
                   
                   
                   
                   
                   
                   
                   
                   
                   (yas/submenu "Insert"
                                (
                                 ;; self
                                 (yas/item "E8128DB6-AF28-4ABA-A1EE-334584D19BE5")
                                 ;; __magic__
                                 (yas/item "2E4E82B5-7E7A-4E23-B095-799DDCDB8F75")
                                 ))
                   (yas/submenu "Declarations"
                                (;; New Class
                                 (yas/item "659D189C-EC3E-4C4E-9377-B7F5F5216CBD")
                                 ;; New Method
                                 (yas/item "70E8843A-A8C0-44FC-ACF3-3DEAE48AE784")
                                 ;; New Function
                                 (yas/item "6499BB56-7BB5-11D9-8E83-000D93B6E43C")))
                   (yas/submenu "Idioms"
                                (;; New Property
                                 (yas/item "195B332F-4464-4539-9FB3-D89152C960DC")
                                 ;; if __name__ == '__main__'
                                 (yas/item "FD868CF0-FEF8-471B-BB6D-F2D7F54F71F3")
                                 (yas/separator)
                                 ;; Try/Except
                                 (yas/item "495317BD-13D7-46F9-8A2F-8D234653A3F0")
                                 ;; Try/Except/Else
                                 (yas/item "4D382FF4-C740-4250-B4AE-7299DD6B4D3A")
                                 ;; Try/Except/Finally
                                 (yas/item "EEFC5039-2CD4-4CAA-BCCC-41011864596E")
                                 ;; Try/Except/Else/Finally
                                 (yas/item "2FB8153A-1ABE-44A7-A760-763BA141724B")))
                   (yas/submenu "Tests"
                                (;; Assert
                                 (yas/item "AD5B91E1-7DF0-4E4C-B794-591640FAFD08")
                                 ;; Assert Equal
                                 (yas/item "190010F6-A759-44C1-A994-479847B23A97")
                                 ;; Assert Not Equal
                                 (yas/item "6A34B01B-9250-43AF-8563-8E47FABA6E77")
                                 ;; Assert Raises
                                 (yas/item "D07F50BE-9DC8-4F76-96FB-88DD69E3F3C1")
                                 ;; Fail (a test)
                                 (yas/item "2065BBC9-C4FC-49B8-A36C-804721F97B9C")))
                   
                   
                   
                   )
                    '("8FBF7D90-D1FC-49EE-AC1B-14BE5FB11647"
                       "7797CDD8-76A2-4A5C-A41C-9AA7E6FBBA84"
                       "44F64180-F86E-4980-895A-2994B0EEDB5D"
                       "1BAD838C-8B2A-45FD-9AD2-7F3DCA2DD388"
                       "09C00F1F-859E-455D-BD1B-C8F48CEFB078"
                       "8CE4655C-3BAE-489F-BF42-89FB6B4C4119"
                       "CA7F0533-EF2A-429A-9B77-599349C03FE8"
                       "777874B4-E62C-4454-AC56-D4DB3F9965F8"
                       "6CBFE583-039F-4C91-B532-FF1148DC1A6E"
                       "CDA11D94-712F-48EB-932E-114878FD6A54"
                       "8C6C3826-E2AD-410D-9B18-1567F86F7569"))

;; Unknown substitutions
;; 
;; Substitutions for: content
;; 
;; # as in New Method.yasnippet
;; ${2/([^,])?.*/(?1:, )/}                                                                    =yyas> (yas/unknown)
;; 
;; # as in New Class.yasnippet
;; ${4/(\A\s*,\s*\Z)|,?\s*([A-Za-z_][a-zA-Z0-9_]*)\s*(=[^,]*)?(,\s*|$)/(?2:\t\tself.$2 = $2\n)/g}  =yyas> (yas/unknown)
;; 
;; # as in New Function.yasnippet
;; ${3/.+/"""\n/}                                                                             =yyas> (yas/unknown)
;; 
;; # as in New Function.yasnippet
;; `if [ "$TM_CURRENT_LINE" != "" ]
				# poor man's way ... check if there is an indent or not
				# (cuz we would have lost the class scope by this point)
				then
					echo "self"
				fi`  =yyas> (yas/unknown)
;; 
;; # as in New Class.yasnippet
;; ${4/([^,])?(.*)/(?1:, )/}                                                                  =yyas> (yas/unknown)
;; 
;; # as in New Function.yasnippet
;; ${3/.+/\t/}                                                                                =yyas> (yas/unknown)
;; 
;; # as in New Function.yasnippet
;; $TM_CURRENT_LINE                                                                           =yyas> (yas/unknown)
;; 
;; # as in New Function.yasnippet
;; ${3/.+/"""/}                                                                               =yyas> (yas/unknown)
;; 
;; 

;; Substitutions for: condition
;; 
;; # as in TryExceptFinally.yasnippet
;;                                                                                            =yyas> (yas/unknown)
;; 
;; 

;; Substitutions for: binding
;; 
;; # as in Inside String Insert.yasnippet
;; "                                                                                          =yyas> (yas/unknown)
;; 
;; # as in Inside String Insert ''.yasnippet
;; '                                                                                          =yyas> (yas/unknown)
;; 
;; # as in Inside Function Insert (__).yasnippet
;; (                                                                                          =yyas> (yas/unknown)
;; 
;; 

;; .yas-setup.el for Python.tmbundle-mode ends here
