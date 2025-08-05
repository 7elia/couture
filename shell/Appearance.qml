pragma Singleton

import Quickshell
import QtQuick

Singleton {
    id: root

    property QtObject colors

    colors: QtObject {
        property color bg0: "#32302f"
        property color bg1: "#3c3836"
        property color bg2: "#504945"
        property color bg3: "#665c54"
        property color bg4: "#7c6f64"

        property color fg0: "#fbf1c7"
        property color fg1: "#ebdbb2"
        property color fg2: "#d5c4a1"
        property color fg3: "#bdae93"
        property color fg4: "#a89984"

        property color gray: "#928374"

        property color red: "#cc241d"
        property color green: "#98971a"
        property color yellow: "#d79921"
        property color blue: "#458588"
        property color purple: "#b16286"
        property color aqua: "#689d6a"
        property color orange: "#d65d0e"

        property color brightRed: "#fb4934"
        property color brightGreen: "#b8bb26"
        property color brightYellow: "#fabd2f"
        property color brightBlue: "#83a598"
        property color brightPurple: "#d3869b"
        property color brightAqua: "#8ec07c"
        property color brightOrange: "#fe8019"
    }
}
