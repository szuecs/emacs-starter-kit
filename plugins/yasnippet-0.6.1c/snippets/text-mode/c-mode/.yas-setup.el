;; .yas-setup.el for C.tmbundle-mode
;; 
;; --**--
;; Automatically generated code, do not edit this part
;; 
;; Translated menu
;; 
(yas/define-menu 'C.tmbundle-mode
                 '(
                   
                   
                   
                   
                   
                   
                   
                   (yas/submenu "Declarations"
                                (;; If Condition
                                 (yas/item "F060AC09-C289-11D9-8CEF-000D93589AF6")
                                 ;; Do While Loop
                                 (yas/item "D1F5A25E-A70F-11D9-A11A-000A95A89C98")
                                 ;; For Loop
                                 (yas/item "78EF7134-0859-4475-89C3-30927865E855")
                                 (yas/separator)
                                 ;; Class
                                 (yas/item "523B30D4-C28A-11D9-8CEF-000D93589AF6")
                                 ;; Struct
                                 (yas/item "1D14B92E-8819-11D9-8661-000D93589AF6")
                                 ;; Namespace
                                 (yas/item "CEE5F928-47A2-4648-96F0-99FF5C2A7419")
                                 ;; Enumeration
                                 (yas/item "DD10B510-1C36-45E0-A378-527401EE55B1")
                                 ;; Typedef
                                 (yas/item "08E16CAE-DBD8-4570-B778-9E0E0EFFF80C")
                                 (yas/separator)
                                 ;; template <typename …>
                                 (yas/item "C5DEE118-4C9E-4F3E-97A4-0E01A250F142")))
                   (yas/submenu "Idioms"
                                (;; Header Include-Guard
                                 (yas/item "74AF5E38-994C-4641-96F0-EB98A2183F60")
                                 ;; Read File Into Vector
                                 (yas/item "E8C3B596-9045-11D9-AB38-000D93589AF6")
                                 ;; main()
                                 (yas/item "BC8B81AB-5F16-11D9-B9C3-000D93589AF6")
                                 ;; $1.begin(), $1.end()
                                 (yas/item "62D59E1C-1DF1-490E-86E9-DFF8A461AD9C")
                                 ;; Shared Pointer
                                 (yas/item "986C0149-7802-4385-A237-90074D9D5ACD")))
                   
                   ;; #include <…>
                   (yas/item "B10CBD5D-7298-11D9-813A-000D93589AF6")
                   ;; #include "…"
                   (yas/item "9AB31B76-7298-11D9-813A-000D93589AF6")
                   ;; #ifndef … #define … #endif
                   (yas/item "680358EA-B24B-4662-8DDA-AD42288795E4")
                   (yas/separator)
                   ;; std::map
                   (yas/item "A295A902-ACAF-11D9-987D-000D93589AF6")
                   ;; std::vector
                   (yas/item "5E468268-ACAF-11D9-987D-000D93589AF6")
                   (yas/separator)
                   ;; printf …
                   (yas/item "5A086BE2-BCF6-11D9-82A9-000D93589AF6")
                   ;; fprintf …
                   (yas/item "FE378349-BD63-4390-9A3B-516F7FF7F413")
                   )
                    '("5039DA0E-538B-48E2-A45A-E5A27787E765"
                       "ADD104E9-830A-4AC4-AAF4-DB6D3B0B7506"
                       "E8D80809-0CDE-4E57-AC2A-8C22DFF353EE"
                       "034C3F18-097D-4B2C-8F20-C1CA3E9573E9"
                       "093DA4F2-D97F-4309-B869-6970C090A539"))

;; Unknown substitutions
;; 
;; Substitutions for: content
;; 
;; # as in namespace .. (namespace).yasnippet
;; ${TM_FILENAME/^((.*?)\..*)?$/(?1:\L$2:my)/}                                                =yyas> (yas/unknown)
;; 
;; # as in Include header once only guard.yasnippet
;; `#!/usr/bin/env ruby -wKU -riconv
name = ENV["TM_FILENAME"] || "untitled"
name = Iconv.iconv("ASCII//TRANSLIT", "UTF-8", name).first
name = name.gsub(/[^a-z0-9]+/i, "_")
uuid = (rand * 2821109907455).round.to_s(36)
print "#{name}_#{uuid}".tr("[a-z]", "[A-Z]")
`  =yyas> (yas/unknown)
;; 
;; # as in struct.yasnippet
;; ${TM_FILENAME/(.+)\..+|.*/(?1:\L$1_t:name)/}                                               =yyas> (yas/unknown)
;; 
;; # as in printf .. (printf).yasnippet
;; ${1/([^%]|%%)*(%.)?.*/(?2:, :\);)/}                                                        =yyas> (yas/unknown)
;; 
;; # as in read file (readF).yasnippet
;; ${TM_C_POINTER: *}                                                                         =yyas> (yas/unknown)
;; 
;; # as in fprintf.yasnippet
;; ${2/([^%]|%%)*(%.)?.*/(?2:, :\);)/}                                                        =yyas> (yas/unknown)
;; 
;; # as in Include header once only guard.yasnippet
;; ${TM_SELECTED_TEXT/\Z\n//}                                                                 =yyas> (yas/unknown)
;; 
;; # as in class .. (class).yasnippet
;; ${1/(\w+).*/$1/}                                                                           =yyas> (yas/unknown)
;; 
;; # as in printf .. (printf).yasnippet
;; ${1/([^%]|%%)*(%.)?.*/(?2:\);)/}                                                           =yyas> (yas/unknown)
;; 
;; # as in fprintf.yasnippet
;; ${2/([^%]|%%)*(%.)?.*/(?2:\);)/}                                                           =yyas> (yas/unknown)
;; 
;; # as in namespace .. (namespace).yasnippet
;; ${1/.+/ *\//m}                                                                             =yyas> (yas/unknown)
;; 
;; # as in #include (inc).yasnippet
;; ${TM_FILENAME/\..+$/.h/}                                                                   =yyas> (yas/unknown)
;; 
;; # as in namespace .. (namespace).yasnippet
;; ${1/.+/ /m}                                                                                =yyas> (yas/unknown)
;; 
;; # as in 1.begin(), 1.end() (beginend).yasnippet
;; ${1/^.*?(-)?(>)?$/(?2::(?1:>:.))/}                                                         =yyas> (yas/unknown)
;; 
;; # as in Shared Pointer.yasnippet
;; ${2/_t$/_ptr/}                                                                             =yyas> (yas/unknown)
;; 
;; # as in namespace .. (namespace).yasnippet
;; ${1/.+/ \/* /m}                                                                            =yyas> (yas/unknown)
;; 
;; # as in #ifndef #define #endif.yasnippet
;; ${1/([A-Za-z0-9_]+).*/$1/}                                                                 =yyas> (yas/unknown)
;; 
;; 

;; Substitutions for: condition
;; 
;; # as in template typename .. (template).yasnippet
;;                                                                                            =yyas> (yas/unknown)
;; 
;; 

;; Substitutions for: binding
;; 
;; # as in #endif.yasnippet
;; ~@.                                                                                        =yyas> (yas/unknown)
;; 
;; 

;; .yas-setup.el for C.tmbundle-mode ends here
