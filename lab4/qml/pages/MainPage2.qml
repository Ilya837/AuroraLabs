import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    objectName: "mainPage2"
    allowedOrientations: Orientation.All

    PageHeader {
        objectName: "pageHeader"


    }

    Column{
        width: parent.width
        y: 120
        spacing: 20
        Button{

            text: "Добавить страницу"
            onClicked: pageStack.pushAttached("AddedPage.qml")
        }

        Button{

            text: "Убрать страницу"
            onClicked: pageStack.popAttached()
        }

        Label{
            text: "Глубина стека: " + pageStack.depth

        }
    }
}
