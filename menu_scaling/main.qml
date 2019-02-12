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
            text: "A..."
        }
        MenuItem {
            text: "B..."
        }
        MenuItem {
            text: "C..."
        }
        MenuItem {
            text: "D Quite the long option..."
        }
        MenuItem {
            text: "E..."
        }
        MenuItem {
            text: "F..."
        }
        MenuItem {
            text: "G..."
        }
        MenuItem {
            text: "H Quite the long option..."
        }
        MenuItem {
            text: "I..."
        }
        MenuItem {
            text: "J..."
        }
        MenuItem {
            text: "K..."
        }
        MenuItem {
            text: "L Quite the long option..."
        }
        MenuItem {
            text: "M..."
        }
        MenuItem {
            text: "N..."
        }
        MenuItem {
            text: "O..."
        }
        MenuItem {
            text: "P Quite the long option..."
        }
        MenuItem {
            text: "Q..."
        }
        MenuItem {
            text: "R..."
        }
        MenuItem {
            text: "S..."
        }
        MenuItem {
            text: "T Quite the long option..."
        }
        MenuItem {
            text: "U..."
        }
        MenuItem {
            text: "V..."
        }
        MenuItem {
            text: "W..."
        }
        MenuItem {
            text: "X Quite the long option..."
        }
        MenuItem {
            text: "Y..."
        }
        MenuItem {
            text: "Z..."
        }
        MenuItem {
            text: "AA..."
        }
        MenuItem {
            text: "AB Quite the long option..."
        }
        MenuItem {
            text: "AC..."
        }
        MenuItem {
            text: "AD..."
        }
        MenuItem {
            text: "AE..."
        }
        MenuItem {
            text: "AF Quite the long option..."
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
