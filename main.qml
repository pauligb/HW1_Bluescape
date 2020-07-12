import QtQuick 2.13
import QtQuick.Window 2.13

Window {
    id: window
    visible: true
    width: 851
    height: 636
    title: qsTr("Hello World")

    Background {
        source: "assets/bg.png"
    }

    Logo {
        width: 165
        height: 80
        anchors {
            top: parent.top
            topMargin: 27
            right: parent.right
            rightMargin: 22
        }
        source: "assets/bluescape-logo.svg"
    }

    Text {
        anchors.centerIn: parent
        anchors.verticalCenterOffset: -40

        font.pointSize: 44
        font.family: "Verdana"

        color: "#00c631" // Green Color
        text: qsTr("BLUESCAPE ROCKS")
    }

    TextButton {
        width: 460
        height: 55

        anchors.bottom: parent.bottom
        anchors.bottomMargin: 135
        anchors.horizontalCenter: parent.horizontalCenter

        leftBorder: 10
        rightBorder: 10
        topBorder: 10
        bottomBorder: 10

        sourceImg: "assets/button_up.png"
        onPressImg: "assets/button_down.png"

        text: qsTr("Click Me!")
        color: "white"
    }
}
