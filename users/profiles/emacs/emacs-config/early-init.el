;; -*- lexical-binding: t -*-
(push '(menu-bar-lines . 0) default-frame-alist) ;; remove mini menu
(push '(tool-bar-lines . 0) default-frame-alist) ;; remove tool icon
(push '(vertical-scroll-bars) default-frame-alist) ;; no scroll bar
(setq inhibit-startup-screen t
      inhibit-startup-echo-area-message t)
