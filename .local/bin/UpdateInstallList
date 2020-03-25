#!/bin/bash

pacman -Qqen > installedPacman-new.txt
diff --color installedPacman.txt installedPacman-new.txt
pacman -Qqem > installedAUR-new.txt
diff --color installedAUR.txt installedAUR-new.txt
mv -f installedPacman-new.txt installedPacman.txt
mv -f installedAUR-new.txt installedAUR.txt
