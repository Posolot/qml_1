import QtQuick

Window {
    width: 480
    height: 640
    visible: true

    property real rWidth: width / 8
    property real rHeight: height / 8

    Rectangle {
        id: main
        width: rWidth * 4
        height: rHeight * 6
        color: "#BDBDBD"
        anchors.centerIn: parent
        Rectangle {
            id: rectRed
            width: parent.width - 40
            height: (parent.height - 40) / 3
            color: "black"
            anchors.top: parent.top
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.margins: 5
        }
        Rectangle {
            id: rectYellow
            width: parent.width - 40
            height: (parent.height - 40) / 3
            color: "black"
            anchors.top: rectRed.bottom
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.margins: 5
        }
        Rectangle {
            id: rectGreen
            width: parent.width - 40
            height: (parent.height - 40) / 3
            color: "black"
            anchors.top: rectYellow.bottom
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.margins: 5
        }

        states: [
            State {
                name: "stop"
                PropertyChanges {
                    target: rectRed
                    color: "#FF0000"
                    border.color: "#AB0000"
                }
                PropertyChanges {
                    target: rectYellow
                    color: "gray"
                    border.color: "black"
                }
                PropertyChanges {
                    target: rectGreen
                    color: "gray"
                    border.color: "black"
                }
            },
            State {
                name: "caution"
                PropertyChanges {
                    target: rectRed
                    color: "gray"
                    border.color: "black"
                }
                PropertyChanges {
                    target: rectYellow
                    color: "#FFD300"
                    border.color: "#AB8E00"
                }
                PropertyChanges {
                    target: rectGreen
                    color: "gray"
                    border.color: "black"
                }
            },
            State {
                name: "go"
                PropertyChanges {
                    target: rectRed
                    color: "gray"
                    border.color: "black"
                }
                PropertyChanges {
                    target: rectYellow
                    color: "gray"
                    border.color: "black"
                }
                PropertyChanges {
                    target: rectGreen
                    color: "#00F000"
                    border.color: "#00A100"
                }
            }
        ]

        state: "stop"

        transitions: [
            Transition {
                from: "stop"
                to: "caution"
                ColorAnimation {
                    target: rectRed
                    from: "#FF0000"
                    to: "gray"
                    duration: 500
                }
                ColorAnimation {
                    target: rectYellow
                    from: "gray"
                    to: "#FFD300"
                    duration: 500
                }
                ColorAnimation {
                    target: rectGreen
                    from: "gray"
                    to: "gray"
                    duration: 500
                }
            },
            Transition {
                from: "caution"
                to: "go"
                ColorAnimation {
                    target: rectGreen
                    from: "gray"
                    to: "#00F000"
                    duration: 500
                }
                ColorAnimation {
                    target: rectYellow
                    from: "#FFD300"
                    to: "gray"
                    duration: 500
                }
                ColorAnimation {
                    target: rectRed
                    from: "gray"
                    to: "gray"
                    duration: 500
                }
            },
            Transition {
                from: "go"
                to: "stop"
                ColorAnimation {
                    target: rectRed
                    from: "gray"
                    to: "#FF0000"
                    duration: 500
                }
                ColorAnimation {
                    target: rectGreen
                    from: "#00F000"
                    to: "gray"
                    duration: 500
                }
                ColorAnimation {
                    target: rectYellow
                    from: "gray"
                    to: "gray"
                    duration: 500
                }
            }
        ]

        MouseArea {
            anchors.fill: parent
            onClicked: {
                if (parent.state === "stop") {
                    parent.state = "caution";
                } else if (parent.state === "caution") {
                    parent.state = "go";
                } else {
                    parent.state = "stop";
                }
            }
        }
    }
}
