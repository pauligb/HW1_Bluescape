import QtQuick 2.13
import QtQuick.Window 2.13
import RandomWordGenerator 1.0

Window {
    id: window
    visible: true
    width: _internal.defaultWidth
    height: _internal.defaultHeight
    title: qsTr("Hello World")

    QtObject {
        id: _internal
        property int defaultWidth: 851
        property int defaultHeight: 636

        property double xRatio: window.width / _internal.defaultWidth
        property double yRatio: window.height / _internal.defaultHeight

        function scaleX(value) {
            return value * _internal.xRatio;
        }

        function scaleY(value) {
            return value * _internal.yRatio;
        }
    }

    RandomWordGenerator {
        id: rwg_words
        filePath: "samplewords/sampleWords-1.txt"
    }

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
        id: txt_mainText
        anchors.centerIn: parent
        anchors.verticalCenterOffset: _internal.scaleY(-40)

        font.pointSize: 44
        font.family: "Verdana"

        color: "#00c631" // Green Color
        text: qsTr("BLUESCAPE ROCKS")
    }

    TextButton {
        width: _internal.scaleX(460)
        // We do not want to scale the TextButton height.
        height: 55

        anchors.bottom: parent.bottom
        anchors.bottomMargin: _internal.scaleY(135)
        anchors.horizontalCenter: parent.horizontalCenter

        leftBorder: 10
        rightBorder: 10
        topBorder: 10
        bottomBorder: 10

        sourceImg: "assets/button_up.png"
        onPressImg: "assets/button_down.png"

        text: qsTr("Click Me!")
        color: "white"

        onClicked: {
            var nextWord = rwg_words.generateWord()
            txt_mainText.text = nextWord
        }
    }
}
