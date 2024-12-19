import QtQuick 2.15
import QtQuick.Controls 2.15

ApplicationWindow {
    visible: true
    width: 200
    height: 400
    title: "Прокручиваемый светофор"

    Rectangle {
        anchors.fill: parent
        color: "black"
        SwipeView {
            id: swipeView
            width: parent.width
            height: parent.height
            anchors.fill: parent
            anchors.top: parent.top
            anchors.bottom: pageIndicator.top
            background: Rectangle {
                color: "transparent"
            }
            Page {
                Rectangle {
                    color: "black"
                    anchors.fill: parent
                    Rectangle {
                        width: 80
                        height: 80
                        radius: 40
                        anchors.horizontalCenter: parent.horizontalCenter
                        color: swipeView.currentIndex === 0 ? "#FF0000" : "darkred"
                    }

                    Rectangle {
                        width: 80
                        height: 80
                        radius: 40
                        anchors.horizontalCenter: parent.horizontalCenter
                        y: 100
                        color: swipeView.currentIndex === 0 ? "darkgoldenrod" : "darkred"
                    }
                    Rectangle {
                        width: 80
                        height: 80
                        radius: 40
                        anchors.horizontalCenter: parent.horizontalCenter
                        y: 200
                        color: swipeView.currentIndex === 0 ? "darkgreen" : "darkred"
                    }
                }
            }
            Page {
                Rectangle {
                    color: "black"
                    anchors.fill: parent
                    Rectangle {
                        width: 80
                        height: 80
                        radius: 40
                        anchors.horizontalCenter: parent.horizontalCenter
                        color: swipeView.currentIndex === 1 ? "darkred" : "darkred"
                    }
                    Rectangle {
                        width: 80
                        height: 80
                        radius: 40
                        anchors.horizontalCenter: parent.horizontalCenter
                        y: 100
                        color: swipeView.currentIndex === 1 ? "#FFFF00" : "darkgoldenrod"
                    }
                    Rectangle {
                        width: 80
                        height: 80
                        radius: 40
                        anchors.horizontalCenter: parent.horizontalCenter
                        y: 200
                        color: swipeView.currentIndex === 1 ? "darkgreen" : "darkred"
                    }
                }
            }
            Page {
                Rectangle {
                    color: "black"
                    anchors.fill: parent
                    Rectangle {
                        width: 80
                        height: 80
                        radius: 40
                        anchors.horizontalCenter: parent.horizontalCenter
                        color: swipeView.currentIndex === 2 ? "darkred" : "darkred"
                    }
                    Rectangle {
                        width: 80
                        height: 80
                        radius: 40
                        anchors.horizontalCenter: parent.horizontalCenter
                        y: 100
                        color: swipeView.currentIndex === 2 ? "darkgoldenrod" : "darkred"
                    }
                    Rectangle {
                        width: 80
                        height: 80
                        radius: 40
                        anchors.horizontalCenter: parent.horizontalCenter
                        y: 200
                        color: swipeView.currentIndex === 2 ? "#00FF00" : "darkgreen"
                    }
                }
            }
        }
        PageIndicator {
            id: pageIndicator
            count: swipeView.count
            currentIndex: swipeView.currentIndex
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 16

            delegate: Rectangle {
                width: 12
                height: 12
                radius: 6
                color: index === pageIndicator.currentIndex ? "blue" : "gray"
            }
        }
    }
}
