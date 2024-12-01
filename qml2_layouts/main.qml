import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Layouts 1.12

Window {
    visible: true
    width: 640
    height: 900

    property real headerHeight: height * 0.1
    property real contentHeight: height * 0.6
    property real footerHeight: height * 0.2
    property real contentWidth: width * 0.8
    property real footerWidth: width

    ColumnLayout {
        spacing: 20

        Header{
            id: header
            width: footerWidth
            height: headerHeight
            Layout.alignment: Qt.AlignTop
        }

        Content {
            id: content
            width: contentWidth
            height: contentHeight
            Layout.alignment: Qt.AlignCenter
        }
        Footer {
            id: footer
            width: footerWidth
            height: footerHeight
            Layout.alignment: Qt.AlignBottom
        }
    }
}

