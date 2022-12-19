QML warning on MSVC 2019
========================

This directory is a minimal example showing an error on Windows 11 with Qt 6.3.1 using Microsoft Visual C++ Compiler 17.2.32630.192 (amd64).
The bug only manifests itself with the MSVC compiler and warning level `/W4`.
MinGW 11.2.0 does not show the same warning, neither does warning level `/W3`.

The warning appears during compilation in `main_qml.cpp (line 484)` and reads: "Declaration of 'argType' hides previous local declaration."
Since I have `/Wx` (treat warnings as errors) enabled the compilation fails.

Steps to reproduce:

* Configure CMake
* Click compile


* __Result:__ Warning appears in `main_qml.cpp (line 592)` which says: "Declaration of 'argType' hides previous local declaration."
* __Expected:__ No warning appears
