import QtQuick 2.15
import QtQuick.Controls 2.15

Menu {
    id: idMenuFile

    property int eleHeight: 20
    property color themColor: "coral"

    background: Rectangle{
        width: idMenuFile.width
        height: idMenuFile.height
        radius: 2
        border.width: 0
    }

    delegate: MenuItem{
        id: pmenuItem
        width: idMenuFile.width
        height: idMenuFile.eleHeight


        contentItem: Text {
                     leftPadding: pmenuItem.checkable ?  pmenuItem.indicator.width : 0
                     rightPadding: pmenuItem.subMenu ? pmenuItem.arrow.width : 0
                     text: pmenuItem.text
                     font: pmenuItem.font
                     opacity: enabled ? 1.0 : 0.3
                     color: pmenuItem.highlighted ? "#ffffff" : themColor
                     horizontalAlignment: Text.AlignLeft
                     verticalAlignment: Text.AlignVCenter
                     elide: Text.ElideRight
                 }

        background: Rectangle {
            implicitWidth: pmenuItem.width
            implicitHeight: pmenuItem.height
            opacity: enabled ? 1 : 0.3
            radius: 2
            color: pmenuItem.highlighted ? themColor : "transparent"
        }

        onHighlightedChanged: pmenuItem.subMenu ?  pCanvas.requestPaint():0

        arrow: Canvas {
                    id:pCanvas
                    anchors.verticalCenter: pmenuItem.verticalCenter
                     x: pmenuItem.width - width
                     implicitWidth: pmenuItem.height * 0.6
                     implicitHeight: pmenuItem.height * 0.6
                     visible: pmenuItem.subMenu
                     enabled: pmenuItem.subMenu
                     onPaint: {
                         var ctx = getContext("2d")
                         ctx.fillStyle = pmenuItem.highlighted ? "white" : themColor
                         ctx.moveTo(height * 0.9, height * 0.5)
                         ctx.lineTo(height * 0.1, height * 0.1)
                         ctx.lineTo(height * 0.1, height * 0.9)
                         ctx.closePath()
                         ctx.fill()
                     }
                 }
        indicator: Item {
                    width: pmenuItem.height * 0.8
                    height: pmenuItem.height * 0.8
                    enabled: pmenuItem.checkable
                     Rectangle {
                         anchors.centerIn: parent
                         width: pmenuItem.height * 0.6
                         height: pmenuItem.height * 0.6
                         visible: pmenuItem.checkable
                         enabled: pmenuItem.checkable
                         border.color: pmenuItem.highlighted ? "white":themColor
                         radius: 3
                         Rectangle {
                             width: pmenuItem.height * 0.4
                             height: pmenuItem.height * 0.4
                             anchors.centerIn: parent
                             visible: pmenuItem.checked
                             enabled: pmenuItem.checkable
                             color: themColor
                             radius: 2
                         }
                     }
                 }
    }
}
