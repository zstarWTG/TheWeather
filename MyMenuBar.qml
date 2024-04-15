import QtQuick 2.15
import QtQuick.Controls 2.15
MenuBar{
        id:idMenuBar

        property int totalHeight: 20
        property int elemWidth: 60
        property color themColor: "coral"

        height: totalHeight

        background: Rectangle{
            color: Qt.rgba(1,1,1,0.5)
            width: idMenuBar.width
            height: idMenuBar.height
            Rectangle{
                width: parent.width
                height: 1
                color: Qt.lighter(themColor,1.2)
                anchors.bottom: parent.bottom
            }
        }



        delegate: MenuBarItem{
            id: pidMenuBarItem
            width: elemWidth;height: totalHeight
            contentItem: Text {
                         text: pidMenuBarItem.text
                         font: pidMenuBarItem.font
                         opacity: enabled ? 1.0 : 0.3
                         color: pidMenuBarItem.highlighted ? "#ffffff" : themColor
                         horizontalAlignment: Text.AlignHCenter
                         verticalAlignment: Text.AlignVCenter
                         elide: Text.ElideRight
                    }

            background: Rectangle {
                width: elemWidth
                height: totalHeight
                radius: 4
                opacity: enabled ? 1 : 0.3
                color: pidMenuBarItem.highlighted ? themColor : "transparent"
            }
        }
}
