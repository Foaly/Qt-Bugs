QML warning on MSVC 2019
========================

You can find the bug report here: https://bugreports.qt.io/browse/QTBUG-109508

The problem is fixed in Qt version 6.4.1, so I closed the bug report.

This directory is a minimal example showing an error on Windows 11 with Qt 6.3.1 using Microsoft Visual C++ Compiler 17.2.32630.192 (amd64).
The bug only manifests itself with the MSVC compiler and warning level `/W4`.
MinGW 11.2.0 does not show the same warning, neither does warning level `/W3`.

The warning appears during compilation in `main_qml.cpp (line 484)` and reads: "C4456: Declaration of 'argType' hides previous local declaration."
Since I have `/Wx` (treat warnings as errors) enabled the compilation fails.

Steps to reproduce:

* Configure CMake
* Click compile


* __Result:__ Warning appears in `main_qml.cpp (line 592)` which says: "Declaration of 'argType' hides previous local declaration."
* __Expected:__ No warning appears
