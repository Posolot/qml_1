import QtQuick 2.15
import QtQuick.Controls 2.15

ApplicationWindow {
    id: mainWindow
    visible: true
    width: 400
    height: 300
    title: "Task_for_Login_Page"

    property real windowWidth: width
    property real windowHeight: height

    Column {
        anchors.centerIn: parent
        spacing: mainWindow.windowHeight * 0.03

        TextField {
            id: usernameField
            width: mainWindow.windowWidth * 0.7
            height: mainWindow.windowHeight * 0.1
            placeholderText: "Username"
            font.pixelSize: mainWindow.windowHeight * 0.05
        }

        TextField {
            id: passwordField
            width: mainWindow.windowWidth * 0.7
            height: mainWindow.windowHeight * 0.1
            placeholderText: "Password"
            echoMode: TextInput.Password
            font.pixelSize: mainWindow.windowHeight * 0.05
        }

        Row {
            spacing: mainWindow.windowWidth * 0.04

            Button {
                text: "Clear"
                width: mainWindow.windowWidth * 0.33
                height: mainWindow.windowHeight * 0.1
                font.pixelSize: mainWindow.windowHeight * 0.04
                onClicked: {
                    usernameField.text = ""
                    passwordField.text = ""
                }
            }


            Button {
                text: "Log In"
                width: mainWindow.windowWidth * 0.33
                height: mainWindow.windowHeight * 0.1
                font.pixelSize: mainWindow.windowHeight * 0.04
                onClicked: {
                    if (usernameField.text !== "" && passwordField.text !== "") {
                        console.log("Login successful!")
                        usernameField.text = ""
                        passwordField.text = ""
                    } else {
                        console.log("Please fill in all fields!")
                    }
                }
            }
        }
    }
}
