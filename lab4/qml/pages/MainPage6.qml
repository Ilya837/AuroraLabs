import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    objectName: "mainPage6"
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

    SilicaListView{
        anchors.fill: parent
        model: worksModel
        header: PageHeader{title: "Список дел"}
        section{
            property: 'date'
            delegate: SectionHeader{text: section}
        }
        delegate: Text{text: work}
    }

}
