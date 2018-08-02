import QtQuick 2.11
import QtQuick.Controls 2.4
import MouseCursorHelper 0.1

ApplicationWindow {
    id: appWindow
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

    Button {
        id: someBtn
        text: qsTr("Click Me!")
        anchors.centerIn: parent

        MouseArea {
            anchors.fill: parent

            onClicked: {
                var globalCoordinates = someBtn.mapToItem(appWindow.contentItem, 0, 0)

                globalCoordinates.x += appWindow.x
                globalCoordinates.y += appWindow.y

                MouseCursorHelper.setMouseCursorPosition(globalCoordinates)
            }
        }


    }
}
