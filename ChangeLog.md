# pydscheck ChangeLog

## v1.4.0

**Released: 2019-06-06**

Added checks to see if a `param` or an `ivar` has a declared type, as part
of the `--extra-checks` option.

## v1.3.1

**Released: 2019-06-05**

Fixed a bug where a function that returns nothing, but which contains a
function that returns something, would appear to be a function that returns
something.

## v1.3.0

**Released: 2019-06-05**

Added the start of an "extra checks" facility. This goes beyond the initial
simple check the tool was designed to perform and starts to look inside the
doc-string and check for other things. Those other things right now
includes:

- If the code of a function returns something, a `:returns:` must appear in
  the doc string.
- If a `:returns:` appears in the doc string, there should also be a
  `:rtype:`.
- If a `:raises:` appears in the doc string, it should be of the form
  `:raises <error-class>:`.

## v1.2.2

**Released: 2019-05-31**

- Better handle the user <kbd>Ctrl+C</kbd>ing their way out.
- Better report ignored directories.

## v1.2.1

**Released: 2019-04-28**

Internal changes and improvements.

## v1.2.0

**Released: 2019-04-26**

- Added support for an exit status
- Added support for ignoring directories
- Now checks the current directory, and below, by default

## v1.1.0

**Released: 2019-04-26**

Added support for recursive checking.

## v1.0.1

**Released: 2019-04-16**

Reduced some false positives.

## v1.0.0

**Released: 2019-04-16**

Initial release.

[//]: # (ChangeLog.md ends here)
