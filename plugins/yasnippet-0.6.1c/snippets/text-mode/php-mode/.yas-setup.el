;; .yas-setup.el for PHP.tmbundle-mode
;; 
;; --**--
;; Automatically generated code, do not edit this part
;; 
;; Translated menu
;; 
(yas/define-menu 'PHP.tmbundle-mode
                 '(
                   
                   
                   
                   
                   
                   
                   
                   (yas/submenu "Declarations"
                                ((yas/submenu "Wrapped in <?php … ?>"
                                              (;; <?php … ?>
                                               (yas/item "BB471E3A-8CCD-11D9-B507-000D93C8BE28")
                                               ;; <?php echo … ?>
                                               (yas/item "117476CE-7A7F-4DC4-9A4E-772D282983A3")
                                               ;; <?php echo htmlentities(…) ?>
                                               (yas/item "ED759470-69D7-4ADF-9842-D890DEB00F19")
                                               ;; <?php if (…) ?> … <?php endif ?>
                                               (yas/item "4F33617A-80FE-47D2-84AF-AA3D5D8A7128")
                                               ;; <?php if (…) ?> … <?php else ?> … <?php endif ?>
                                               (yas/item "E863B097-0FD5-43D5-8547-235330081203")
                                               ;; <?php else: ?>
                                               (yas/item "3F335934-360B-40F2-9D5C-CB299FD2F215")
                                               ;; <?php foreach (…) … <?php endforeach ?>
                                               (yas/item "1E34E416-CD16-4C16-A369-9CDC3FAFD4C4")
                                               ;; <?php $this->… ?>
                                               (yas/item "5F800F2D-55DA-4E06-99A3-41B734C8768E")
                                               ;; <?php echo $this->… ?>
                                               (yas/item "7553818C-6FF8-455D-BD83-D2A587BAF6F4")))
                                 
                                 ;; if …
                                 (yas/item "35F46C2E-8CCE-11D9-B507-000D93C8BE28")
                                 ;; if … else …
                                 (yas/item "4B72EA1F-8CCE-11D9-B507-000D93C8BE28")
                                 ;; else …
                                 (yas/item "609FE8EB-B251-11D9-872D-000D93C8BE28")
                                 ;; elseif …
                                 (yas/item "61DCF7E4-8CCE-11D9-B507-000D93C8BE28")
                                 ;; for …
                                 (yas/item "AC5561AA-8CCE-11D9-B507-000D93C8BE28")
                                 ;; foreach …
                                 (yas/item "C0229432-8CCE-11D9-B507-000D93C8BE28")
                                 ;; switch …
                                 (yas/item "DA4B6728-8CCE-11D9-B507-000D93C8BE28")
                                 ;; case …
                                 (yas/item "F262B1FA-8CCE-11D9-B507-000D93C8BE28")
                                 ;; while …
                                 (yas/item "0D955946-8CCF-11D9-B507-000D93C8BE28")
                                 ;; do … while …
                                 (yas/item "1C06D786-8CCF-11D9-B507-000D93C8BE28")
                                 ;; class …
                                 (yas/item "0F39268F-8CD0-11D9-B507-000D93C8BE28")
                                 ;; function …
                                 (yas/item "EC96DA26-8CCF-11D9-B507-000D93C8BE28")
                                 ;; function __construct
                                 (yas/item "DF786227-F5C9-48A1-8C80-49306AE82B6A")
                                 (yas/separator)
                                 ;; ?>…<?php
                                 (yas/item "C1B97DFD-7F2E-4CF8-881D-F63843DE8BD5")
                                 (yas/separator)
                                 ;; Throw Exception
                                 (yas/item "FE39640E-A69C-48DF-9282-633672AAEFD2")
                                 ;; Wrap in try { … } catch (…) { … }
                                 (yas/item "F7751DAF-AC95-4D47-955F-FE2534FDE4F5")
                                 ))
                   (yas/submenu "Globals"
                                (;; $GLOBALS['…']
                                 (yas/item "E8BDF86F-8CD0-11D9-B507-000D93C8BE28")
                                 ;; COOKIE['…']
                                 (yas/item "9B253562-8CD0-11D9-B507-000D93C8BE28")
                                 ;; ENV['…']
                                 (yas/item "B90F3AE5-8CD0-11D9-B507-000D93C8BE28")
                                 ;; FILES['…']
                                 (yas/item "FF0A8A5C-8CD0-11D9-B507-000D93C8BE28")
                                 ;; GET['…']
                                 (yas/item "CF29C6B5-8CD0-11D9-B507-000D93C8BE28")
                                 ;; POST['…']
                                 (yas/item "4E18C61F-8CD1-11D9-B507-000D93C8BE28")
                                 ;; REQUEST['…']
                                 (yas/item "19B4F695-8CD1-11D9-B507-000D93C8BE28")
                                 ;; SERVER['…']
                                 (yas/item "306E5B79-8CD1-11D9-B507-000D93C8BE28")
                                 ;; SESSION['…']
                                 (yas/item "40A7709D-8CD1-11D9-B507-000D93C8BE28")))
                   (yas/submenu "Return"
                                (;; return
                                 (yas/item "80D861BF-8CD0-11D9-B507-000D93C8BE28")
                                 ;; return true
                                 (yas/item "459B8A24-8CD0-11D9-B507-000D93C8BE28")
                                 ;; return false
                                 (yas/item "56873C6E-8CD0-11D9-B507-000D93C8BE28")))
                   
                   (yas/submenu "PHPDoc"
                                (
                                 
                                 
                                 ;; Start Docblock
                                 (yas/item "775F7FCC-C43C-4C23-B935-9D5F6C25CF1D")
                                 
                                 (yas/separator)
                                 ;; Class
                                 (yas/item "9086BA3F-87E7-11D9-A6A3-000D93589AF6")
                                 ;; Class Variable
                                 (yas/item "90879700-87E7-11D9-A6A3-000D93589AF6")
                                 (yas/separator)
                                 ;; Constant Definition
                                 (yas/item "9086E254-87E7-11D9-A6A3-000D93589AF6")
                                 (yas/separator)
                                 ;; Function
                                 (yas/item "9087051B-87E7-11D9-A6A3-000D93589AF6")
                                 ;; Function Signature
                                 (yas/item "908774B1-87E7-11D9-A6A3-000D93589AF6")
                                 (yas/separator)
                                 ;; Header
                                 (yas/item "90872B90-87E7-11D9-A6A3-000D93589AF6")
                                 ;; Interface
                                 (yas/item "90874D6F-87E7-11D9-A6A3-000D93589AF6")))
                   
                   (yas/submenu "Support"
                                (;; Include TextMate Support Script
                                 (yas/item "6F3ABAC6-EEC9-4797-8D4A-6FD549094852")
                                 ;; PHP Error Catching JavaScript
                                 (yas/item "9C891C7B-CFA8-4860-B76F-4E3AD60B0E13")))
                   
                   ;; define(…, …)
                   (yas/item "8AAEC70A-8CCF-11D9-B507-000D93C8BE28")
                   ;; defined(…)
                   (yas/item "A94E02E2-8CCF-11D9-B507-000D93C8BE28")
                   ;; require …
                   (yas/item "60129434-8CCF-11D9-B507-000D93C8BE28")
                   ;; require_once …
                   (yas/item "6E25DCEF-8CCF-11D9-B507-000D93C8BE28")
                   ;; include …
                   (yas/item "34E2C808-8CCF-11D9-B507-000D93C8BE28")
                   ;; include_once …
                   (yas/item "4833C612-8CCF-11D9-B507-000D93C8BE28")
                   (yas/separator)
                   ;; echo "…"
                   (yas/item "2B91DE5F-8CD0-11D9-B507-000D93C8BE28")
                   ;; Heredoc
                   (yas/item "1634287E-035A-4617-9AD8-09133183F8FE")
                   ;; $… = array (…)
                   (yas/item "CBF8F204-8CCF-11D9-B507-000D93C8BE28")
                   ;; $… = ( … ) ? … : …
                   (yas/item "7720523B-8CCE-11D9-B507-000D93C8BE28")
                   (yas/separator)
                   )
                    '("26BC937A-5A0B-493E-B51F-1AF6E6FEFAD4"
                       "6F7E7868-F5A2-4B7D-ACFB-2A8DE2CD04E2"
                       "89385241-0117-42AE-BDAE-0471554CC3DF"
                       "647C793F-9098-481B-8B5A-BCEF3B48CB03"
                       "E0FF5942-5249-4097-A4EE-E01FAE518CD2"))

;; Unknown substitutions
;; 
;; Substitutions for: content
;; 
;; # as in PHP Error Catching.yasnippet
;; $TM_BUNDLE_SUPPORT                                                                         =yyas> (yas/unknown)
;; 
;; # as in try { ___ } catch (___) { ___ }.yasnippet
;; ${TM_SELECTED_TEXT/(\A.*)|(.+)|\n\z/(?1:$0:(?2:\t$0))/g}                                   =yyas> (yas/unknown)
;; 
;; # as in Constructor.yasnippet
;; ${2/.+/$this->$0 = \$$0;/}                                                                 =yyas> (yas/unknown)
;; 
;; # as in Include TextMate Support Script.yasnippet
;; ${TM_BUNDLE_SUPPORT%Bundles*}                                                              =yyas> (yas/unknown)
;; 
;; # as in PHPDoc interface.yasnippet
;; ${PHPDOC_AUTHOR:$TM_FULLNAME}                                                              =yyas> (yas/unknown)
;; 
;; # as in PHP Error Catching.yasnippet
;; `cat "$TM_BUNDLE_SUPPORT/textmate_error_handler.html" | grep -E -v '^[ \t\s]*\/\/' | sed 's/\(.*\)[ \t]*--.*/\1/' | tr -s ' \n\t' ' ' | sed 's/.\{80\}[{};]/&\
/g'`  =yyas> (yas/unknown)
;; 
;; # as in php.yasnippet
;; ${TM_PHP_OPEN_TAG:php}                                                                     =yyas> (yas/unknown)
;; 
;; # as in PHPDoc header.yasnippet
;; `echo $TM_ORGANIZATION_NAME`                                                               =yyas> (yas/unknown)
;; 
;; # as in Include TextMate Support Script.yasnippet
;; `if [[ "$TM_BUNDLE_SUPPORT" == "$HOME"* ]]; then
  echo "// NOTE: Your PHP bundle is checked out to your home directory."
  echo "// If the webserver process does not have permission to access"
  echo "// the included file, you can replace"
  echo "// ‘${TM_BUNDLE_SUPPORT%Bundles*}’ with"
  echo "// ‘$(find_app TextMate.app)/Contents/SharedSupport/’."
fi`  =yyas> (yas/unknown)
;; 
;; # as in PHPDoc header.yasnippet
;; `date +"%e %B, %Y" | sed 's/^ //'`                                                         =yyas> (yas/unknown)
;; 
;; # as in Continue Block Comment.yasnippet
;; ${TM_CURRENT_LINE/(.*\*\/$)|.*?(\/\*(?!.*\*\/)).*|.*/(?1:
:
(?2: )* )/}                    =yyas> (yas/unknown)
;; 
;; # as in php echo htmlentities(___).yasnippet
;; ${TM_PHP_OPEN_TAG_WITH_ECHO:php echo}                                                      =yyas> (yas/unknown)
;; 
;; # as in try { ___ } catch (___) { ___ }.yasnippet
;; ${TM_SELECTED_TEXT/([\t ]*).*/$1/m}                                                        =yyas> (yas/unknown)
;; 
;; # as in PHPDoc header.yasnippet
;; $TM_ORGANIZATION_NAME                                                                      =yyas> (yas/unknown)
;; 
;; # as in PHPDoc interface.yasnippet
;; $TM_FULLNAME                                                                               =yyas> (yas/unknown)
;; 
;; 

;; Substitutions for: condition
;; 
;; # as in while( ).yasnippet
;;                                                                                            =yyas> (yas/unknown)
;; 
;; # as in php echo this-.yasnippet
;; text.html - source                                                                         =yyas> (yas/unknown)
;; 
;; # as in PHP Error Catching.yasnippet
;; text.html                                                                                  =yyas> (yas/unknown)
;; 
;; # as in Special Return Between PHP Tags.yasnippet
;; meta.consecutive-tags.php                                                                  =yyas> (yas/unknown)
;; 
;; # as in Special Return Inside an Array.yasnippet
;; meta.array.empty.php punctuation.definition.array.end.php                                  =yyas> (yas/unknown)
;; 
;; 

;; Substitutions for: binding
;; 
;; # as in Special Return Inside an Array.yasnippet
;;                                                                                           =yyas> (yas/unknown)
;; 
;; # as in Continue Block Comment.yasnippet
;;                                                                                           =yyas> (yas/unknown)
;; 
;; # as in try { ___ } catch (___) { ___ }.yasnippet
;; ^@W                                                                                        =yyas> (yas/unknown)
;; 
;; 

;; .yas-setup.el for PHP.tmbundle-mode ends here
