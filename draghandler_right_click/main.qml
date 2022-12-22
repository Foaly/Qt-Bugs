import QtQuick

Window {
    id: appWindow

    width: 800
    height: 600

    visible: true
    color: "grey"

    Rectangle {
        id: rect

        x: 100
        y: 100
        width: 50
        height: 50

        color: "darkred"

        MouseArea {
            id: mouseHoverArea

            anchors.fill: rect

            hoverEnabled: true
        }

        DragHandler {
            enabled: mouseHoverArea.containsMouse
            dragThreshold: 0
            acceptedButtons: Qt.LeftButton

            onActiveChanged: {
                if (active) {
                    console.log("Active changed!")
                }
            }
        }
    }
}
