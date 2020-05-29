import QtQuick 2.15
import QtQuick.Layouts 1.12
import QtQuick.Controls 2.12

Rectangle {
    color: "blue"

    RowLayout {
        id: row
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.left: parent.left
        anchors.right: col.left
        Rectangle {
            id: pinkRect
            color: "pink"
            Layout.fillHeight: true
            Layout.fillWidth: true
        }
        Rectangle {
            color: "red"
            Layout.fillHeight: true
            Layout.fillWidth: true
        }
        Rectangle {
            color: "green"
            Layout.fillHeight: true
            Layout.fillWidth: true
        }
        TextArea {
            color: "green"
            Layout.fillHeight: true
            Layout.fillWidth: true
            background: Rectangle {
                color: "purple"
            }
        }
    }
    ColumnLayout {
        id: col
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.right: parent.right
        width: parent.width / 2
        Rectangle {
            color: "pink"
            Layout.fillHeight: true
            Layout.fillWidth: true
            Rectangle {
                color: "yellow"
                anchors.fill: parent
            }
        }
        Rectangle {
            color: "red"
            Layout.fillHeight: true
            Layout.fillWidth: true
        }
        Rectangle {
            color: "green"
            Layout.fillHeight: true
            Layout.fillWidth: true
        }
    }
}
