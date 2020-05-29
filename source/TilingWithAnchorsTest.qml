import QtQuick 2.15

Item {
    Rectangle {
        id: tile1
        color: "blue"
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.left: parent.left
        anchors.right: hDivider.left
    }
    TilingDivider {
        id: hDivider
        width: 20
        anchors.top: parent.top
        anchors.bottom: parent.bottom
    }
    Rectangle {
        id: tile2
        color: "green"
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.left: hDivider.right
        anchors.right: parent.right

        Rectangle {
            id: tile3
            color: "pink"
            anchors.top: parent.top
            anchors.bottom: vDivider.top
            anchors.left: parent.left
            anchors.right: parent.right
        }
        TilingDivider {
            id: vDivider
            height: 20
            anchors.left: parent.left
            anchors.right: parent.right
        }
        Rectangle {
            id: tile4
            color: "green"
            anchors.top: vDivider.bottom
            anchors.bottom: parent.bottom
            anchors.left: parent.left
            anchors.right: parent.right
        }
    }
}
