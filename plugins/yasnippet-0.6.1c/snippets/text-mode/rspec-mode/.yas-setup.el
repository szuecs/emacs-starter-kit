;; .yas-setup.el for ruby-rspec.tmbundle-mode
;; 
;; --**--
;; Automatically generated code, do not edit this part
;; 
;; Translated menu
;; 
(yas/define-menu 'ruby-rspec.tmbundle-mode
                 '(;; before
                   (yas/item "7D960FC5-4859-4328-A06B-73A3CF6763E0")
                   ;; after
                   (yas/item "1201777F-3AC4-4B2A-9A46-C215F891B07A")
                   (yas/separator)
                   
                   
                   
                   (yas/separator)
                   (yas/submenu "Expectations"
                                ((yas/submenu "General"
                                              (;; should be
                                               (yas/item "F401AA03-A119-4965-8677-BDAAE8312F13")
                                               ;; should_not be
                                               (yas/item "BD1CBF13-3A1F-49AB-8B3A-25967B437FD7")
                                               (yas/separator)
                                               ;; should equal
                                               (yas/item "7DB5AC43-745F-488A-99F1-54CD923DCC38")
                                               ;; should_not equal
                                               (yas/item "A6966089-6A33-4836-B85D-9CB72DBEB0A5")
                                               (yas/separator)
                                               ;; should satisfy
                                               (yas/item "3FF9AC90-799D-4BFD-8203-58199A1AD429")
                                               ;; should_not satisfy
                                               (yas/item "E573AF3E-F301-4105-ACA3-C9913431E6ED")
                                               (yas/separator)
                                               ;; should be_close
                                               (yas/item "5A203680-6F32-482F-A6A3-50CB7EE99E0E")
                                               ;; should_not be_close
                                               (yas/item "259BCEC6-878E-411F-A6B7-69B038B75CE1")
                                               (yas/separator)
                                               ;; should match
                                               (yas/item "D6CE8D1B-16EC-4E0E-8089-62F193D3D048")
                                               ;; should_not match
                                               (yas/item "014285F3-D908-427F-B535-E5A4AEF09339")
                                               (yas/separator)
                                               ;; should predicate
                                               (yas/item "FCFC8C47-F477-4674-BFDD-2E0B8D475CE0")))
                                 (yas/submenu "Class/Type"
                                              (;; should be_instance_of
                                               (yas/item "8C5B6597-E115-4569-AE58-EF04042B21CD")
                                               ;; should_not be_instance_of
                                               (yas/item "364B3C9C-409C-4FC8-A12A-9A05CFB476CF")
                                               (yas/separator)
                                               ;; should be_kind_of
                                               (yas/item "29BF3286-6D33-418D-9BD5-79BAB0797FE4")
                                               ;; should_not be_kind_of
                                               (yas/item "96C5A0CC-08D9-4DCE-B127-78370964E64E")
                                               (yas/separator)
                                               ;; should respond_to
                                               (yas/item "D139CA8C-AACC-4314-AB86-BB3021D31B12")
                                               ;; should_not respond_to
                                               (yas/item "E352E5F0-C83B-4C36-AC72-7BFC4F58DBF0")))
                                 (yas/submenu "Procs"
                                              (;; should raise_error
                                               (yas/item "813263F0-A2C0-465F-A617-69ECBAF8F7DD")
                                               ;; should_not raise_error
                                               (yas/item "D6B8DA1B-D07A-4C1E-A27B-59C502104BEA")
                                               (yas/separator)
                                               ;; should throw
                                               (yas/item "C41E8AD6-00F5-44E7-9809-F79666FE79F0")
                                               ;; should_not throw
                                               (yas/item "EF7CD2D2-68BC-425B-9C49-7E3597EFE804")))
                                 (yas/submenu "Collections"
                                              (;; should have
                                               (yas/item "42B1F497-2BAF-425D-9829-57E35456E7FE")
                                               ;; should have_at_least
                                               (yas/item "8A4F8C8E-B347-4D18-9203-247256874C47")
                                               ;; should have_at_most
                                               (yas/item "1BE271C6-3310-46A8-83E1-88C45BBE27AC")))))
                   (yas/submenu "Mocks"
                                (;; mock
                                 (yas/item "AA3D9F87-FE8F-4808-A732-F368CCB9DED6")
                                 (yas/separator)
                                 (yas/submenu "Expectations"
                                              (;; should_receive
                                               (yas/item "0A7E08E5-4756-49BA-B015-FB3A4D11EA45")
                                               ;; should_not_receive
                                               (yas/item "4CBCCACF-D6DA-49A6-9A8E-EC2F9CD15E94")
                                               ;; with args
                                               (yas/item "3F3E8066-8C1A-40D1-85C7-9DC18C6A34BA")
                                               ;; ordered
                                               (yas/item "F0524EA5-3438-4238-871C-A5AAAAFC8CA3")))
                                 (yas/submenu "Receive Counts"
                                              (;; once
                                               (yas/item "695ECDF3-FEFC-4702-AF71-641E64017907")
                                               ;; twice
                                               (yas/item "85E6D1EE-74A4-4B4A-8A00-942B788FF599")
                                               ;; exactly
                                               (yas/item "1A3662E4-DB9D-4F29-8E42-984755A419FA")
                                               (yas/separator)
                                               ;; at_least
                                               (yas/item "F2FDA911-B713-4788-81BF-EF33E9A4FB26")
                                               (yas/separator)
                                               ;; at_most
                                               (yas/item "9A891C8D-4285-4C7D-BA03-6CA50A89F9C0")
                                               ;; any_number_of_times
                                               (yas/item "D5E64C38-9CBC-4825-9A66-5718DA91AAD6")))
                                 (yas/submenu "Responses"
                                              (;; and_return with args
                                               (yas/item "804A1B15-0756-438F-892F-2B72BE4490F0")
                                               ;; and_return with block
                                               (yas/item "C57E9EFD-3FE7-40ED-832E-DD812D1FB769")
                                               ;; and_raise
                                               (yas/item "65B85B0D-26FC-4A08-8D6A-7BF00AA787FC")
                                               ;; and_throw
                                               (yas/item "2CC293EE-496A-4B66-928C-332DDCBEE884")
                                               ;; and_yield
                                               (yas/item "ED3A9BE5-8695-44FF-9B6B-A7FF4C13727C")))))
                   (yas/separator)
                   (yas/submenu "Rails Integration"
                                (;; Require spec_helper
                                 (yas/item "DAD2B74D-2105-42B0-9FC5-466F3B3D0DB7")
                                 (yas/separator)
                                 ;; controller_name
                                 (yas/item "57374EB7-6CCE-4281-97A7-289905315351")
                                 ;; describe (Controller)
                                 (yas/item "FC8C2948-3653-41B3-965A-5D0B7C64CB41")
                                 ;; describe (RESTful Controller)
                                 (yas/item "0ED99C84-1F7B-471E-BB88-B59C5D08FA6B")
                                 (yas/submenu "Expectations"
                                              (;; should have_records
                                               (yas/item "9605BD4A-93E5-4D57-99FB-D8844D40F183")
                                               (yas/separator)
                                               ;; should be_success
                                               (yas/item "0A118507-983C-4441-8B00-73AF7E931FC5")
                                               ;; should_not be_success
                                               (yas/item "8303E848-4F07-4D3C-98FA-19DA4676812E")
                                               (yas/separator)
                                               ;; should be_redirect
                                               (yas/item "E4DA45B3-736F-40DF-8344-25A79E073730")
                                               ;; should_not be_redirect
                                               (yas/item "E79DAF3F-8960-47C1-A34C-3D0E4B0AF926")
                                               ;; should redirect_to
                                               (yas/item "96F0A193-32F1-4A75-9093-5D20E36593EC")
                                               (yas/separator)
                                               ;; should render_template
                                               (yas/item "647C94D6-42FE-40F0-8618-73F7725BF59E")))))
                   ;; describe (String)
                   (yas/item "34CBBD13-CE8E-4601-9968-C2CB0D771CA5")
                   ;; describe (type)
                   (yas/item "2ED94046-DAF7-4C91-8D98-771513BB3804")
                   ;; describe (type, string)
                   (yas/item "ACFE21E0-902B-45C4-BF54-D137718FF61C")
                   ;; it
                   (yas/item "AD51AA2B-09C9-40DE-9720-2FD43C967FA9")
                   ;; it_should_behave_like
                   (yas/item "D13C48F3-C62B-4456-B075-36B424D573CC")
                   ;; Custom Matcher
                   (yas/item "55BF6C99-B4C4-4772-B7DC-0A18407E429C")
                   ;; should ==
                   (yas/item "AF99B458-D589-414D-87C7-8FACD2EF9FD5")
                   ;; should_not ==
                   (yas/item "3A699BC3-3E17-4CFD-844C-2285F971379C")
                   ;; should eql
                   (yas/item "0F03467B-16F7-4764-99C6-B7F123E95E5C")
                   ;; should_not eql
                   (yas/item "04BED613-C9EF-4E41-82D7-9958BBDBE0E3")
                   ;; should =~
                   (yas/item "0BD5A07E-5FB3-44A3-991F-ABA04BA632D7")
                   ;; should_not =~
                   (yas/item "7563CED5-5FD8-454C-972C-AC240D549E8B")
                   ;; should_not predicate
                   (yas/item "1D0BB312-A029-4A43-A024-EF6C03506CEC")
                   ;; Story
                   (yas/item "73A67D49-CA5B-4B8A-9B62-003506276CDD")
                   )
                    '())

;; Unknown substitutions
;; 
;; Substitutions for: content
;; 
;; # as in should_receive.yasnippet
;; ${1/^.+$/./}                                                                               =yyas> (yas/unknown)
;; 
;; 

;; Substitutions for: condition
;; 
;; # as in twice.yasnippet
;;                                                                                            =yyas> (yas/unknown)
;; 
;; 

;; Substitutions for: binding
;; 
;; 

;; .yas-setup.el for ruby-rspec.tmbundle-mode ends here
