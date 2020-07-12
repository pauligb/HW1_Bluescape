import QtQuick 2.0

Button {
    id: _root

    property alias text: _txt_text.text
    property alias color: _txt_text.color

    Text {
        id: _txt_text
        anchors.fill: parent
        horizontalAlignment: Text.AlignHCenter
        fontSizeMode: Text.Fit
        minimumPointSize: 10
        font.pointSize: 24
    }
}
