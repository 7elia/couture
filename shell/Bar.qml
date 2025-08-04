import Quickshell
import QtQuick

PanelWindow {
    required property var modelData
    screen: modelData

    anchors {
        top: true
        left: true
        right: true
    }

    implicitHeight: 25

    Text {
        font.pointSize: 14
        font.bold: true
        text: "Hey"
    }
}
