import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    objectName: "AddedPage"
    allowedOrientations: Orientation.All

    PageHeader {
        objectName: "pageHeader"


    }

    Column{
        width: parent.width
        y: 120
        spacing: 20

        Button{

            text: "Обратно"
            onClicked: pageStack.navigateBack()
        }


    }
}
