import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    id: windoww
    visible: true
    width: 320
    height: 568
    title: qsTr("Task_for_Layout")
    property real rHeight: height / 10
    property real rWidth: width / 3

    Rectangle {
        id: mainn
        width: parent.width
        height: parent.height
        states: [
            State {
                name: "firsts"
                PropertyChanges { target: first; color: "#d3d3d3" }
                PropertyChanges { target: firsttxt; color: "black" }
                PropertyChanges { target: second; color: "#f5f5f5" }
                PropertyChanges { target: secondtxt; color: "#d3d3d3" }
                PropertyChanges { target: third; color: "#f5f5f5" }
                PropertyChanges { target: thirdtxt; color: "#d3d3d3" }
                PropertyChanges { target: centertxt; text: "Item 1 content" }
                PropertyChanges { target: caption; text: "header1" }
                PropertyChanges { target: backbtn; visible: false }
            },
            State {
                name: "seconds"
                PropertyChanges { target: second; color: "#d3d3d3" }
                PropertyChanges { target: secondtxt; color: "black" }
                PropertyChanges { target: first; color: "#f5f5f5" }
                PropertyChanges { target: firsttxt; color: "#d3d3d3" }
                PropertyChanges { target: third; color: "#f5f5f5" }
                PropertyChanges { target: thirdtxt; color: "#d3d3d3" }
                PropertyChanges { target: centertxt; text: "Item 2 content" }
                PropertyChanges { target: caption; text: "header2" }
                PropertyChanges { target: backbtn; visible: true }
            },
            State {
                name: "thirds"
                PropertyChanges { target: third; color: "#d3d3d3" }
                PropertyChanges { target: thirdtxt; color: "black" }
                PropertyChanges { target: second; color: "#f5f5f5" }
                PropertyChanges { target: secondtxt; color: "#d3d3d3" }
                PropertyChanges { target: first; color: "#f5f5f5" }
                PropertyChanges { target: firsttxt; color: "#d3d3d3" }
                PropertyChanges { target: centertxt; text: "Item 3 content" }
                PropertyChanges { target: caption; text: "header3" }
                PropertyChanges { target: backbtn; visible: true }
            }
        ]
        Rectangle {
            id: header
            color: "#dcdcdc"
            height: rHeight
            anchors.top: parent.top
            anchors.left: parent.left
            anchors.right: parent.right
            Text {
                id: caption
                text: qsTr("Header")
                font.pointSize: 10
                anchors.centerIn: parent
            }

            Rectangle {
                id: backbtn
                width: rWidth / 2
                height: rHeight / 2
                anchors.margins: 10
                anchors.verticalCenter: parent.verticalCenter
                anchors.left: parent.left
                color: "gray"
                visible: false

                Text {
                    id: backtxt
                    text: qsTr("Back")
                    color: "black"
                    font.pointSize: 10
                    anchors.centerIn: parent
                }

                MouseArea {
                    anchors.fill: parent
                    onClicked: mainn.state = "firsts"
                }
            }
        }

        Rectangle {
            id: content
            color: "#f5f5f5"
            border.color: "#dcdcdc"
            border.width: 1
            anchors.top: header.bottom
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.bottom: footer.top
            anchors.margins: 10

            Text {
                id: centertxt
                text: qsTr("Some content")
                font.pointSize: 10
                anchors.centerIn: parent
            }
        }

        Rectangle {
            id: footer
            color: "#f5f5f5"
            anchors.bottom: parent.bottom
            anchors.left: parent.left
            anchors.right: parent.right
            height: rHeight
            Rectangle {
                id: first
                width: rWidth - 4
                color: "#f5f5f5"
                border.color: "#dcdcdc"
                border.width: 1
                anchors.left: parent.left
                anchors.top: parent.top
                anchors.bottom: parent.bottom

                Text {
                    id: firsttxt
                    text: qsTr("Item 1")
                    font.pointSize: 10
                    anchors.centerIn: parent
                    color: "#d3d3d3"
                }

                MouseArea {
                    anchors.fill: parent
                    onClicked: mainn.state = "firsts"
                }
            }

            Rectangle {
                id: second
                width: rWidth - 4
                color: "#f5f5f5"
                border.color: "#dcdcdc"
                border.width: 1
                anchors.left: first.right
                anchors.top: parent.top
                anchors.bottom: parent.bottom

                Text {
                    id: secondtxt
                    text: qsTr("Item 2")
                    font.pointSize: 10
                    anchors.centerIn: parent
                    color: "#d3d3d3"
                }

                MouseArea {
                    anchors.fill: parent
                    onClicked: mainn.state = "seconds"
                }
            }

            Rectangle {
                id: third
                width: rWidth - 4
                color: "#f5f5f5"
                border.color: "#dcdcdc"
                border.width: 1
                anchors.left: second.right
                anchors.top: parent.top
                anchors.bottom: parent.bottom

                Text {
                    id: thirdtxt
                    text: qsTr("Item 3")
                    font.pointSize: 10
                    anchors.centerIn: parent
                    color: "#d3d3d3"
                }

                MouseArea {
                    anchors.fill: parent
                    onClicked: mainn.state = "thirds"
                }
            }
        }
    }
}
