#!/bin/bash

clear
cat <<"ABOUT"

------------------ ABOUT ------------------
    I wrote this because, I am writing a
  script that will run a command for all
  apps we have on Heroku.
    What was I trying to figure out?

      I was trying to figure out how to
    dynamically pass in the filename to
    redirect all output to.

    For example, when I run:

      run_cmd "app_config" 'heroku config #app'

    For the app "example_app", it runs:

      heroku config --app example_app >app_config

------------------- END -------------------

ABOUT

dir="/"
outfile="/Users/jearsh/variable_manipulation.log"

cmd="ls -C #dir"
newcmd="${cmd/\#dir/$dir}"
#newcmd="${newcmd/\#outfile/$outfile}"

cat <<BEFORE
$(clear)
-------------------------
  Before interpolation:
-------------------------

    ${cmd}

BEFORE


cat <<AFTER

-------------------------
  After interpolation:
-------------------------

    ${newcmd}

AFTER

cat <<OUTPUT

-----------
  Output:
-----------

  \$(${newcmd} >>$outfile)
  $(${newcmd} >>$outfile)

  \$(ls /Users/jearsh/*.log)
  $(ls /Users/jearsh/*.log)

  \$(cat /Users/jearsh/variable_man*.log)
  $(cat /Users/jearsh/variable_man*.log)

OUTPUT

