import QtQuick 2.15
import QtQuick.Layouts 1.15
import QtQuick.Controls 2.15

Item {
    id: cityItem
    ScrollView{
        width: parent.width
        height: parent.height

        ColumnLayout{
            Rectangle{
                width: cityItem.width
                height: 100
                color: "red"
            }
            Rectangle{
                width: cityItem.width
                height: 100
                color: "blue"
            }
            Rectangle{
                width: cityItem.width
                height: 100
                color: "red"
            }
        }
    }
}

