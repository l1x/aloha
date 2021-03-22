auth       optional   pam_faildelay.so  delay=3000000
auth [success=ok new_authtok_reqd=ok ignore=ignore user_unknown=bad default=die] pam_securetty.so
auth       requisite  pam_nologin.so
session [success=ok ignore=ignore module_unknown=ignore default=bad] pam_selinux.so close
session    required     pam_loginuid.so
session [success=ok ignore=ignore module_unknown=ignore default=bad] pam_selinux.so open
session       required   pam_env.so readenv=1
session       required   pam_env.so readenv=1 envfile=/etc/default/locale

@include common-auth

auth       optional   pam_group.so

session    required   pam_limits.so
session    optional   pam_lastlog.so
session    optional   pam_motd.so motd=/run/motd.dynamic
session    optional   pam_motd.so noupdate
session    optional   pam_mail.so standard
session    optional   pam_keyinit.so force revoke
session    required pam_mkhomedir.so skel=/etc/skel umask=0022 

@include common-account
@include common-session
@include common-password

