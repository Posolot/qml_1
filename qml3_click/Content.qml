import QtQuick 2.15
import QtQuick.Layouts 1.12

Rectangle {
    id: contentRect
    border.color: "black"
    border.width: 2

    property alias color: contentRect.color
    property alias text: contentText.text

    Text {
        id: contentText
        anchors.centerIn: parent
        text: "Content"
        font.pointSize: 20
    }
}
