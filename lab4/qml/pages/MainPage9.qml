import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    objectName: "mainPage9"
    allowedOrientations: Orientation.All

    PageHeader {
        objectName: "pageHeader"


    }

    ListModel{
        id: data1
    }

    SilicaListView{
        PullDownMenu{
            MenuItem{
                text: "Первый"
                onClicked: label1.text = text
            }
            MenuItem{
                text: "Второй"
                onClicked: label1.text = text
            }
        }

        PushUpMenu{
            MenuItem{
                text: "Третий"
                onClicked: label1.text = text
            }
            MenuItem{
                text: "Четвёртый"
                onClicked: label1.text = text
            }

        }

        anchors.fill: parent


    }

    Label{
        id:label1
        text: "Hi"
        anchors.verticalCenter: parent.verticalCenter
        anchors.horizontalCenter: parent.horizontalCenter
    }



}
