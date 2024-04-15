import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.15
import QtQuick.Controls.Styles 1.4
import QtQuick.Layouts 1.15
import QtQml.Models 2.15
import QtQml.StateMachine 1.15 as DSM
import "./"

ApplicationWindow {
    id:mainWnd
    width: 640
    height: 480
    visible: true
    title: qsTr("The Weather")
    font.pointSize: 8

    property string appDir: "file:///"+applicationDir
    property color wndThemColor: Qt.lighter("blue",1.5)

    // background: Image {
    //     id: imgBG
    //     cache: false
    //     source: appDir + "/img/mainBG.png"
    //     sourceSize: Qt.size(mainWnd.width,mainWnd.height)
    // }




    menuBar: MyMenuBar{
        id:myMenuBar
        totalHeight: 20
        elemWidth: 60
        themColor: wndThemColor

        MyMenu{
            eleHeight: parent.totalHeight
            width: 100
            themColor: myMenuBar.themColor
            title: "File"

        }
    }

    footer: RowLayout{
    }
}
