import QtQuick 2.0
import  QtQuick.Layouts 1.1
import Sailfish.Silica 1.0

Page {
    objectName: "mainPage"
    allowedOrientations: Orientation.All



    PageHeader {
        objectName: "pageHeader"
        title: qsTr("Laba2")

    }

   Column{
       x:0
       y:0
       width: parent.width
       height: parent.height

        Column{
        spacing: 5
        width: page.width
        height: (page.width-2*spacing)/3 * 2 + spacing

            Row{
            spacing: parent.spacing
            width: page.width
            height: (width - 2 * spacing) /3

            Rectangle{
                width: parent.height
                height: parent.height
                color: "red"

            }

            Rectangle{
                width: parent.height
                height: parent.height
                color: "green"

            }

            Rectangle{
                width: parent.height
                height: parent.height
                color: "blue"

            }

        }

        Row{
            width: page.width
            height: (width - spacing)/2
            spacing: (width - 2 * parent.spacing)/3 + 2 * parent.spacing
            Rectangle{
                width: parent.height
                height: parent.height
                color: "pink"

            }

            Rectangle{
                width: parent.height
                height: parent.height
                color: "black"

            }

        }


    }


    Grid{
            spacing: 5
            width: page.width
            height: sqarelength * 2 + spacing
            property double sqarelength: (width - spacing*2 )/ 3
            columns: 3
            rows: 2
            Rectangle{
                width: parent.sqarelength
                height: parent.sqarelength
                color: "red"

            }

            Rectangle{
                width: parent.sqarelength
                height: parent.sqarelength
                color: "green"

            }
            Rectangle{
                width: parent.sqarelength
                height: parent.sqarelength
                color: "blue"

            }
            Rectangle{
                width: parent.sqarelength
                height: parent.sqarelength
                color: "pink"

            }

            Rectangle{
                width: parent.sqarelength
                height: parent.sqarelength
                color: "transparent"

            }
            Rectangle{
                width: parent.sqarelength
                height: parent.sqarelength
                color: "black"

            }
    }

    Row{
        width: page.width
        height: width * 1.5
        spacing: 100

        Rectangle{
            width: 150
            height: 150
            color: "black"

        }

        Rectangle{
            id: trans
            width: 150
            height: 150
            color: "black"
            transform:  [Scale{origin.x : trans.width/2; origin.y : trans.height/2;  xScale: 0.5 },
                            Rotation{angle: 45;origin.x : trans.width/2; origin.y : trans.height/2; }]
        }


    }

   }
}
