import QtQuick 2.15

Item { // NOTE we do not want our base item to be a window!
    id:rootItem // Items have no visible area, this section will appear black on the display
    Rectangle{
        width:240
        height:width // bound to width, if width changes, so does height and radius
        radius:width // circle
        anchors.centerIn: parent // this center in root (invisible item) https://doc.qt.io/qt-5/qtquick-positioning-anchors.html
        color:"red" // very obvious when this comes up, think of the color of the root background as the background color.

        Rectangle{ // inner white circle
            id: innerCircle
            anchors.centerIn: parent // now refers to rootItem
            width:160
            height:160
            radius:160
            color:"white"
            Rectangle{
                id: coreCircle
                anchors.centerIn: parent // now refers to rootItem
                width:80
                height:80
                radius:80
                color:"#0000FF" // (blue) can use HTML HEX RGB notation
            }
        }
    }
    // ... Thats it, you've got a base project!
    /*******************************************************************************
    * Block quotes are available
    * - Try out different Qml types
    *  - Text   https://doc.qt.io/qt-5/qtquick-usecase-text.html
    *  - Image  https://doc.qt.io/qt-5/qml-qtquick-image.html
    *  - Shape https://doc.qt.io/qt-5/qml-qtquick-shapes-shape.html
    *  - Sprite https://doc.qt.io/qt-5/qml-qtquick-sprite.html
    *  - SpriteSequence https://doc.qt.io/qt-5/qml-qtquick-spritesequence.html
    * Read more about the various Qml types
    *   https://doc.qt.io/qt-5/qtquick-qmlmodule.html
    * There are many good resources but one I personally endorse
    * http://qmlbook.github.io/
    *******************************************************************************/
}
