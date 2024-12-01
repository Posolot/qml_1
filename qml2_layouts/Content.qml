import QtQuick 2.15
import QtQuick.Layouts 1.12

Rectangle {
    id: contentRect
    color: "lightblue"
    border.color: "black"
    border.width: 2

    Text {
        anchors.centerIn: parent
        text: "Content"
        font.pointSize: 20
    }
}
