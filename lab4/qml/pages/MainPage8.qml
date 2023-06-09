import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    objectName: "mainPage8"
    allowedOrientations: Orientation.All

    PageHeader {
        objectName: "pageHeader"


    }

    ListModel{
        id: worksModel
        ListElement{work: "пойти гулять"; date: "2023.05.20"}
        ListElement{work: "сделать конспект"; date: "2023.05.20"}
        ListElement{work: "доделать проект"; date: "2023.06.20"}
    }

    SlideshowView{
        id: view
        model: worksModel

        anchors.centerIn: parent
        height: width
        itemHeight: width
        itemWidth: width

        delegate: Rectangle{
            width: view.itemWidth
            height: view.itemHeight
            Column{
                anchors.centerIn: parent
                Text{
                    text: date
                }
                Text{
                    text: work
                }
            }

        }

    }

}
