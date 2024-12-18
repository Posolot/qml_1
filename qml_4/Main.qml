import QtQuick 2.15
import QtQuick.Controls 2.15

ApplicationWindow {
    visible: true
    width: 400
    height: 600
    title: "Messenger"
    color: "green"
    MessageList {
        id: messageList
        width: parent.width
        height: parent.height - 50
    }

    InputBar {
        id: inputBar
        width: parent.width
        height: 50
        anchors.bottom: parent.bottom

        onSendMessage: {
            var currentTime = new Date();
            var hours = currentTime.getHours();
            var minutes = currentTime.getMinutes();
            var formattedTime = (hours < 10 ? '0' : '') + hours + ':' + (minutes < 10 ? '0' : '') + minutes;

            messageList.addMessage("User1", inputBar.text, formattedTime);
            inputBar.clear();
        }
    }
}
