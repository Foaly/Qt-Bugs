DragHandler right click bug
===========================

This directory is a minimal example showing a bug in `DragHandler` on Windows 11 with Qt 6.4.1 using MinGW 11.2.0.

The bug appears with the QML component `DragHandler` with the property `acceptedButtons` set to only `Qt.LeftButton`.
During dragging with the left mouse button `onActiveChanged` is triggered again when the right mouse button is pressed.

Steps to reproduce:

* Configure CMake
* Click compile & run
* Hover over the red rectangle
* Press the left mouse button and drag the element around ("Active changed!" should be printed in the console)
* While dragging press and release the right mouse button


* __Result:__ "Active changed!" is printed in the console 2 more times.
* __Expected:__ `onActiveChanged` should not be triggered by mouse buttons not defined in the `acceptedButtons` property.
