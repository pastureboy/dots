#!/usr/bin/env bash

# A script allowing to minimize and un-minimize clients in a LIFO way
# (last minimized client will be un-minimized first).
# If only one window is minimized, Mod-Unminimizekey works like a toggle.
# 
# Run it (`chmod +x unminimize.sh ; ./unminimize.sh`) or add it to `autostart`.


Mod=${Mod:-Mod4}
Minimizekey=Shift-z
Unminimizekey=z

hc() { "${herbstclient_command[@]:-herbstclient}" "$@" ;}


# initialize a global minimization counter
hc silent new_attr uint my_minimized_counter 1


MINIMIZE_COMMAND="and \
  , substitute C my_minimized_counter new_attr uint clients.focus.my_minimized_age C \
  , set_attr my_minimized_counter +=1 \
  , set_attr clients.focus.minimized true"


# minimize focused window
hc keybind $Mod-$Minimizekey $MINIMIZE_COMMAND


# unminimize last window of a tag
# if the `my_minimized_age` attribute does not exist (i.e. the window has not been
#  minimized with this script), use arbitrary order to unminimize
hc keybind $Mod-$Unminimizekey mktemp string LASTCLIENTATT mktemp uint LASTAGEATT chain \
  . set_attr LASTAGEATT 0 \
  . foreach CLIENT clients. and \
    , sprintf MINATT "%c.minimized" CLIENT \
        compare MINATT "=" "true" \
    , sprintf TAGATT "%c.tag" CLIENT substitute FOCUS "tags.focus.name" \
        compare TAGATT "=" FOCUS \
    , sprintf AGEATT "%c.my_minimized_age" CLIENT or \
      case: and \
         : ! get_attr AGEATT \
         : compare LASTAGEATT "=" 0 \
      case: and \
         : substitute LASTAGE LASTAGEATT \
             compare AGEATT 'gt' LASTAGE \
         : substitute AGE AGEATT \
             set_attr LASTAGEATT AGE \
    , set_attr LASTCLIENTATT CLIENT \
  . or \
    case: and \
      , compare LASTCLIENTATT "!=" "" \
      , substitute CLIENT LASTCLIENTATT chain \
        : sprintf MINATT "%c.minimized" CLIENT \
            set_attr MINATT false \
        : sprintf AGEATT "%c.my_minimized_age" CLIENT \
            try remove_attr AGEATT \
    case: $MINIMIZE_COMMAND
