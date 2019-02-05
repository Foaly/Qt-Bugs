import QtQuick 2.11
import QtQuick.Controls 2.4

ApplicationWindow {
    id: appWindow
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")


    Menu {
        id: menu

        transformOrigin: Item.TopLeft
        scale: 0.5
        // scale: 1.5 // uncomment for second test

        MenuItem {
            text: "New..."
        }
        MenuItem {
            text: "Open..."
        }
        MenuItem {
            text: "Save"
        }
        MenuItem {
            text: "Quite the long option..."
        }
    }

    MouseArea {
        anchors.fill: parent

        onClicked: {
            menu.x = mouse.x
            menu.y = mouse.y
            menu.open()
        }
    }

}
