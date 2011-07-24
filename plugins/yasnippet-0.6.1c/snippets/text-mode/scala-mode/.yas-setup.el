;; .yas-setup.el for Scala.tmbundle-mode
;; 
;; --**--
;; Automatically generated code, do not edit this part
;; 
;; Translated menu
;; 
(yas/define-menu 'Scala.tmbundle-mode
                 '(
                   
                   
                   
                   
                   (yas/submenu "Declarations"
                                (;; Class
                                 (yas/item "8092FC08-5291-4A9F-BAF3-DB352DDB6043")
                                 ;; JUnit Test Class
                                 (yas/item "BC8B8EAC-5F16-11D9-B9C3-000D93589AF6")
                                 (yas/separator)
                                 ;; Method
                                 (yas/item "BC8B95CA-5F16-11D9-B9C3-000D93589AF6")
                                 ;; Public Method
                                 (yas/item "BC8B9318-5F16-11D9-B9C3-000D93589AF6")
                                 ;; Private Method
                                 (yas/item "BC8B91CE-5F16-11D9-B9C3-000D93589AF6")
                                 (yas/separator)
                                 ;; While Statement
                                 (yas/item "BC8B945A-5F16-11D9-B9C3-000D93589AF6")
                                 ;; If Statement
                                 (yas/item "BC8B8FE3-5F16-11D9-B9C3-000D93589AF6")
                                 ;; If/Else Statement
                                 (yas/item "BC8B908F-5F16-11D9-B9C3-000D93589AF6")
                                 ;; Try/Catch/Finally
                                 (yas/item "BC8B93B6-5F16-11D9-B9C3-000D93589AF6")
                                 (yas/separator)
                                 ;; Wrap Selection in Try/Catch
                                 (yas/item "E8F79EC3-C20D-4063-924B-1A43E1E18D11")))
                   (yas/submenu "Idioms"
                                (;; Main Method
                                 (yas/item "CD5A1697-0D96-4F32-9AC7-BB549DEC9522")
                                 ;; Set/Get
                                 (yas/item "BC8B9506-5F16-11D9-B9C3-000D93589AF6")
                                 (yas/separator)
                                 ;; Logger
                                 (yas/item "BC8B9129-5F16-11D9-B9C3-000D93589AF6")
                                 ;; Private Variable
                                 (yas/item "BC8B9272-5F16-11D9-B9C3-000D93589AF6")
                                 ;; Private Static Final
                                 (yas/item "BC8B8F52-5F16-11D9-B9C3-000D93589AF6")))
                   ;; System.out.println
                   (yas/item "A6150517-3C15-4664-BD02-26C6D975E470")
                   ;; JSP: c:out
                   (yas/item "BC8B8E05-5F16-11D9-B9C3-000D93589AF6")
                   )
                    '())

;; Unknown substitutions
;; 
;; Substitutions for: content
;; 
;; # as in Wrap Selection in TryCatch.yasnippet
;; ${TM_SELECTED_TEXT/\A(\s*).*/$1/m}                                                         =yyas> (yas/unknown)
;; 
;; # as in Wrap Selection in TryCatch.yasnippet
;; ${TM_SELECTED_TEXT/^.+$/\t$0/g}                                                            =yyas> (yas/unknown)
;; 
;; # as in Java JUnit test class def.yasnippet
;; `date +%D`                                                                                 =yyas> (yas/unknown)
;; 
;; # as in Java JUnit test class def.yasnippet
;; `echo $TM_FILEPATH |  sed 's/\//./g' | sed 's/^.//' | sed 's/.*test.//' | sed 's/Tests.java//' | sed 's/.*\.\([A-Za-z]*\)$/\1/'`  =yyas> (yas/unknown)
;; 
;; # as in Java JUnit test class def.yasnippet
;; `echo $TM_FILEPATH |  sed 's/\//./g' | sed 's/^.//' | sed 's/.*test.//' | sed 's/Tests.java//'`  =yyas> (yas/unknown)
;; 
;; # as in Java JUnit test class def.yasnippet
;; `echo $TM_FILEPATH |  sed 's/\//./g' | sed 's/^.//' | sed 's/.*test.//' | sed 's/.[A-Za-z]*.java//g'`  =yyas> (yas/unknown)
;; 
;; # as in Java JUnit test class def.yasnippet
;; $TM_FILEPATH                                                                               =yyas> (yas/unknown)
;; 
;; # as in Class (class).yasnippet
;; ${TM_FILENAME/(.*?)(\..+)/$1/}                                                             =yyas> (yas/unknown)
;; 
;; # as in JSTL cout.yasnippet
;; ${$1}                                                                                      =yyas> (yas/unknown)
;; 
;; # as in Java JUnit test class def.yasnippet
;; `echo $TM_FILEPATH |  sed 's/\//./g' | sed 's/^.//' | sed 's/.*test.//' | sed 's/Tests.java//' | sed 's/.*\.\([A-Za-z]*\)$/\1/' | perl -e 'print lcfirst(<>)'`  =yyas> (yas/unknown)
;; 
;; # as in bean setter and getter.yasnippet
;; ${1/./\u$0/}                                                                               =yyas> (yas/unknown)
;; 
;; # as in Java JUnit test class def.yasnippet
;; `niutil -readprop / /users/$USER realname`                                                 =yyas> (yas/unknown)
;; 
;; # as in Java JUnit test class def.yasnippet
;; `echo $TM_FILEPATH |  sed 's/\//./g' | sed 's/^.//' | sed 's/.*test.//' | sed 's/.*\.\([A-Za-z]*\).java/\1/g'`  =yyas> (yas/unknown)
;; 
;; 

;; Substitutions for: condition
;; 
;; # as in Wrap Selection in TryCatch.yasnippet
;;                                                                                            =yyas> (yas/unknown)
;; 
;; 

;; Substitutions for: binding
;; 
;; # as in Wrap Selection in TryCatch.yasnippet
;; ^W                                                                                         =yyas> (yas/unknown)
;; 
;; 

;; .yas-setup.el for Scala.tmbundle-mode ends here
