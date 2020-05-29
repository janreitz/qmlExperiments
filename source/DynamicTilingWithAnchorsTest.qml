import QtQuick 2.15
import "DynamicTilingWithAnchors.js" as TilingBackend

Item {
    id: root
    TestTile {
        id: tile1
        color: "blue"
        anchors.fill: parent
        contentItem: Rectangle {
            parent: tile1
            id: contentItem
            color: "red"
            anchors.fill: parent
            anchors.margins: 10
        }
    }

    Shortcut {
        sequence: "Alt+Shift+Down"
        onActivated: {
            console.log("TilingLayout::container -> Vertical split triggered")

            var existingItem = tile1

            TilingBackend.verticalSplit(existingItem)
        }
    }

    Shortcut {
        sequence: "Alt+Shift+Right"
        onActivated: {
            console.log("TilingLayout::container -> Horizontal split triggered")
            var existingItem = tile1
            TilingBackend.horizontalSplit(existingItem)
        }
    }
}
