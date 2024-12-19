import QtQuick 2.15
import QtQuick.Controls 2.15

Item {
    width: parent.width
    height: parent.height

    Rectangle {
        color: "green"
        anchors.fill: parent

        Column {
            anchors.centerIn: parent
            spacing: 20
            Text {
                text: qsTr("Green Page")
                font.pixelSize: 24
                color: "white"
            }
            Rectangle {
                width: 100
                height: 50
                color: "lightgray"
                Text {
                    anchors.centerIn: parent
                    text: "To Red"
                }
                MouseArea {
                    anchors.fill: parent
                    onClicked: stackView.push("Page_red.qml")
                }
            }
            Rectangle {
                width: 100
                height: 50
                color: "lightgray"
                Text {
                    anchors.centerIn: parent
                    text: "To Yellow"
                }
                MouseArea {
                    anchors.fill: parent
                    onClicked: stackView.push("Page_yellow.qml")
                }
            }
        }
    }

    Button {
        id: backButton
        text: qsTr("Back")
        anchors.margins: 10
        anchors.left: parent.left
        anchors.bottom: parent.bottom
        onClicked: stackView.pop()
    }
}