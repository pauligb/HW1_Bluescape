import QtQuick 2.0

Item {
    id: root

    property string sourceImg: ""
    property string onPressImg: ""

    property int leftBorder: 0
    property int rightBorder: 0
    property int topBorder: 0
    property int bottomBorder: 0

    signal clicked()

    BorderImage {
        id: _b_img_button
        anchors.fill: parent

        border {
            left: root.leftBorder
            right: root.rightBorder
            top: root.topBorder
            bottom: root.bottomBorder
        }

        source: root.sourceImg

        states: [
            State {
                name: "hidden"; when: _mouse_area.pressed
                PropertyChanges {
                    target: _b_img_button
                    source: (root.onPressImg)? root.onPressImg : root.sourceImg
                }
            }
        ]
    }

    MouseArea {
        id: _mouse_area
        anchors.fill: parent
        onClicked: root.clicked()
    }
}
