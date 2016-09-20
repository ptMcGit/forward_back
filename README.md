# Forward Back #

## What does it do? ##

It makes it easier to traverse directories in the command line.

`goto`    - show list of indexed directories

`goto $1` - when $1 is a number cd to directory on list with that index
            when $1 is a directory, cd to that directory and add to list

`drop`    - remove all directories from list except current directory

`drop $1` - remove directory with index $1 from list

`back`    - go to previous directory relative to current point in list

`forward` - go to next directory relative to current point in list

## Improvements ##

- back and forward are confusing terms for what they do e.g. back doesn't go back like a web browser...

- should the list reflect chronological order or a list of unique items; Or, should there be two lists? 

