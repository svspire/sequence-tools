(in-package :asdf)
(defsystem "sequence-tools"
           :name "sequence tools"
  :description "Routines for treating sequence more generically"
  :author "Shannon Spires <ssos@bearlanding.com>"
  :version "0.0.1"
  :licence "BSD 3-clause"
  :maintainer "Shannon Spires <ssos@bearlanding.com>"
  :depends-on ()
  :serial t
  :components ((:module package
                        :pathname ""
                        :components ((:file "package")))
               (:module main
                        :depends-on (package)
                        :pathname ""
                        :components 
                        ((:file "sequence-tools")))))