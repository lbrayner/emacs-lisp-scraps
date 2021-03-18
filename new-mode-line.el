;; This buffer is for text that is not saved, and for Lisp evaluation.
;; To create a file, visit it with C-x C-f and enter text in its buffer.

;; (defun resolve-file-name-home-directory (file-name)
;;   (cond (buffer-file-name
;;          (replace-regexp-in-string (regexp-quote (home-directory)) "~/" file-name))
;;         (t nil)))

;; (resolve-file-name-home-directory (buffer-file-name))

;; (defun modeline-project-root ()
;;   (or (cdr (project-current)) default-directory))

;; (defun modeline-buffer-name ()
;;   (cond (buffer-file-name
;;          (s-chop-prefix (modeline-project-root) (abbreviate-file-name buffer-file-name)))
;;         (t "%b")))

;; Ab ratione possimus tenetur nihil et rerum. A cupiditate impedit
;; ipsum qui. Aut optio reiciendis omnis et itaque veniam iure.

;; Sunt quia totam veniam explicabo facere veniam velit. Harum ;; suscipit eum recusandae. Praesentium et ratione sunt exercitationem ;; soluta molestias ex aut. Aut sit aut et ea. Qui quibusdam beatae ;; accusamus dolorem iste at. Ut expedita laboriosam velit sed ;; consequuntur illo.

;; Adipisci qui asperiores sed excepturi. Vel nam vel ut et qui
;; deserunt et beatae. Et in pariatur consequuntur ad.

;; Nesciunt quia ex cumque laudantium sint ab. In fugit ipsam sed
;; cumque aliquam doloribus sed. Ea corporis et quis non velit
;; aut. Aut maiores voluptate dolores doloribus cum iure id
;; ducimus. Et quidem placeat rerum modi sapiente earum.

;; Sit magni eaque reiciendis est sint. Voluptas est quo temporibus
;; explicabo aut. Vero rerum qui veritatis et dolorum ipsum. Ipsum
;; maiores aperiam soluta vero expedita. Voluptatem qui voluptatem
;; doloribus doloribus autem repudiandae enim. Quibusdam quis in
;; dolorum rerum vel.



(home-directory)

(eq (get-buffer-window) (get-buffer-window (current-buffer)))


selected-window

(setq column-number-mode nil)

(ceiling (log (string-to-number (total-lines-as-string)) 10))

(concat " %" (number-to-string (ceiling (log (string-to-number (total-lines-as-string)) 10))) "l,%C")

(format-mode-line mode-line-modes)
(format-mode-line '(-3 "%p"))
(format-mode-line '(3 "%C"))

(setq org-adapt-indentation t)

(let ((a 5))
  (+ a 2))

(car mode-line-format)

(let ((buffer-id-sublist (memq 'mode-line-buffer-identification mode-line-format)))
  (setcar mode-line-format (cdr modified)))

(setf (cadr (memq 'mode-line-buffer-identification mode-line-format)) 'mode-line-modified)

(car (memq 'mode-line-modified mode-line-format))

(memq nil mode-line-format)

evil-mode-line-format
evil-mode-line-tag

(cl-position 'mode-line-modified mode-line-format)

(cl-position 'mode-line-buffer-identification mode-line-format)


(setcar (+ 1 (nth )))

(add-to-list (quote (cdr (memq 'mode-line-buffer-identification mode-line-format))) 'mode-line-modified)

(delq 'mode-line-modified mode-line-format)

(defvar test-list)
(setq test-list '(1 2 3 4))
(setf (car test-list) 5)
(cons 5 4)

(setf (cdr test-list) (cons 7 (cdr test-list)))

(let ((buffer-id-sublist (memq 'mode-line-buffer-identification mode-line-format)))
  (setf (cdr buffer-id-sublist) (cons 'mode-line-modified (cdr buffer-id-sublist))))

(reverse (split-string (abbreviate-file-name "/home/desenvolvedor/.emacs.d/config/config-mode-line.el") "/"))
;; ("config-mode-line.el" "config" ".emacs.d" "~")

(let* ((file-name "/home/desenvolvedor/.emacs.d/config/config-mode-line.el")
       (path (reverse (split-string (abbreviate-file-name file-name) "/"))))
  (message path))

(length "/home/desenvolvedor/.emacs.d/config/config-mode-line.el")
;; 55

;; (defun my/file-name-components-as-list (file-name)
;;   (let* ((components (split-string file-name "/"))
;;          (reversed (reverse components)))
;;     (cond ((eq (car reversed) "")
;;            (reverse (cdr reversed)))
;;           ((eq (car components) "")
;;            (cdr)))
;;     (if (eq (car reversed) "")
;;         (reverse (cdr reversed))
;;       components)))

;; (my/file-name-components-as-list "/home/esenvolvedor/.emacs.d/config/config-mode-line.el")
("" "home" "desenvolvedor" ".emacs.d" "config" "config-mode-line.el")


;; (my/file-name-components-as-list "/home/desenvolvedor/.emacs.d/config/")
;; ("~" ".emacs.d" "config")

(defun my/path-components-as-list (path)
  (let* ((path-as-file (directory-file-name path))
         (parent (file-name-directory path-as-file)))
    (cond ((or (not parent) (equal path-as-file parent))
           (list path-as-file))
          (t
           (cons (file-name-nondirectory path-as-file)
                 (my/path-components-as-list parent))))))

;; (defun my/path-components-as-list (path)
;;   (let ((path-as-file (directory-file-name path)))
;;     (if (equal (file-name-directory path-as-file) path-as-file)
;;         (list path-as-file)
;;       (progn (message "path-as-file %s" path-as-file)
;;              (cons (file-name-nondirectory path-as-file)
;;                    (my/path-components-as-list (file-name-directory path-as-file)))))))

(file-name-directory "/home/desenvolvedor/.emacs.d/config/config-mode-line.el")
(file-name-as-directory "/home/desenvolvedor/.emacs.d/config")
(file-name-directory "/home/desenvolvedor/.emacs.d/config/")
(directory-file-name "/home/desenvolvedor/.emacs.d/config/")
(directory-file-name "/")
(directory-file-name "~/")
(file-name-directory "~/")
(file-name-directory "~")
(file-name-nondirectory "~/.emacs.d")
(file-name-nondirectory "/home")
(file-name-directory "/home")
(equal (file-name-directory "~/.emacs.d") "~/.emacs.d")
(equal (file-name-directory "~/") "~/")
(directory-file-name "~/")
(my/path-components-as-list "/")
(my/path-components-as-list "/home")
(my/path-components-as-list "/home/desenvolvedor/.emacs.d/config/config-mode-line.el")
(my/path-components-as-list (abbreviate-file-name
                             "/home/desenvolvedor/.emacs.d/config/config-mode-line.el"))
;; ("config-mode-line.el" "config" ".emacs.d" "~")


;; https://stackoverflow.com/a/13473856
(defun my/joinnodes (root &rest dirs)
  "Joins a series of directories together, like Python's os.path.join,
  (dotemacs-joindirs \"/tmp\" \"a\" \"b\" \"c\") => /tmp/a/b/c"

  (if (not dirs)
      root
    (apply #'my/joinnodes
           (expand-file-name (car dirs) root)
           (cdr dirs))))

(my/joinnodes "/tmp" "a" "b")
(abbreviate-file-name (apply #'my/joinnodes (reverse '("config" ".emacs.d" "~"))))
(abbreviate-file-name (apply #'my/joinnodes (reverse '("c" ".e" "~"))))

(defun my/path-components-list-to-absolute-path (path-components-list)
  (apply #'my/joinnodes (reverse path-components-list)))

(my/path-components-list-to-absolute-path '("config-mode-line.el" "config" ".emacs.d" "~"))
;; "/home/desenvolvedor/.emacs.d/config/config-mode-line.el"

(defun my/truncate-path (truncated-path-components path-components max-length)
  (let* ((path (append truncated-path-components path-components))
         (length (apply #'+ (mapcar #'length path))))
    (if (or (not path-components) (< length max-length))
        path
      (let ((remaining-path-components (cdr path-components))
            (resulting-truncated-path-components (append truncated-path-components
                                                   (list (my/truncate-path-component (car path-components))))))
        (my/truncate-path resulting-truncated-path-components remaining-path-components max-length)))))

(apply #'+ (mapcar #'length (my/path-components-as-list
                   "/home/desenvolvedor/.emacs.d/config/config-mode-line.el")))

(my/truncate-path nil (reverse (my/path-components-as-list
                            "/home/desenvolvedor/.emacs.d/config/config-mode-line.el"))
                  30)
;; ("/" "h" "d" "." "config" "config-mode-line.el")


(defun my/truncate-path-component (element)
  (substring element 0 1))

(my/truncate-path-component "Documents")

(let ((file-name "/home/desenvolvedor/.emacs.d/config/config-mode-line.el"))
  (if (> (length file-name) 50)
      (substring file-name 0 1)
    file-name))