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

            DatePicker{
                height: 500
                date: new Date(Date.now())
                daysVisible: true
                weeksVisible: true

                onDateChanged: {
                    console.log(date)

                }
            }

            Item {
                height:  timepicker.height
                width: timepicker.width
                anchors.horizontalCenter: parent.horizontalCenter

                TimePicker{
                    id: timepicker
                    anchors.horizontalCenter: parent.horizontalCenter
                    height: 500
                    hour: 12
                    minute: 0

                    onTimeChanged: {
                        console.log(timeText)
                    }
                }

                Label{
                    anchors.centerIn: timepicker
                    text: timepicker.timeText
                }



            }


        }
    }
}
