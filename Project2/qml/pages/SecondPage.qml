import QtQuick 2.0
import Sailfish.Silica 1.0

Page{
    objectName: "secondPage"
    allowedOrientations: Orientation.All


    Rectangle{
        id: rec
        color: "red"
        width: 150
        height: 150
        x: 500
        y: 500



        NumberAnimation on y {
            id: anim
            loops: Animation.Infinite
            from: 0
            to:  500
            duration: 1000
        }


        NumberAnimation on width {

            loops: Animation.Infinite
            from: 0
            to:  150
            duration: 1000
        }

        NumberAnimation on height {

            loops: Animation.Infinite
            from: 0
            to:  150
            duration: 1000
        }

    }


}
