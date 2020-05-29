import QtQuick 2.15

Rectangle {
    id: divider
    color: "yellow"
    DragHandler {
           id: handler
           target: divider
       }
}
