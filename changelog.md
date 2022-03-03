Release 0.1a
===

This is the first alpha release version of neuecoreutils!
Here are all the changes, known issues, and links to the release downloads.

### Known Issues/Limitations

* `mv` and `cp` cannot paste directly to a directory.

Example, mv needs to be used like this:
```sh
$ NCmv foo /path/to/paste/foo
```
Not like this:
```sh
$ NCmv foo /path/to/paste/
```
* `date` can only show one type of date system

* `ln` has unintended side effects and is unusable

* `uname` without any arguments causes a segfault

### Downloads

Available at releases.