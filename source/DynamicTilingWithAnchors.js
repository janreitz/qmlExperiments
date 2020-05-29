

function verticalSplit(existingTile) {

    if (!existingTile) { return; }

    var dividerProps = { height: 20 }
    var divider
    var newTileAbove
    var newTileBelow

    var dividerComp = Qt.createComponent("qrc:/TilingDivider.qml");
    var newTileComp = Qt.createComponent("qrc:/TestTile.qml");
    if (dividerComp.status === Component.Ready) {
        divider = finishCreation(dividerComp, existingTile, dividerProps);
    }
    if (newTileComp.status === Component.Ready) {
        newTileAbove = finishCreation(newTileComp, existingTile, {color: "green"});
        newTileBelow = finishCreation(newTileComp, existingTile);
    }
    if (divider && newTileAbove && newTileBelow) {
        newTileAbove.anchors.top = existingTile.top;
        newTileAbove.anchors.right = existingTile.right;
        newTileAbove.anchors.left = existingTile.left;
        newTileAbove.anchors.bottom = divider.top;
//        newTileAbove.height = (existingTile.height - divider.height)/2
        existingTile.contentItem.parent = newTileAbove

        divider.anchors.left = existingTile.left;
        divider.anchors.right = existingTile.right
        divider.y = existingTile.y + (existingTile.height - divider.height)/2

        newTileBelow.anchors.top = divider.bottom;
        newTileBelow.anchors.right = existingTile.right;
        newTileBelow.anchors.left = existingTile.left;
        newTileBelow.anchors.bottom = existingTile.bottom;
    }
}

function horizontalSplit(existingTile) {

    if (!existingTile) { return; }

    var dividerProps = { width: 20 }
    var divider
    var newTileLeft
    var newTileRight

    var dividerComp = Qt.createComponent("qrc:/TilingDivider.qml");
    var newTileComp = Qt.createComponent("qrc:/TestTile.qml");
    if (dividerComp.status === Component.Ready) {
        divider = finishCreation(dividerComp, existingTile, dividerProps);
    }
    if (newTileComp.status === Component.Ready) {
        newTileLeft = finishCreation(newTileComp, existingTile, {color: "green"});
        newTileRight = finishCreation(newTileComp, existingTile);
    }
    if (divider && newTileLeft && newTileRight) {
        newTileLeft.anchors.top = existingTile.top;
        newTileLeft.anchors.right = divider.left;
        newTileLeft.anchors.left = existingTile.left;
        newTileLeft.anchors.bottom = existingTile.bottom;
//        newTileLeft.height = (existingTile.height - divider.height)/2
        existingTile.contentItem.parent = newTileLeft

        divider.anchors.top = existingTile.top;
        divider.anchors.bottom = existingTile.bottom
        divider.x = existingTile.x + (existingTile.width - divider.width)/2

        newTileRight.anchors.top = existingTile.top;
        newTileRight.anchors.right = existingTile.right;
        newTileRight.anchors.left = divider.right;
        newTileRight.anchors.bottom = existingTile.bottom;
    }
}

function finishCreation(comp, parent, props = {}, onCreateCallback = 0) {
    if (comp.status === Component.Ready) {
        var obj = comp.createObject(parent, props);
        if (obj === null) {
            // Error Handling
            console.log("Error creating object under " + parent);
            return null;
        }
        else if (onCreateCallback){
            onCreateCallback(obj);
            return obj;
        }
        return obj;
    }
    else if (comp.status === Component.Error) {
            // Error Handling
            console.log("Error loading component:", comp.errorString());
    }
}
