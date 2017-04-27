import QtQuick 2.0
import Sailfish.Silica 1.0


Page{
    property alias poemText: t.text
    property var poemName
    id: poemText
    SilicaFlickable {

        id: flickable
        anchors.top: parent.top
        height: parent.height
        anchors.left: parent.left
        anchors.right: parent.right
        contentHeight: t.height
        contentY: 0 //Math.max(0, contentHeight - height)
        clip: true
        //anchors.fill: parent
        width: parent.width
        PageHeader {
            id: header
            title: qsTr(poemName)
        }

        TextArea {

            readOnly: true
            cursorPosition: 1
            wrapMode: TextEdit.WordWrap
            anchors.top: header.bottom
            anchors.verticalCenter: parent.verticalCenter
            font.letterSpacing: 1
            font.family: "Helvetica"
            color: Theme.primaryColor
            width: parent.width-1
            //fontSizeMode:  Text.HorizontalFit
            id: t
        }
    }


}
