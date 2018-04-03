#!/bin/bash

mydir=$(pwd)

if command -v python3 &>/dev/null
then
  PYTHON=python3
else
  PYTHON=python
fi

$PYTHON "$mydir/setup.py" install

cp "$mydir/setup2.py" "$HOME/setup2.py"
$PYTHON "$HOME/setup2.py"
rm "$HOME/setup2.py"
