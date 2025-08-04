import Quickshell
import QtQuick

import "./Bar.qml"

Scope {
    id: root

    Variants {
        model: Quickshell.screens.filter(s => s.name === "DP-3")

        Bar {}
    }
}
