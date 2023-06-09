import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    objectName: "mainPage7"
    allowedOrientations: Orientation.All

    PageHeader {
        objectName: "pageHeader"


    }    

    SilicaWebView{
        anchors{top: parent.top; bottom: parent.bottom; left: parent.left; right: parent.right}
        url: "https://www.youtube.com"

    }

}
