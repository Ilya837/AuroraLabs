import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    objectName: "DatePage"
    allowedOrientations: Orientation.All

    PageHeader {
        objectName: "pageHeader"


        Column{
            y: 120
            anchors.horizontalCenter: parent.horizontalCenter
            width: parent.width
            height: parent.height


            ComboBox{
                id: cb
                menu:  ContextMenu{
                    MenuItem{text: "первый"}
                    MenuItem{text: "второй"}
                    MenuItem{text: "третий"}
                }

                onCurrentIndexChanged: console.log(currentItem.text)
            }

            Row{
                width: parent.width
                height: 50
                spacing: 50
                Switch{
                    id: sw
                    height: parent.height
                    width: height
                    onCheckedChanged: {
                        if(checked) switchLabel.text = "Включён"
                        else switchLabel.text = "Выключен"
                    }
                }

                Label{
                    id: switchLabel
                    height: parent.height
                    width: 500
                }
            }


            Slider{
                id: slide
                width: parent.width
                height: 120

                minimumValue: 0
                maximumValue: 10

            }

            Label{
                height: 120
                width: parent.width
                text: slide.value
                anchors.horizontalCenter: parent.horizontalCenter
            }



        }
    }
}
