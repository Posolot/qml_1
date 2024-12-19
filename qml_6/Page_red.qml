import QtQuick 2.15
import QtQuick.Controls 2.15

Item {
    width: parent.width
    height: parent.height

    Rectangle {
        color: "red"
        anchors.fill: parent

        Column {
            anchors.centerIn: parent
            spacing: 20
            Text {
                text: qsTr("Red Page")
                font.pixelSize: 24
                color: "white"
            }
            Rectangle {
                width: 100
                height: 50
                color: "lightgray"
                Text {
                    anchors.centerIn: parent
                    text: "To Green"
                }
                MouseArea {
                    anchors.fill: parent
                    onClicked: stackView.push("Page_green.qml")
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

    // Кнопка "Назад"
    Button {
        id: backButton
        text: qsTr("Back")
        anchors.margins: 10
        anchors.left: parent.left
        anchors.bottom: parent.bottom
        onClicked: stackView.pop()
    }
}
