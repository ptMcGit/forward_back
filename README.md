# Forward Back #

## What does it do? ##

It makes it easier to traverse directories in the command line.
`goto` is essentially an alias for cd with greater functionality, and complementary functions.

There are two lists and each has respective commands for traversing within the lists:

- "unique list"     - a list of unique directories that have been visited using goto
- "history list"    - an ordered list reflecting directory traversal using goto

When traversing with `goto` the content of both of these lists is changed.
When traversing with commands specific to a list, that list is modified e.g. history commands only affect the history list.

`cd` and related commands do not modify either list.

### How do I use it ? ###

#### `goto` ####

Source `forward_back` into your environment.

This command affects both directory lists.

`goto`    - show list of indexed directories

`goto $1` - when `$1` is a number prefixed with `-` cd to directory on unique list with that index
            when `$1` is a directory, attempt to cd to that directory.
            When `$1` is `-` `cd -`

#### Unique List Commands ####

These commands only affect the unique list.

`drop`      - remove all directories from list except current directory

`drop $1`   - remove directory with index $1 from list

`up`        - cd to previous item in the list

`down`      - cd to next item in the list

#### History List Commands ####

These commands only affect the history list.

`back`      - cd to previous item in list.

`forward`   - cd to next item in the list.

## Customization ##

If you have identifier conflicts see the top of the file.
Aliases are very easily modified to suit a user's needs.

Set `_GOTO_UPDATE_HISTORY` to a non-empty string to cause list commands to update history.

## Tests ##

- Creates some temporary directories to perform tests.

- For each test:
  - re-source in ./forward_back
  - run a function
  - test side effects

- `setup ()`        - reset for each test and describe function that's being tested
- `expect_equal ()` - value that is being tested, get said value, is said value `-eq $3`?
  - if false exit
  - if true continue with tests

## Improvements ##

- Printing side-by-side in color with `pr` would be cool see problems with `goto | cat -e`
