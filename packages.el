;;; packages.el --- mermaid layer packages file for Spacemacs.
;;
;; Copyright (c) 2018 Alexei Nunez
;;
;; Author: Alexei Nunez <alexeirnunez@gmail.com>
;;
;;; Commentary:

;; Org-Babel support for evaluating mermaid diagrams in Spacemacs.
;;
;;; Requirements:

;; ob-mermaid | https://github.com/arnm/ob-mermaid
;; mermaid.cli | https://github.com/mermaidjs/mermaid.cli

;;; Code:
(defconst mermaid-packages
  '(org
    ob-mermaid))

(defun mermaid/post-init-org ()
  (spacemacs|use-package-add-hook org
    :post-config (add-to-list 'org-babel-load-languages '(mermaid . t))))

(defun mermaid/init-ob-mermaid ()
  (use-package ob-mermaid))
