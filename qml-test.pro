TEMPLATE = app

QT += qml quick widgets

SOURCES += main.cpp \
    QMouseCursorHelper.cpp

RESOURCES += qml.qrc

HEADERS += \
    QMouseCursorHelper.h

LIBS += -framework ApplicationServices
