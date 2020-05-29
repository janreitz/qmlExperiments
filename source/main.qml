import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    visible: true
    width: 1280
    height: 960
    title: qsTr("Hello World")

    DynamicTilingWithAnchorsTest {
        anchors.fill: parent
    }
}
