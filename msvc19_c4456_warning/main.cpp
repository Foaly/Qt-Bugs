#include <QGuiApplication>
#include <QQmlApplicationEngine>


int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);

    // setup the QML engine
    QQmlApplicationEngine qmlEngine;
    const QUrl url(u"qrc:/Tester/main.qml"_qs);
    QObject::connect(&qmlEngine, &QQmlApplicationEngine::objectCreated,
                     &app, [url](QObject *obj, const QUrl &objUrl) {
        if (!obj && url == objUrl)
            QCoreApplication::exit(-1);
    }, Qt::QueuedConnection);


    // load QML and run application
    qmlEngine.load(url);
    // start the application
    return app.exec();
}
