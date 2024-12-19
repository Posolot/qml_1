import QtQuick 2.15
import QtQuick.Controls 2.15

ApplicationWindow {
    id: appWindow
    visible: true
    width: 400
    height: 600
    title: qsTr("Traffic Light Navigation")

    StackView {
        id: stackView
        anchors.fill: parent
        initialItem: Component {
            Item {
                width: parent.width
                height: parent.height

                Rectangle {
                    color: "#f5f5f5"
                    anchors.fill: parent
                    Column {
                        anchors.centerIn: parent
                        spacing: 20
                        Text {
                            text: qsTr("Traffic Light Task")
                            font.pixelSize: 24
                            horizontalAlignment: Text.AlignHCenter
                        }
                        Rectangle {
                            width: 100
                            height: 50
                            color: "lightblue"
                            Text {
                                anchors.centerIn: parent
                                text: "Start"
                                font.pixelSize: 18
                            }
                            MouseArea {
                                anchors.fill: parent
                                onClicked: stackView.push("Page_red.qml")
                            }
                        }
                    }
                }
            }
        }
    }
}
