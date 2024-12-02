import QtQuick 2.15
import QtQuick.Layouts 1.12

Rectangle {
    id: footerRect
    color: "lightgray"

    signal itemClicked(string header, color color, string content)

    RowLayout {
        anchors.fill: parent
        spacing: 2

        Rectangle {
            id: footerRect1
            color: "gray"
            border.color: "black"
            border.width: 2
            width: (parent.width / 3)
            height: parent.height
            Layout.alignment: Qt.AlignLeft
            Text {
                anchors.centerIn: parent
                text: "1"
                font.pointSize: 20
            }
            MouseArea {
                anchors.fill: parent
                onClicked: footerRect.itemClicked("Header 1", "red", "Content 1")
            }
        }

        Rectangle {
            id: footerRect2
            color: "gray"
            border.color: "black"
            border.width: 2
            width: (parent.width / 3)
            height: parent.height
            Layout.alignment: Qt.AlignCenter
            Text {
                anchors.centerIn: parent
                text: "2"
                font.pointSize: 20
            }
            MouseArea {
                anchors.fill: parent
                onClicked: footerRect.itemClicked("Header 2", "green", "Content 2")
            }
        }

        Rectangle {
            id: footerRect3
            color: "gray"
            border.color: "black"
            border.width: 2
            width: (parent.width / 3)
            height: parent.height
            Layout.alignment: Qt.AlignRight
            Text {
                anchors.centerIn: parent
                text: "3"
                font.pointSize: 20
            }
            MouseArea {
                anchors.fill: parent
                onClicked: footerRect.itemClicked("Header 3", "blue", "Content 3")
            }
        }
    }
}
