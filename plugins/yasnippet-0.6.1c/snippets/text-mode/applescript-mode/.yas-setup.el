;; .yas-setup.el for AppleScript.tmbundle-mode
;; 
;; --**--
;; Automatically generated code, do not edit this part
;; 
;; Translated menu
;; 
(yas/define-menu 'AppleScript.tmbundle-mode
                 '(
                   
                   
                   
                   (yas/submenu "Conversion"
                                (
                                 
                                 ))
                   
                   (yas/submenu "Documentation"
                                (
                                 
                                 
                                 
                                 
                                 
                                 
                                 
                                 
                                 
                                 ))
                   
                   (yas/submenu "Blocks"
                                (
                                 
                                 
                                 ;; script … end
                                 (yas/item "27E30615-B821-4998-AC39-B503B75699DB")
                                 (yas/separator)
                                 ;; tell [app] … end
                                 (yas/item "3E62DF03-32E3-40B6-978F-CD3DD86F8494")
                                 ;; using terms from [app] … end
                                 (yas/item "9E5E9C0B-471D-41FE-83CF-6BC51783B27F")
                                 (yas/separator)
                                 ;; repeat [times] … end
                                 (yas/item "4FFDA694-2B17-41AF-B92A-2172612CC82D")
                                 ;; repeat while ... end
                                 (yas/item "82EE8D3B-B2EE-457C-8412-F098DD5827FA")
                                 ;; repeat until ... end
                                 (yas/item "6CAD1A94-B03B-4E78-B67B-2F3CDAADBAFA")
                                 ;; repeat with ... from ... end
                                 (yas/item "D1707E70-B8FA-4EAA-B6B6-3BC860268829")
                                 ;; repeat with ... in ... end
                                 (yas/item "1E31B99C-B436-4BA6-A754-E8EE5A73680D")
                                 (yas/separator)
                                 ;; if … end
                                 (yas/item "301C492A-03BE-4EFF-87A9-2FD276376B9B")
                                 ;; try … on error … end
                                 (yas/item "A7169FD9-63FB-46EB-974F-6B31FFF4C52B")
                                 ;; with timeout … end
                                 (yas/item "9C5B660B-94B9-44DD-AA84-F212AAE0065A")
                                 ;; with transaction … end
                                 (yas/item "E17ACBC4-BDC8-4ACE-B67A-9148BA4B8B18")
                                 (yas/separator)
                                 ;; considering … end
                                 (yas/item "F6401A3A-7BDB-41E0-8628-3C2F24C3D5FC")
                                 ;; ignoring … end
                                 (yas/item "AFC90003-4B8B-4661-8958-81F47D5E8277")
                                 ;; change text item delimiters
                                 (yas/item "016BF4B7-53D3-49E0-A8DB-033917FAD031")))
                   (yas/submenu "Statements"
                                (;; prop parent …
                                 (yas/item "26A11710-54A2-4AB1-AE52-213869C21314")
                                 ;; prop …
                                 (yas/item "E11743D3-7286-470A-9B32-16AB6188244C")
                                 ;; set … to …
                                 (yas/item "E9B6FF87-9B89-4F3C-811A-0A8CC78D1B26")
                                 ;; copy … to …
                                 (yas/item "3754B2CC-DB4C-4B2D-9DAF-08CD402BB672")
                                 ;; duplicate … to …
                                 (yas/item "D1F93513-B220-4580-835D-0D689607E25B")
                                 ;; if … then …
                                 (yas/item "1751AD24-B7C6-480B-A1A9-3A3682D5325E")
                                 ;; do shell script …
                                 (yas/item "A26CF48B-F79C-4AEC-B2DC-9063DA264DDB")))
                   (yas/submenu "Dialogs"
                                (;; OK
                                 (yas/item "244EC5B2-5821-4364-8585-A2B241A57590")
                                 ;; OK/Cancel
                                 (yas/item "3495D4D5-E454-4A90-9288-8E7D34094544")
                                 ;; OK/Cancel/Other
                                 (yas/item "7DD1F1C1-3E7B-4157-951E-58B22BA00AB9")
                                 (yas/separator)
                                 ;; Alert
                                 (yas/item "36586BF4-F77B-42B6-ADEF-AD2B65298602")
                                 ;; Text Field
                                 (yas/item "E4CD6ED0-73A9-48A5-95F1-74794A93401F")
                                 ;; Choose Item from List
                                 (yas/item "1D418F08-770F-4407-AE6A-3CCF2CD9FA6E")
                                 (yas/separator)
                                 ;; Choose New File
                                 (yas/item "DE1A37AA-FB0F-480F-99DC-3D79B35A49C1")
                                 ;; Choose Application(s)
                                 (yas/item "61FA9A41-E511-488F-AA30-4216C9154BE7")
                                 ;; Choose File(s)
                                 (yas/item "5C6AB1CA-170D-42A9-8E3C-961FE1054934")
                                 ;; Choose Folder(s)
                                 (yas/item "CDEB7EDE-7171-4801-AE12-258ED3F7A2BA")
                                 ;; Choose URL
                                 (yas/item "5100F3C7-EC8E-43C3-B844-2F384FCEC6C4")
                                 ;; Choose Color
                                 (yas/item "C8B17E74-0D0F-4FC9-B53C-B2CD2BBE4EA4")))
                   (yas/submenu "Idioms"
                                (;; Split/Join Helper Functions
                                 (yas/item "DB76600C-38FC-4B63-A1B6-CC926496B620")
                                 ;; Select Menu Item with UI Scripting
                                 (yas/item "E56CA3CB-D2C0-451F-B695-5E39D152708A")
                                 ;; Check that UI Scripting is Enabled
                                 (yas/item "E604B44D-3483-4993-9679-566392A03203")))
                   
                   ;; #!/usr/bin/osascript
                   (yas/item "6A58371E-DED1-44A6-A873-88DEFE0CEA3B"))
                    '("9755F5E9-3919-4E82-AAAD-9ECB64FD718A"))

;; Unknown substitutions
;; 
;; Substitutions for: content
;; 
;; # as in Select Menu Item with UI Scripting.yasnippet
;; `f\`                                                                                       =yyas> (yas/unknown)
;; 
;; # as in Select Menu Item with UI Scripting.yasnippet
;; `menu_click\`                                                                              =yyas> (yas/unknown)
;; 
;; # as in do shell script.yasnippet
;; ${4/.+/ ¬
	/}                                                                             =yyas> (yas/unknown)
;; 
;; # as in Select Menu Item with UI Scripting.yasnippet
;; `r\`                                                                                       =yyas> (yas/unknown)
;; 
;; # as in Text Field.yasnippet
;; ${9/.+/
else
	/}                                                                           =yyas> (yas/unknown)
;; 
;; # as in Choose Application(s).yasnippet
;; ${3/.+/ ¬
	/}                                                                             =yyas> (yas/unknown)
;; 
;; # as in do shell script.yasnippet
;; ${1/.+/set /}                                                                              =yyas> (yas/unknown)
;; 
;; # as in OKCancel.yasnippet
;; ${7/.+/
else
	/}                                                                           =yyas> (yas/unknown)
;; 
;; # as in Text Field.yasnippet
;; ${5/.+/ ¬
	with icon /}                                                                   =yyas> (yas/unknown)
;; 
;; # as in repeat with ___ from ___ end.yasnippet
;; ${4/.+/ by /}                                                                              =yyas> (yas/unknown)
;; 
;; # as in OKCancelOther.yasnippet
;; ${8/.+/
else if button_pressed is "$5" then
	/}                                            =yyas> (yas/unknown)
;; 
;; # as in Select Menu Item with UI Scripting.yasnippet
;; `{"Finder", "View", "Arrange By", "Date"}\`                                                =yyas> (yas/unknown)
;; 
;; # as in OKCancelOther.yasnippet
;; ${3/.+/ ¬
	with icon /}                                                                   =yyas> (yas/unknown)
;; 
;; # as in do shell script.yasnippet
;; ${2/.+/ ¬
	/}                                                                             =yyas> (yas/unknown)
;; 
;; # as in do shell script.yasnippet
;; ${1/.+/ to /}                                                                              =yyas> (yas/unknown)
;; 
;; # as in repeat times end.yasnippet
;; ${1/.+/ times/}                                                                            =yyas> (yas/unknown)
;; 
;; # as in with transaction end.yasnippet
;; ${1/.+/ /}                                                                                 =yyas> (yas/unknown)
;; 
;; 

;; Substitutions for: condition
;; 
;; # as in with transaction end.yasnippet
;;                                                                                            =yyas> (yas/unknown)
;; 
;; 

;; Substitutions for: binding
;; 
;; 

;; .yas-setup.el for AppleScript.tmbundle-mode ends here
