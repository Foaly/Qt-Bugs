import QtQuick

Window {
    id: root

    width: 800
    height: 600

    visible: true
    color: "red"

    property color regularColor: "#909090"
    property color hoverColor: "#bababa"

    Rectangle {
        id: background

        anchors.fill: parent

        color: root.regularColor
    }

    MouseArea {
        id: mouseArea

        anchors.fill: parent

        hoverEnabled: true

        onEntered: background.color = root.hoverColor; // changing root to parent here makes the warning disappear

        onExited: background.color = root.regularColor; // changing root to parent here makes the warning disappear
    }
}
