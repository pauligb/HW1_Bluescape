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
}
