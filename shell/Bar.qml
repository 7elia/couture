import Quickshell
import QtQuick

import "./Appearance.qml"

PanelWindow {
    required property var modelData
    screen: modelData

    anchors {
        top: true
        left: true
        right: true
    }

    implicitHeight: 40
    color: "transparent"

    Rectangle {
        color: "transparent"

        anchors {
            fill: parent
            margins: 4
        }

        border {
            width: 3
            color: Appearance.colors.brightAqua
        }

        radius: 15

        Text {
            text: "100%"
            color: Appearance.colors.gray
        }
    }
}
