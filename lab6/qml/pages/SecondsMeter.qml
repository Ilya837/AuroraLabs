import QtQuick 2.0

import Sailfish.Silica 1.0

Item {
    id: clock
    width: 200
    height: 200
    Column{
        anchors.fill: parent

        Timer {
            id: timer
                interval: 1000; repeat: true
                property int hour: 0
                property int minute: 0
                property int second: 0

                onTriggered:{
                    second ++
                    if(second > 59){
                        second = 0
                        minute ++
                    }

                    if(minute > 59){
                        minute = 0
                        hour ++
                    }

                    time.text = ("00" + hour).slice(-2) + ":" + ("00" + minute).slice(-2) + ":" + ("00" + second).slice(-2);

                }
            }

        Text{
            id:time
            text: "00:00:00"
            anchors.horizontalCenter: parent.horizontalCenter
        }

        Button{
            width: parent.width
            text: "Start"

            onClicked: {
                if(text == "Start"){
                    text = "Stop"
                    timer.running = true

                }
                else{
                    text = "Start"
                    timer.running = false
                }
            }
        }
    }
}
