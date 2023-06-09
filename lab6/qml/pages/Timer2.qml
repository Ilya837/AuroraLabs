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
                    if(time.text == "00:00:00"){
                        running = false;
                        button.text = "Start"
                        console.log("Timer ring")

                    }
                    else{


                        second --
                        if(second < 0){
                            second = 59
                            minute --
                        }

                        if(minute < 0){
                            minute = 0
                            hour --
                        }

                        time.text = ("00" + hour).slice(-2) + ":" + ("00" + minute).slice(-2) + ":" + ("00" + second).slice(-2);
                    }
                }
            }

        Text{
            id:time
            text: "00:00:00"
            anchors.horizontalCenter: parent.horizontalCenter
        }

        Button{
            id: button
            width: parent.width
            text: "Start"

            onClicked: {
                if(text == "Stop"){
                    text = "Continue"
                    timer.running = false
                }
                else{
                    if(text == "Start"){
                        text = "Stop"
                        timer.running = true

                    }
                    else{
                        text = "Stop"
                        timer.running = true
                    }
                }




            }
        }

        Button{

            width: parent.width
            text: "Set Time"

            onClicked: {
                timer.running = false
                button.text = "Start"
                var dial = pageStack.push("TimerDialog.qml")
                dial.accepted.connect(function(){
                    time.text = "00:" + dial.time1
                    timer.hour = 0

                    timer.minute = Number(dial.time1.substring(0,2))
                    timer.second = Number(dial.time1.substring(3,6))


                    console.log(timer.hour)
                    console.log(timer.minute)
                    console.log(timer.second)
                })
            }

        }
    }
}
