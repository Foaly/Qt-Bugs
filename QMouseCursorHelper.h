#ifndef TESTOBJECT_H
#define TESTOBJECT_H

#include <QObject>
#include <QPointF>

class QMouseCursorHelper : public QObject
{
    Q_OBJECT
public:
    QMouseCursorHelper( QObject * parent = nullptr ) : QObject( parent ) {}

    Q_INVOKABLE void    setMouseCursorPosition(const QPointF& point);

private:


};

#endif // TESTOBJECT_H
