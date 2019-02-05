Screen scaling coordinates bug on MacOs
=======================================

The [bug was resolved](https://bugreports.qt.io/browse/QTBUG-69794) and is fixed in Qt 5.11.2 :)

This repo is a minimal example showing an error on MacOS 10.13.6 with Qt 5.11.1 (verified on two different machines, both with HiDPI displays)

The error is related to changing the display scaling during the runtime of the application.

Steps to reproduce:

* Start application
* Click on the button
* The mouse cursor will be reset to the top left corner of the button
* While the application is still running, open "System Preferences", open "Displays", "Scaled" should be selected
* Change the scaling to a different setting
* Switch back to the application and click the button again


* Result: The mouse position is wrongly offset
* Expected: Mouse cursor appears in the buttons top left corner

One oberservation I made is that once you click on the title bar and slightly move the window the mouse coordinates go back to the expected position. I guess maybe the scaling-was-changed event doesn't get applied properly somehow.
