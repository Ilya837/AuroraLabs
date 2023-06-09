import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    objectName: "mainPage5"
    allowedOrientations: Orientation.All

    PageHeader {
        objectName: "pageHeader"


    }

    Column{
        width: parent.width
        y: 120
        spacing: 50


        Button{

            text: "Открыть диалог"
            onClicked: {
                var dial = pageStack.push("DialogTime.qml")
                dial.accepted.connect(function(){
                    label1.text = dial.time1
                })
            }
        }

        Label{
            id:label1

            text: ""

        }
    }
}
