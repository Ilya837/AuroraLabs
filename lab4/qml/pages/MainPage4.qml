import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    objectName: "mainPage4"
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
                var dial = pageStack.push("DialogDate.qml")
                dial.accepted.connect(function(){
                    label1.text = dial.dat
                })
            }
        }

        Label{
            id:label1

            text: ""

        }
    }
}
