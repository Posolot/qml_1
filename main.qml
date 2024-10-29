import QtQuick 2.15
import QtQuick.Controls 2.15

ApplicationWindow {
    visible: true
    width: 800
    height: 800
    title: "Colored Squares"

    property real squareWidth: width / 8
    property real squareHeight: height / 8
    property real leftMargin: width / 8
    Rectangle {
        id: square1
        width: squareWidth
        height: squareHeight
        gradient: Gradient {
            GradientStop { position: 0.0; color: "#4682B4" }
            GradientStop { position: 1.0; color: "#20B2AA" }
        }
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.leftMargin: leftMargin
    }

    Rectangle {
        id: med
        width: squareWidth
        height: squareHeight
        gradient: Gradient {
            GradientStop { position: 0.0; color: "#4682B4" }
            GradientStop { position: 1.0; color: "#20B2AA" }
        }
        anchors.left: square1.right
        anchors.top: parent.top
        anchors.leftMargin: 0
    }

    Rectangle {
        id: square2
        width: squareWidth
        height: squareHeight
        gradient: Gradient {
            GradientStop { position: 0.0; color: "#4682B4" }
            GradientStop { position: 1.0; color: "#20B2AA" }
        }
        anchors.left: med.right
        anchors.top: parent.top
        anchors.leftMargin: 0
    }

    Rectangle {
        id: square3
        width: squareWidth
        height: squareHeight
        gradient: Gradient {
            GradientStop { position: 0.0; color: "#4682B4" }
            GradientStop { position: 1.0; color: "#20B2AA" }
        }
        anchors.left: parent.left
        anchors.top: square1.bottom
        anchors.leftMargin: leftMargin
    }

    Rectangle {
        id: square4
        width: squareWidth
        height: squareHeight
        gradient: Gradient {
            GradientStop { position: 0.0; color: "#4682B4" }
            GradientStop { position: 1.0; color: "#20B2AA" }
        }
        anchors.top: square3.bottom
        anchors.left: parent.left
        anchors.leftMargin: leftMargin
    }

    Rectangle {
        id: square5
        width: squareWidth
        height: squareHeight
        gradient: Gradient {
            GradientStop { position: 0.0; color: "#4682B4" }
            GradientStop { position: 1.0; color: "#20B2AA" }
        }
        anchors.left: square4.right
        anchors.top: square3.bottom
        anchors.leftMargin: 0
    }

    Rectangle {
        id: square6
        width: squareWidth
        height: squareHeight
        gradient: Gradient {
            GradientStop { position: 0.0; color: "#4682B4" }
            GradientStop { position: 1.0; color: "#20B2AA" }
        }
        anchors.left: square3.right
        anchors.top: square2.bottom
        anchors.leftMargin: leftMargin
    }

    Rectangle {
        id: square7
        width: squareWidth
        height: squareHeight
        gradient: Gradient {
            GradientStop { position: 0.0; color: "#4682B4" }
            GradientStop { position: 1.0; color: "#20B2AA" }
        }
        anchors.left: med.right
        anchors.top: square6.bottom
        anchors.leftMargin: 0
    }

    Rectangle {
        id: square8
        width: squareWidth
        height: squareHeight
        gradient: Gradient {
            GradientStop { position: 0.0; color: "#4682B4" }
            GradientStop { position: 1.0; color: "#20B2AA" }
        }
        anchors.left: square5.right
        anchors.top: square7.bottom
        anchors.leftMargin: 0
    }

    Rectangle {
        id: square9
        width: squareWidth
        height: squareHeight
        gradient: Gradient {
            GradientStop { position: 0.0; color: "#4682B4" }
            GradientStop { position: 1.0; color: "#20B2AA" }
        }
        anchors.left: square5.right
        anchors.top: square8.bottom
        anchors.leftMargin: 0
    }

    Rectangle {
        id: square10
        width: squareWidth
        height: squareHeight
        gradient: Gradient {
            GradientStop { position: 0.0; color: "#4682B4" }
            GradientStop { position: 1.0; color: "#20B2AA" }
        }
        anchors.left: parent.left
        anchors.top: square8.bottom
        anchors.leftMargin: leftMargin
    }

    Rectangle {
        id: square11
        width: squareWidth
        height: squareHeight
        gradient: Gradient {
            GradientStop { position: 0.0; color: "#4682B4" }
            GradientStop { position: 1.0; color: "#20B2AA" }
        }
        anchors.left: square10.right
        anchors.top: square10.top
        anchors.leftMargin: 0
    }
}
