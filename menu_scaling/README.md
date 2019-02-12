QML menu scaling bug
====================

This repo is a minimal example showing an error on MacOS 10.13.6 with Qt 5.12.1.
You can find the bug here: https://bugreports.qt.io/browse/QTBUG-73687

The error shows up when scaling a menu in QML which is positioned close to the right window edge.
Scales smaller then 1 will make the menu have an undesired margin from the window edge.
Scales larger then 1 will make the menu overlap the window edge.
If the scale is 1 the menu behaves corretly.

Steps to reproduce:

* Compile and start application
* Click close to the right window edge

* Result: The appearing menu will have a margin between the right side of the menu and the window edege of half the menus width
* Expected: The right side of the menu should be touching the window edge


Another example:
* In main.qml comment line 17
* In main.qml uncomment line 18
* Compile and start application
* Click close to the right window edge

* Result: Half of the appearing menu will is hidden by the window edege
* Expected: The right side of the menu should be touching the window edge


Same is true for the bottom edge of the menu in respect to the bottom edge of the window.
I suspect the scale which is given to the menu is not taken into the reposition calculation.
