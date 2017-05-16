#!/bin/sh
# $Id: .xsession,v 1.2 2001/06/28 22:08:02 grahn Exp $

if [ -x ~/.Xclients ]; then
  exec ~/.Xclients
fi
