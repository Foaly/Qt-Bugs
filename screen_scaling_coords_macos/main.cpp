#include <QApplication>
#include <QQmlApplicationEngine>
#include <QQmlContext>

#include "QMouseCursorHelper.h"

static QObject* mouseCursorHelper_Provider( QQmlEngine* /*engine*/, QJSEngine* /*scriptEngine*/ )
{
    return new QMouseCursorHelper;
}

int main(int argc, char *argv[])
{
    QApplication app(argc, argv);

    QQmlApplicationEngine engine;

    qmlRegisterSingletonType< QMouseCursorHelper >( "MouseCursorHelper", 0, 1, "MouseCursorHelper", mouseCursorHelper_Provider );

    // Load the QML and set the Context
    engine.load(QUrl(QStringLiteral("qrc:/main.qml")));

    return app.exec();
}
