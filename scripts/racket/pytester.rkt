#lang racket
(require racket/cmdline
         racket/file)

(define SAVE-FILE-PATH
  (build-path (path-only (path->complete-path (find-system-path 'run-file))) ".save"))
(define mode (make-parameter 'none))
(define BACKEND-PYTHON-DIR "/home/joshua/JOOR/dev/apps/crete/backend.python")

(define files-from-command-line
  (command-line #:program "PyTester"
                #:once-any [("-a" "--add") "Add files for the tester to keep track of" (mode 'add)]
                [("-d" "--delete") "Deletes specified files from the tester" (mode 'remove)]
                [("-c" "--clear") "Removes all registred files from the tester" (mode 'reset)]
                [("-l" "--list") "List all files that the tester is tracking" (mode 'list)]
                [("-t" "--test")
                 "Runs all registered tests. If args is supplied then just runs the given tests"
                 (mode 'test)]
                [("-p" "--test-postgres")
                 "Runs all registered tests. If args is supplied then just runs the given tests"
                 (mode 'test-postgres)]
                #:args filepaths
                filepaths))

;; run :: ()
;; runs the program
(define (run)
  ;; add-files :: [string] -> ()
  ;; Adds new unique files to .save
  (define (add-files file-paths)
    (define files (file->lines SAVE-FILE-PATH))
    (display-to-file (string-join (remove-duplicates (append files file-paths)) "\n")
                     (path->string SAVE-FILE-PATH)
                     #:mode 'text
                     #:exists 'replace))

  ;; remove-files :: [string] -> ()
  ;; Removes specified files from .save
  (define (remove-files file-paths)
    (define files (file->lines SAVE-FILE-PATH))
    (define (remove-all targets files)
      (cond
        [(empty? targets) files]
        [(remove-all (cdr targets) (remove (car targets) files))]))
    (display-to-file (string-join (remove-all file-paths files) "\n")
                     (path->string SAVE-FILE-PATH)
                     #:mode 'text
                     #:exists 'replace))

  ;; run-tests :: [string] -> ()
  ;; Runs the registered tests, if files is not empty then instead runs
  ;;  the specified tests
  (define (run-tests files #:mode mode)
    (define files-to-run (if (empty? files) (file->lines SAVE-FILE-PATH) files))
    (define (fmt-path path-string)
      (string-replace (path->string (path-replace-extension (string->path path-string) #"")) "/" "."))
    (for ([file files-to-run])
      (current-directory BACKEND-PYTHON-DIR)
      (system (format "tox -e ~a -- ~a" mode (fmt-path file)) #:set-pwd? true)))

  (define (remove-all-tests)
    (display-to-file "" (path->string SAVE-FILE-PATH) #:mode 'text #:exists 'replace))

  ;; -------------------------
  ;; ---- Run entry point ----
  ;; -------------------------
  (unless (file-exists? SAVE-FILE-PATH)
    (display-to-file "" SAVE-FILE-PATH))

  (match (mode)
    ['add (add-files files-from-command-line)]
    ['remove (remove-files files-from-command-line)]
    ['test (run-tests files-from-command-line #:mode 'test)]
    ['test-postgres (run-tests files-from-command-line #:mode 'test-postgres)]
    ['list
     (for ([line (file->lines SAVE-FILE-PATH)])
       (displayln line))]
    ['reset (remove-all-tests)]
    [_ (error (format "invalid mode detected. Given ~s" (symbol->string (mode))))]))

(run)
