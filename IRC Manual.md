# ---Configuration---

/plugin unload xfer
/set weechat.plugin.autoload "* ,!xfer"
/set irc.ctcp.* ""
/set irc.server_default.msg_part ""
/set irc.server_default.msg_quit ""
/set irc.server_default.tls on
/set irc.server_default.autojoin ""
/ignore add * dcc*
/save

## ---URLS---
> https://weechat.org/files/doc/weechat/stable/weechat_quickstart.en.html
> https://weechat.org/files/doc/weechat/stable/weechat_user.en.html

### Example of a Server

 Details: irc.mirror.st Port: 6697 SSL/TLS enabled
 Command: /server add MYSERVER irc.mirror.st/6697 -tls

# ---Commands---

## General
/fset * or /set # Browse settings

## Server related
/server add <MONIKER> <url>/6697 -tls # 6667 is the non TLS/SSL port
/connect <name>
/disconnect

/server list
/server del <name> # Delete server

## Utilities
Alt+← / Alt+→ or F5 / F6: switch to previous/next buffer
F1 / F2: scroll bar with list of buffers ("buflist")
F7 / F8: switch to previous/next window (when screen is split)
F9 / F10: scroll title bar
F11 / F12: scroll nicklist
Tab: complete text in input bar, like in your shell
PgUp / PgDn: scroll text in current buffer
Alt+a: jump to buffer with activity (in hotlist)

/buffer move <number> # Reorder buffers

## Communication related
/topic # Shows or sets channel topic
/join #<channel>
/part #<channel> # Leave channel but keep buffer open
/close # Leave closing buffer

## User related
/whois <nick> # Displays user info
/msg <nick> <message> # Send private messages
/invite <nick> #<channel>;
/names # check nicks
/ignore add <nick>!user@host $or$ /ignore <NICK> $or$ /ignore <THEIR_IP_MASK>


# ---Other---
You can share configuration files *.conf except the file sec.conf which contains your passwords ciphered with your passphrase.

Weechat client hardening:
https://weechat.org/files/doc/weechat/stable/weechat_faq.en.html

Disable DCC (file sharing):

/plugin unload xfer
 set weechat.plugin.autoload "*,!xfer"

/save

## Prevent leaks
/set irc.ctcp.version ""          # Block version replies (fingerprinting)
/set irc.ctcp.user ""             # Block user info leaks
/set irc.server_default.ssl on    # Enforce TLS/6697 everywhere
/set irc.look.autojoin ""         # No auto-join (manual only)
/ignore *dcc*                     # Catch any residual DCC

/save

## "Paranoia"
from: https://weechat.org/files/doc/weechat/stable/weechat_faq.en.html#security

/set irc.server_default.msg_part ""
/set irc.server_default.msg_quit ""
/set irc.ctcp.clientinfo ""
/set irc.ctcp.source ""
/set irc.ctcp.time ""
/set irc.ctcp.version ""
/set irc.ctcp.ping ""
/set irc.ctcp.finger ""
/set irc.ctcp.userinfo ""
/plugin unload xfer
/set weechat.plugin.autoload "*,!xfer"

/save

  Define a passphrase and use secured data wherever you can for sensitive data like passwords: see /help secure and /help on options (if you can use secured data, it is written in the help).

For example:

/secure passphrase xxxxxxxxxx
/secure set libera_username username
/secure set libera_password xxxxxxxx
/set irc.server.libera.sasl_username "${sec.data.libera_username}"
/set irc.server.libera.sasl_password "${sec.data.libera_password}"
