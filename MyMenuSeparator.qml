import QtQuick 2.15
import QtQuick.Controls 2.15

MenuSeparator{
    id: pMS
    property color lineColor: "coral"
    topPadding: 1
    bottomPadding: 1

    contentItem: Rectangle {
                 implicitWidth: pMS.width-4
                 implicitHeight: 1
                 color: lineColor
             }
}
