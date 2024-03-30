import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.15
import QtQuick.Controls.Styles 1.4
import QtQuick.Layouts 1.15
import QtQml.Models 2.15
ApplicationWindow {
    id:mainWnd
    width: 640
    height: 480
    visible: true
    title: qsTr("The Weather")

    background: Image {
        id: imgBG
        cache: false
        source: "qrc:/img/mainBG.png"
        sourceSize: Qt.size(mainWnd.width,mainWnd.height)
    }

    menuBar: MenuBar{

        Menu {
            id: menuFile
            width: 100
            title: "File"

            Action { text: "Open" }
            Action { text: "Close" }

            delegate: ItemDelegate {
                width: menuFile.width
                height: 40

            }
        }

        // delegate: Rectangle{
        //     width: 60;height: 30
        //     Text {
        //         id: name
        //         text: model.title
        //     }
        // }

    }

    Button{
        id:btn
        anchors.right: parent.right
        anchors.rightMargin: 200
        text: "style2"
    }


    footer: RowLayout{
        Label{
            id:updateState
            state: "latest"
            Layout.bottomMargin: 10
            states:[
                State{
                    name: "latest"
                    PropertyChanges {
                        target: updateState
                        text:qsTr("latest")
                    }
                },
                State{
                    name: "updateable"
                    PropertyChanges {
                        target: updateState
                        text:qsTr("updateable")
                    }
                }]
        }
    }
}
