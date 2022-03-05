neueCoreutils
===

<p align="center">
  <img src="https://github.com/xp-wdxp/neueCoreutils/blob/main/md/image/NCHeader.svg?raw=true" alt="NCHeader"/>
</p>


neueCoreutils is basically the [The GNU Coreutils](https://www.gnu.org/software/coreutils/) written in Swift.


The end goal is to have a fully functioning coreutils system completely written in Swift.

Also am a complete noob at Swift. So don't @me for the bad code.

Coded and tested on Fedora Workstation 35.

## Warning

neueCoreutils is in alpha-stage. It is highly experimental and you should not expect it to be a full replacement to GNU coreutils for some time.

Some apps are literally test applications (i.e. they don't do much other than print some info).

Along with this, not all utilities are ported to Swift, and some of them are completely written in C, like `uname`.

Also, all neuecoreutils components once compiled will have a `NC` suffix, like `NCmkdir`.

## How do I install this?

You can use `ncctl` to compile, install, and uninstall neuecoreutils.

## How do I compile this?

Check the [build instructions page.](md/text/BUILD_INSTRUCTIONS.md)

## List of components and their "phases"

Check the [status page.](md/text/STATUS.md)

## Roadmap

See the roadmap [here.](md/text/ROADMAP.md)