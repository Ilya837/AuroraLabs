import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    objectName: "mainPage8"
    allowedOrientations: Orientation.All

    PageHeader {
        objectName: "pageHeader"


    }

    ListModel{id: data1}


    SilicaListView{
        id: list1
        anchors.fill: parent
        model: data1
        delegate: ListItem{
            id:element

            Label{
                text: "List Item " + index
            }

            menu: ContextMenu{
                MenuItem{
                    text: "element " + index + "1"
                    onClicked: console.log(text + " " + index)
                }
                MenuItem{
                    text: "element" + index + "2"
                    onClicked: console.log(text + " " + index)
                }
                MenuItem{
                    text: "delete"
                    onClicked: data1.remove(index)
                }
            }
        }

        Component.onCompleted: {for(var i =0; i < 10;i++) data1.append({})}
    }

}
