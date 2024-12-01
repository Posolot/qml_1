import QtQuick 2.15
import QtQuick.Layouts 1.12

Rectangle {
    id: headerRect
    color: "lightgray"
    border.color: "black"
    border.width: 2

    Text {
        anchors.centerIn: parent
        text: "Header"
        font.pointSize: 20
    }
}
