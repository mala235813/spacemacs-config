;; -*- mode: emacs-lisp -*-
;; This file is loaded by Spacemacs at startup.
;; It must be stored in your home directory.

(defun dotspacemacs/layers ()
  "Configuration Layers declaration.
You should not put any user code in this function besides modifying the variable
values."
  (setq-default
   ;; Base distribution to use. This is a layer contained in the directory
   ;; `+distribution'. For now available distributions are `spacemacs-base'
   ;; or `spacemacs'. (default 'spacemacs)
   dotspacemacs-distribution 'spacemacs
   ;; List of additional paths where to look for configuration layers.
   ;; Paths must have a trailing slash (i.e. `~/.mycontribs/')
   dotspacemacs-configuration-layer-path '()
   ;; List of configuration layers to load. If it is the symbol `all' instead
   ;; of a list then all discovered layers will be installed.
   dotspacemacs-configuration-layers
   '(
     python
     javascript
     ;; ----------------------------------------------------------------
     ;; Example of useful layers you may want to use right away.
     ;; Uncomment some layer names and press <SPC f e R> (Vim style) or
     ;; <M-m f e R> (Emacs style) to install them.
     ;; ----------------------------------------------------------------
     auto-completion
     ;; better-defaults
     csv
     emacs-lisp
     eyebrowse
     git
     ;; markdown
     ;; org
     ;; (shell :variables
     ;;        shell-default-height 30
     ;;        shell-default-position 'bottom)
     ;; spell-checking
     ;; syntax-checking
     ;; version-control
     clojure
     )
   ;; List of additional packages that will be installed without being
   ;; wrapped in a layer. If you need some configuration for these
   ;; packages, then consider creating a layer. You can also put the
   ;; configuration in `dotspacemacs/user-config'.
   dotspacemacs-additional-packages '(
                                      ascii
                                      )
   ;; A list of packages and/or extensions that will not be install and loaded.
   dotspacemacs-excluded-packages '()
   ;; If non-nil spacemacs will delete any orphan packages, i.e. packages that
   ;; are declared in a layer which is not a member of
   ;; the list `dotspacemacs-configuration-layers'. (default t)
   dotspacemacs-delete-orphan-packages t))

(defun dotspacemacs/init ()
  "Initialization function.
This function is called at the very startup of Spacemacs initialization
before layers configuration.
You should not put any user code in there besides modifying the variable
values."
  ;; This setq-default sexp is an exhaustive list of all the supported
  ;; spacemacs settings.
  (setq-default
   ;; If non nil ELPA repositories are contacted via HTTPS whenever it's
   ;; possible. Set it to nil if you have no way to use HTTPS in your
   ;; environment, otherwise it is strongly recommended to let it set to t.
   ;; This variable has no effect if Emacs is launched with the parameter
   ;; `--insecure' which forces the value of this variable to nil.
   ;; (default t)
   dotspacemacs-elpa-https nil
   ;; Maximum allowed time in seconds to contact an ELPA repository.
   dotspacemacs-elpa-timeout 5
   ;; If non nil then spacemacs will check for updates at startup
   ;; when the current branch is not `develop'. (default t)
   dotspacemacs-check-for-update t
   ;; One of `vim', `emacs' or `hybrid'. Evil is always enabled but if the
   ;; variable is `emacs' then the `holy-mode' is enabled at startup. `hybrid'
   ;; uses emacs key bindings for vim's insert mode, but otherwise leaves evil
   ;; unchanged. (default 'vim)
   dotspacemacs-editing-style 'vim
   ;; If non nil output loading progress in `*Messages*' buffer. (default nil)
   dotspacemacs-verbose-loading nil
   ;; Specify the startup banner. Default value is `official', it displays
   ;; the official spacemacs logo. An integer value is the index of text
   ;; banner, `random' chooses a random text banner in `core/banners'
   ;; directory. A string value must be a path to an image format supported
   ;; by your Emacs build.
   ;; If the value is nil then no banner is displayed. (default 'official)
   dotspacemacs-startup-banner 'official
   ;; List of items to show in the startup buffer. If nil it is disabled.
   ;; Possible values are: `recents' `bookmarks' `projects'.
   ;; (default '(recents projects))
   dotspacemacs-startup-lists '(recents projects)
   ;; Number of recent files to show in the startup buffer. Ignored if
   ;; `dotspacemacs-startup-lists' doesn't include `recents'. (default 5)
   dotspacemacs-startup-recent-list-size 5
   ;; Default major mode of the scratch buffer (default `text-mode')
   dotspacemacs-scratch-mode 'text-mode
   ;; List of themes, the first of the list is loaded when spacemacs starts.
   ;; Press <SPC> T n to cycle to the next theme in the list (works great
   ;; with 2 themes variants, one dark and one light)
   dotspacemacs-themes '(
                         tsdh-light
                         zenburn
                         sanityinc-solarized-dark
                         sanityinc-solarized-light
                         sanityinc-tomorrow-blue
                         brin
                         ritchie
                         )
   ;; If non nil the cursor color matches the state color in GUI Emacs.
   dotspacemacs-colorize-cursor-according-to-state t
   ;; Default font. `powerline-scale' allows to quickly tweak the mode-line
   ;; size to make separators look not too crappy.
   dotspacemacs-default-font '("DejaVu Sans Mono"
                               :size 16
                               :weight normal
                               :width normal
                               :powerline-scale 1.1)
   ;; The leader key
   dotspacemacs-leader-key "SPC"
   ;; The leader key accessible in `emacs state' and `insert state'
   ;; (default "M-m")
   dotspacemacs-emacs-leader-key "M-m"
   ;; Major mode leader key is a shortcut key which is the equivalent of
   ;; pressing `<leader> m`. Set it to `nil` to disable it. (default ",")
   dotspacemacs-major-mode-leader-key ","
   ;; Major mode leader key accessible in `emacs state' and `insert state'.
   ;; (default "C-M-m)
   dotspacemacs-major-mode-emacs-leader-key "C-M-m"
   ;; These variables control whether separate commands are bound in the GUI to
   ;; the key pairs C-i, TAB and C-m, RET.
   ;; Setting it to a non-nil value, allows for separate commands under <C-i>
   ;; and TAB or <C-m> and RET.
   ;; In the terminal, these pairs are generally indistinguishable, so this only
   ;; works in the GUI. (default nil)
   dotspacemacs-distinguish-gui-tab nil
   ;; (Not implemented) dotspacemacs-distinguish-gui-ret nil
   ;; The command key used for Evil commands (ex-commands) and
   ;; Emacs commands (M-x).
   ;; By default the command key is `:' so ex-commands are executed like in Vim
   ;; with `:' and Emacs commands are executed with `<leader> :'.
   dotspacemacs-command-key ":"
   ;; If non nil `Y' is remapped to `y$'. (default t)
   dotspacemacs-remap-Y-to-y$ t
   ;; Name of the default layout (default "Default")
   dotspacemacs-default-layout-name "Default"
   ;; If non nil the default layout name is displayed in the mode-line.
   ;; (default nil)
   dotspacemacs-display-default-layout nil
   ;; If non nil then the last auto saved layouts are resume automatically upon
   ;; start. (default nil)
   dotspacemacs-auto-resume-layouts nil
   ;; Location where to auto-save files. Possible values are `original' to
   ;; auto-save the file in-place, `cache' to auto-save the file to another
   ;; file stored in the cache directory and `nil' to disable auto-saving.
   ;; (default 'cache)
   dotspacemacs-auto-save-file-location 'cache
   ;; Maximum number of rollback slots to keep in the cache. (default 5)
   dotspacemacs-max-rollback-slots 5
   ;; If non nil then `ido' replaces `helm' for some commands. For now only
   ;; `find-files' (SPC f f), `find-spacemacs-file' (SPC f e s), and
   ;; `find-contrib-file' (SPC f e c) are replaced. (default nil)
   dotspacemacs-use-ido nil
   ;; If non nil, `helm' will try to minimize the space it uses. (default nil)
   dotspacemacs-helm-resize nil
   ;; if non nil, the helm header is hidden when there is only one source.
   ;; (default nil)
   dotspacemacs-helm-no-header nil
   ;; define the position to display `helm', options are `bottom', `top',
   ;; `left', or `right'. (default 'bottom)
   dotspacemacs-helm-position 'bottom
   ;; If non nil the paste micro-state is enabled. When enabled pressing `p`
   ;; several times cycle between the kill ring content. (default nil)
   dotspacemacs-enable-paste-micro-state nil
   ;; Which-key delay in seconds. The which-key buffer is the popup listing
   ;; the commands bound to the current keystroke sequence. (default 0.4)
   dotspacemacs-which-key-delay 0.4
   ;; Which-key frame position. Possible values are `right', `bottom' and
   ;; `right-then-bottom'. right-then-bottom tries to display the frame to the
   ;; right; if there is insufficient space it displays it at the bottom.
   ;; (default 'bottom)
   dotspacemacs-which-key-position 'bottom
   ;; If non nil a progress bar is displayed when spacemacs is loading. This
   ;; may increase the boot time on some systems and emacs builds, set it to
   ;; nil to boost the loading time. (default t)
   dotspacemacs-loading-progress-bar t
   ;; If non nil the frame is fullscreen when Emacs starts up. (default nil)
   ;; (Emacs 24.4+ only)
   dotspacemacs-fullscreen-at-startup nil
   ;; If non nil `spacemacs/toggle-fullscreen' will not use native fullscreen.
   ;; Use to disable fullscreen animations in OSX. (default nil)
   dotspacemacs-fullscreen-use-non-native nil
   ;; If non nil the frame is maximized when Emacs starts up.
   ;; Takes effect only if `dotspacemacs-fullscreen-at-startup' is nil.
   ;; (default nil) (Emacs 24.4+ only)
   dotspacemacs-maximized-at-startup nil
   ;; A value from the range (0..100), in increasing opacity, which describes
   ;; the transparency level of a frame when it's active or selected.
   ;; Transparency can be toggled through `toggle-transparency'. (default 90)
   dotspacemacs-active-transparency 90
   ;; A value from the range (0..100), in increasing opacity, which describes
   ;; the transparency level of a frame when it's inactive or deselected.
   ;; Transparency can be toggled through `toggle-transparency'. (default 90)
   dotspacemacs-inactive-transparency 90
   ;; If non nil unicode symbols are displayed in the mode line. (default t)
   dotspacemacs-mode-line-unicode-symbols t
   ;; If non nil smooth scrolling (native-scrolling) is enabled. Smooth
   ;; scrolling overrides the default behavior of Emacs which recenters the
   ;; point when it reaches the top or bottom of the screen. (default t)
   dotspacemacs-smooth-scrolling t
   ;; If non nil line numbers are turned on in all `prog-mode' and `text-mode'
   ;; derivatives. If set to `relative', also turns on relative line numbers.
   ;; (default nil)
   dotspacemacs-line-numbers nil
   ;; If non-nil smartparens-strict-mode will be enabled in programming modes.
   ;; (default nil)
   dotspacemacs-smartparens-strict-mode nil
   ;; Select a scope to highlight delimiters. Possible values are `any',
   ;; `current', `all' or `nil'. Default is `all' (highlight any scope and
   ;; emphasis the current one). (default 'all)
   dotspacemacs-highlight-delimiters 'all
   ;; If non nil advises quit functions to keep server open when quitting.
   ;; (default nil)
   dotspacemacs-persistent-server nil
   ;; List of search tool executable names. Spacemacs uses the first installed
   ;; tool of the list. Supported tools are `ag', `pt', `ack' and `grep'.
   ;; (default '("ag" "pt" "ack" "grep"))
   dotspacemacs-search-tools '("ag" "pt" "ack" "grep")
   ;; The default package repository used if no explicit repository has been
   ;; specified with an installed package.
   ;; Not used for now. (default nil)
   dotspacemacs-default-package-repository nil
   ;; Delete whitespace while saving buffer. Possible values are `all'
   ;; to aggressively delete empty line and long sequences of whitespace,
   ;; `trailing' to delete only the whitespace at end of lines, `changed'to
   ;; delete only whitespace for changed lines or `nil' to disable cleanup.
   ;; (default nil)
   dotspacemacs-whitespace-cleanup nil

   ;; Evil escape
   evil-escape-key-sequence "fj"
   evil-escape-unordered-key-sequence "true"

   ;; Avy
   avy-all-windows 'all-frames
   ))

(defun dotspacemacs/user-init ()
  "Initialization function for user code.
It is called immediately after `dotspacemacs/init', before layer configuration
executes.
 This function is mostly useful for variables that need to be set
before packages are loaded. If you are unsure, you should try in setting them in
`dotspacemacs/user-config' first."
  ;; ABB Proxy
  (setq url-proxy-services '(("no_proxy" . "work\\.com")
                             ("http" . "proxy.se.abb.com:81")))
  )

(defun dotspacemacs/user-config ()
  "Configuration function for user code.
This function is called at the very end of Spacemacs initialization after
layers configuration.
This is the place where most of your configurations should be done. Unless it is
explicitly specified that a variable should be set before a package is loaded,
you should place you code here."

  ;; Keybindings

  (define-key evil-normal-state-map
                 "\\" 'evil-repeat-find-char-reverse)
  (define-key evil-normal-state-map (kbd "C-a") 'evil-numbers/inc-at-pt)
  (define-key evil-normal-state-map (kbd "C-x") 'evil-numbers/dec-at-pt)

  ;; Ascii table
  (defun ascii-table ()
    "Display basic ASCII table (0 thru 128)."
    (interactive)
    (switch-to-buffer "*ASCII*")
    (erase-buffer)
    (setq buffer-read-only nil)        ;; Not need to edit the content, just read mode (added)
    (local-set-key "q" 'bury-buffer)   ;; Nice to have the option to bury the buffer (added)
    (save-excursion (let ((i -1))
                      (insert "ASCII characters 0 thru 127.\n\n")
                      (insert " Hex  Dec  Char|  Hex  Dec  Char|  Hex  Dec  Char|  Hex  Dec  Char\n")
                      (while (< i 31)
                        (insert (format "%4x %4d %4s | %4x %4d %4s | %4x %4d %4s | %4x %4d %4s\n"
                                        (setq i (+ 1  i)) i (single-key-description i)
                                        (setq i (+ 32 i)) i (single-key-description i)
                                        (setq i (+ 32 i)) i (single-key-description i)
                                        (setq i (+ 32 i)) i (single-key-description i)))
                        (setq i (- i 96))))))

  ;; ===============
  ;; Macros
  ;; ===============

  ;; M:
  ;;
  ;; (fset 'name
  ;;    [...])
  ;; @
  ;;
  ;; =>
  ;;
  ;; (setq name-macro [...])
  ;; (fset 'name name-macro)
  ;; (evil-set-register ?@ name-macro)
  ;;
  (setq dm-macro [
    ?k ?k ?J ?y ?y ?p ?k ?0 ?w ?c ?E ?s ?e ?t ?q escape ?f ?\' ?x ?E ?a ?- ?m ?a ?c ?r ?o escape ?j ?0
    ?W ?E ?a ?- ?m ?a ?c ?r ?o escape ?a return escape ?$ ?i return escape ?k ?d ?d ?k ?J ?i ?  escape ?B ?l ?y ?E ?P ?a ?  escape ?b ?h ?d ?E ?$ ?h ?x ?y ?y ?p
    ?W ?c ?E ?? escape ?0 ?w ?c ?E ?e ?v ?i ?l ?- ?s ?e ?t ?- ?r ?e ?g ?i ?s ?t ?e ?r escape ?W])
  (fset 'dm dm-macro)
  (evil-set-register ?M dm-macro)

  ;; A:
  ;;
  ;; @
  ;; ...code...
  ;; /* Tested function call /
  ;; <func-call>
  ;; ...code...
  ;;
  ;; =>
  ;;
  ;; ...code...
  ;;
  ;; // Act
  ;; <func-call>
  ;;
  ;; // Assert@
  ;; ...code...
  ;;
  (setq act-assert-macro [?/ ?\\ ?/ ?\\ ?* ?  ?T ?e ?s ?t ?e return ?C return ?  ?  ?  ?  ?/ ?/ ?  ?A ?c ?t ?f ?j ?j ?o return ?  ?  ?  ?  ?/ ?/ ?  ?A ?s ?s ?e ?r ?t ?f ?j])
  (fset 'act-assert act-assert-macro)
  (evil-set-register ?A act-assert-macro)

  ;; C:
  ;;
  ;; @
  ;; ...code...
  ;; /* <comment 1> */
  ;; ...code...
  ;; /* <comment 2> */
  ;; ...code...
  ;;
  ;; =>
  ;;
  ;; ...code...
  ;; @...code...
  ;; /* <comment 2> */
  ;; ...code...
  ;;
  (setq comment-del-macro [?/ ?\\ ?/ ?\\ ?* return ?d ?d ?k ?/ ?\\])
  (fset 'comment-del comment-del-macro)
  (evil-set-register ?C comment-del-macro)

  ;; D:
  ;; @   CPPTEST_TEST(<test-func1>);
  ;;     ...
  ;;     CPPTEST_TEST(<test-func2>);
  ;;
  ;; =>
  ;;
  ;;    CPPTEST_TEST_DS(<test-func1>, CPPTEST_DS("<test-func1>"));
  ;;    ...
  ;; @  CPPTEST_TEST(<test-func2>);
  ;;
  (setq ds-declaration-macro [?f ?\( ?i ?_ ?D ?S ?f ?j ?f ?\( ?a ?  ?f ?j ?% ?% ?i ?  escape ?y ?i ?\) ?p ?B ?B ?h ?x ?E ?a ?, ?  ?C ?P ?P ?T ?E ?S ?T ?_ ?D ?S escape ?w ?v ?i ?W ?s ?\" ?v ?v ?v ?a ?\" ?s ?\) ?h ?h ?x ?x ?% ?h ?x ?/ ?C ?P ?P ?T ?E ?S ?T ?_ ?T ?E ?S ?T ?\( return ?0])
  (fset 'ds-declaration ds-declaration-macro)
  (evil-set-register ?D ds-declaration-macro)

  ;; G:
  ;;
  ;; <var> <type>@
  ;; =>
  ;; GIOTEST_ASSERT_EQUAL_<type>_DS2(<var>);
  ;; [ENV]<var>
  ;; @
  ;;
  (setq gio-assert-macro [?y ?y ?p ?k ?W ?d ?a ?W ?B ?P ?a ?  escape ?B ?h ?x ?i ?G ?I ?O ?T ?E ?S ?T ?_ ?A ?S ?S ?E ?R ?T ?_ ?E ?Q ?U ?A ?L ?_ escape ?E ?a ?_ ?D ?S ?2 escape ?a ?\( escape ?l ?x ?A ?\) ?\; escape ?j ?d ?a ?W ?B ?i ?\[ ?O ?U ?T ?\] escape ?B ?j ?0])
  (fset 'gio-assert gio-assert-macro)
  (evil-set-register ?G gio-assert-macro)

  ;; P:
  ;;
  ;; @
  ;; ...code...
  ;; CPPTEST_POST_CONDITION_PTR(...)
  ;; ...code...
  ;; CPPTEST_POST_CONDITION_PTR(...)
  ;; ...code...
  ;;
  ;; =>
  ;;
  ;; ...code...
  ;; @...code...
  ;; CPPTEST_POST_CONDITION_PTR(...)
  ;; ...code...
  ;;
  (setq del-post-cond-ptr-macro [?/ ?C ?P ?P ?T ?E ?S ?T ?_ ?P ?O ?S ?T ?_ ?C ?O ?N ?D ?I ?T ?I ?O ?N ?_ ?P ?T ?R return ?d ?d ?k ?/ ?\\])
  (fset 'del-post-cond-ptr del-post-cond-ptr-macro)
  (evil-set-register ?P del-post-cond-ptr-macro)


  ;; R:
  ;;
  ;; ...code...
  ;; @void <class>::test_<func1>()
  ;; {
  ;;     ...code...
  ;; }
  ;;
  ;; void <class>::test_<func2>()
  ;; {
  ;;     ...code...
  ;;
  ;; =>
  ;;
  ;; void <class>::test_<func1>()
  ;; {
  ;;    // Arrange
  ;;     ...code...
  ;; }
  ;;
  ;; @void <class>::test_<func2>()
  ;; {
  ;;     ...code...
  ;;
  ;;
  (setq arrange-macro [?/ ?: ?: ?t ?e ?s ?t ?_ return ?j ?o ?  ?  ?  ?  ?/ ?/ ?  ?A ?r ?r ?a ?n ?f ?g backspace ?g ?e backspace backspace backspace ?g ?e ?j ?f])
  (fset 'arrange arrange-macro)
  (evil-set-register ?R arrange-macro)

  ;; T:
  ;;
  ;; <CFoo> @
  ;; =>
  ;; TestData<CFoo> tdFoo;
  ;; CFoo& subject = tdFoo.GetValue();
  ;; @
  ;;
  (setq declare-test-data-for-class-macro "0i fj0dwEa fjDyiWa fjpBstdfjyypki    TestData<fjEa>fjA;fjj0i    fjEa& subject =fjA.GetValue();fjofj")
  (fset 'declare-test-data-for-class declare-test-data-for-class-macro)
  (evil-set-register ?T declare-test-data-for-class-macro)

  ;; H:
  ;;
  ;; @
  ;; ...
  ;; <type> <class>::test_<testname>()
  ;; {
  ;;    ...
  ;;    // Assert
  ;;
  ;; =>
  ;;
  ;; <type> <class>::test_<testname>()
  ;; {
  ;;    ...
  ;;    // Assert
  ;;    GIOTEST_CREATE_HEADER(
  ;;        "test_<testname>",
  ;;        "<type> <class>::test_<testname>()");@
  ;;
  (setq report-header-macro [?/ ?: ?: ?t ?e ?s ?t ?_ return ?0 ?y ?% ?/ ?\\ ?/ ?\\ ?/ ?  ?A ?s ?s ?e ?r ?t return ?o escape ?p ?F ?: ?l ?y ?t ?\( ?0 ?P ?a ?  ?f ?j ?0 ?v ?E ?s ?\" ?E ?a ?, ?f ?j ?w ?v ?% ?s ?\" ?O ?G ?I ?O ?T ?E ?S ?T ?_ ?C ?R ?E ?A ?T ?E ?_ ?H ?E ?A ?D ?E ?R ?\( ?f ?j ?j ?0 ?i ?  ?  ?  ?  ?  ?  ?  ?  ?f ?j ?f ?, ?a return ?f ?j ?A ?\) ?\; ?f ?j])
  (fset 'report-header report-header-macro)
  (evil-set-register ?H report-header-macro)

  ;; V:
  ;;
  ;; @test_<func>
  ;;
  ;; =>
  ;;
  ;; @${test_suite_loc}/test_<func>.csv
  ;;
  (setq csv-file-path-macro "i${test_suite_loc}/fjA.csvfj0")
  (fset 'csv-file-path csv-file-path-macro)
  (evil-set-register ?V csv-file-path-macro)

  ;; S:
  ;;
  ;; <var> <type>@
  ;;
  ;; =>
  ;;
  ;; GIOTEST_ASSERT_EQUAL_<type>_DS2(<var>);
  ;; @[OUT]<var>
  ;;
  (setq gio-assert-macro [?y ?y ?p ?k ?W ?d ?a ?W ?B ?P ?a ?  escape ?B ?h ?x ?i ?G ?I ?O ?T ?E ?S ?T ?_ ?A ?S ?S ?E ?R ?T ?_ ?E ?Q ?U ?A ?L ?_ escape ?E ?a ?_ ?D ?S ?2 escape ?a ?\( escape ?l ?x ?A ?\) ?\; escape ?j ?d ?a ?W ?B ?i ?\[ ?O ?U ?T ?\] escape ?B])
  (fset 'gio-assert gio-assert-macro)
  (evil-set-register ?S gio-assert-macro)

)

;; Do not write anything past this comment. This is where Emacs will
;; auto-generate custom variable definitions.
