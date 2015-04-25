#!/bin/sh

rm -rf src
cvs -d anoncvs@anoncvs.NetBSD.org:/cvsroot co -P src/sys/rump/listsrcdirs
sh ./src/sys/rump/listsrcdirs -c all | xargs cvs -d anoncvs@anoncvs.netbsd.org:/cvsroot -z3 co -P
git add -A src
git status
