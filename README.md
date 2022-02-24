# re:open

As a WM user, I have keybindings for my most used actions. However, can get a bit trigger happy, especially with `mod1 + q`, which force quits the focused X11 program.

I was looking for a solution similar to the `ctrl-shift-t` on most modern browsers, to reopen the most recently closed tab, and stumbled across [this](https://askubuntu.com/questions/883376/is-there-a-shortcut-to-re-open-a-recently-closed-program). The would neccesitate a cron job or similar.

And as if to further prove a point, early on while working on this, I closed all the terminals on the focused desktop; [however, thanks to vim swap, nothing was lost].

***
Big thanks to [@outofink](https://github.com/outofink) for suggesting `ss -p` instead of `wmctrl -lp`.
